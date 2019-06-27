package ParcoursDB::StageRace::Builder;

use Moose;
use ParcoursDB::Col;
use ParcoursDB::Location;
use ParcoursDB::Stage;
use ParcoursDB::StageRace;

has 'ordinal' => (
    traits  => ['Counter'],
    is      => 'ro',
    isa     => 'Num',
    default => 1,
    handles => {
        inc_ordinal => 'inc',
    },
);

has 'stage_number' => (
    traits  => ['Counter'],
    is      => 'ro',
    isa     => 'Num',
    default => 1,
    handles => {
        inc_stage_number => 'inc',
    },
);

has 'suffix' => (
    traits  => ['Counter'],
    is      => 'ro',
    isa     => 'Num',
    default => 97, # 'a'
    handles => {
        inc_suffix   => 'inc',
        reset_suffix => 'reset',
    },
);

has 'name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'country' => (
    is       => 'ro',
    isa      => 'ParcoursDB::Country',
    required => 1,
);

has 'date' => (
    is       => 'rw',
    isa      => 'DateTime',
    required => 1,
);

has 'split_stage' => (
    is      => 'rw',
    isa     => 'Bool',
    default => sub { 0 },
);

has 'stages' => (
    traits => ['Array'],
    is     => 'ro',
    isa    => 'ArrayRef[ParcoursDB::Stage]',
    default => sub { [] },
    handles => {
        all_stages    => 'elements',
        add_stage     => 'push',
        map_stages    => 'map',
        filter_stages => 'grep',
        find_stage    => 'first',
        get_stage     => 'get',
        count_stages  => 'count',
        sorted_stages => 'sort',
    },
);

has 'cols' => (
    traits => ['Hash'],
    is     => 'ro',
    isa    => 'HashRef[ParcoursDB::Col]',
    default => sub { {} },
    handles => {
        all_cols    => 'kv',
        get_col     => 'get',
        set_col     => 'set',
        has_col     => 'exists',
        has_no_cols => 'is_empty',
        empty_cols  => 'clear',
        col_summits => 'keys',
    },
);

sub build {
    my ( $self ) = @_;
    die "A stage race needs stages" if $self->count_stages == 0;

    #
    # A stage race cannot finish with a rest day
    #
    my $last_stage = $self->get_stage( -1 );
    if ( ref( $last_stage ) eq 'ParcoursDB::RestDay' ) {
        die "A stage race cannot finish with a rest day";
    }

    my $stage_race = ParcoursDB::StageRace->new( name => $self->name, country => $self->country );
    $self->map_stages( sub { $stage_race->add_stage( $_ ) } );
    return $stage_race;
}

sub prologue {
    my $self = shift;
    return $self->_add_stage( type => 'Prologue', @_ );
}

sub road_stage {
    my $self = shift;
    return $self->_add_stage( type => 'RoadStage', @_ );
}
 
sub team_time_trial {
    my $self = shift;
    return $self->_add_stage( type => 'TeamTimeTrial', @_ );
}

sub individual_time_trial {
    my $self = shift;
    return $self->_add_stage( type => 'IndividualTimeTrial', @_ );
}

sub rest_day {
    my $self = shift;
    die "A stage race cannot start with a rest day" if $self->count_stages == 0;
    die "Cannot add a rest day as part of a split stage" if $self->split_stage;
    my $last_stage = $self->get_stage( -1 );
    if ( ref( $last_stage ) eq 'ParcoursDB::RestDay' ) {
        die "A rest day cannot follow a rest day";
    }
    return $self->_add_stage( type => 'RestDay', @_ );
}

sub enable_split_stages {
    my ( $self ) = @_;
    $self->split_stage( 1 );
    $self->reset_suffix;
}

sub disable_split_stages {
    my ( $self ) = @_;
    $self->split_stage( 0 );
    $self->date( $self->date->add( days => 1 ) );
    $self->inc_stage_number;
}

sub hc {
    my $self = shift;
    return $self->_add_col( category => "HC", @_ );
}

sub c1 {
    my $self = shift;
    return $self->_add_col( category => "C1", @_ );
}

sub c2 {
    my $self = shift;
    return $self->_add_col( category => "C2", @_ );
}

sub c3 {
    my $self = shift;
    return $self->_add_col( category => "C3", @_ );
}

sub c4 {
    my $self = shift;
    return $self->_add_col( category => "C4", @_ );
}

sub uncategorised_col {
    my $self = shift;
    return $self->_add_col( category => "UC", @_ );
}

sub _location {
    my ( $self, $loc ) = @_;
    return ref( $loc ) eq 'ParcoursDB::Location' ? $loc : ParcoursDB::Location->new( name => $loc, country => $self->country );
}

sub _add_stage {
    my $self = shift;
    my %args = (@_);

    $args{type} || die "No 'type'";

    if ( $args{type} ne 'RestDay' ) {
        $args{start} || die "No 'start'";
        $args{distance} || die "No 'distance'";
    }

    if ( $args{type} eq 'RestDay' ) {
        my %attrs = (
            date    => $self->date->clone,
            ordinal => $self->ordinal,
        );
        $attrs{location} = $self->_location( $args{location} ) if $args{location};

        my $rest_day = ParcoursDB::RestDay->new( %attrs );
        $self->add_stage( $rest_day );
        $self->date( $self->date->add( days => 1 ) );
    }
    else {
        if ( $args{type} eq 'Prologue' && $self->find_stage( sub { $_->id eq 'P' } ) ) {
            die "There can only be one Prologue in a stage race";
        }

        my $class = "ParcoursDB::" . $args{type};

        my @id;
        push @id, $self->stage_number;
        push @id, chr( $self->suffix ) if $self->split_stage;

        my $start = $self->_location( $args{start} );
        my $finish = $args{finish} ? $self->_location( $args{finish} ) : $start;

        my $stage = $class->new(
            start    => $start,
            finish   => $finish,
            distance => $args{distance},
            date     => $self->date->clone,
            id       => $args{type} eq 'Prologue' ? 'P' : join( q{}, @id ),
            cols     => $self->cols,
            ordinal  => $self->ordinal,
        );

        $self->add_stage( $stage );
        $self->empty_cols;

        if ( $self->split_stage ) {
            $self->inc_suffix;
        }
        else {
            $self->date( $self->date->add( days => 1 ) ) if !$args{morning_stage};
            $self->inc_stage_number if $args{type} ne 'Prologue';
        }
    }

    $self->inc_ordinal;
}

sub _add_col {
    my $self = shift;
    my %args = (@_);

    $args{category} || die "No Col 'category'";
    $args{name} || die "No Col 'name'";
    $args{height} || die "No Col 'height'";
    $args{summit_km} || die "No Col 'summit_km'";

    if ( $args{category} eq 'HC' && $self->country->name ne "France" ) {
        die "Only French races have 'HC' climbs";
    }

    if ( $args{category} eq 'UC' && $self->name ne "Tirreno Adriatico" ) {
        die "Only 'Tirreno-Adriatico' has uncategorised climbs";
    }

    if ( $self->has_col( $args{summit_km} ) ) {
        my $col = $self->get_col( $args{summit_km} );
        die "There is already a Col at " . $args{summit_km} . "km : " . $col->name;
    }

    my $col = ParcoursDB::Col->new( %args );
    $self->set_col( $args{summit_km}, $col );
}

no Moose;
1;
