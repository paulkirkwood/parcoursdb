package ParcoursDB::StageRace::Builder;

use Moose;
use ParcoursDB::Col;
use ParcoursDB::Col::Collection;
use ParcoursDB::Location;
use ParcoursDB::Stage::Prologue;
use ParcoursDB::Stage::Road;
use ParcoursDB::Stage::TeamTimeTrial;
use ParcoursDB::Stage::IndividualTimeTrial;
use ParcoursDB::Stage::RestDay;

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

has 'edition' => (
    is       => 'ro',
    isa      => 'ParcoursDB::StageRace',
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

has 'edition' => (
    is       => 'ro',
    isa      => 'ParcoursDB::StageRace',
    required => 1,
);

has 'stage_start' => (
    is => 'rw',
);

has 'cols' => (
    is     => 'ro',
    isa    => 'ParcoursDB::Col::Collection',
    default => sub { ParcoursDB::Col::Collection->new },
);

sub build {
    my ( $self ) = @_;
    die "A stage race needs stages" if $self->edition->count_stages == 0;

    #
    # A stage race cannot finish with a rest day
    #
    if ( ref( $self->edition->last_stage ) eq 'ParcoursDB::RestDay' ) {
        die "A stage race cannot finish with a rest day";
    }

    return $self->edition;
}

sub prologue {
    my ( $self, $start, $finish, $distance ) = @_;

    if ( $self->edition->count_stages > 1 ) {
        die "The Prologue must be the first stage";
    }

    if ( ref( $self->edition->first_stage ) eq 'ParcoursDB::Stage::Prologue' ) {
        die "There can only be one Prologue";
    }

    my $prologue = ParcoursDB::Stage::Prologue->new(
        date     => $self->date->clone,
        distance => $distance,
        finish   => $finish,
        start    => $start,
    );

    $self->edition->add_stage( $prologue );

    unless ( $self->split_stage ) {
        $self->date( $self->date->add( days => 1 ) );
    }
}

sub out_and_back_prologue {
    my ( $self, $start, $distance ) = @_;
    $self->prologue( $start, $start, $distance );
}

sub road_stage {
    my ( $self, $start, $finish, $distance ) = @_;

    my $road_stage = ParcoursDB::Stage::Road->new(
        date     => $self->date->clone,
        distance => $distance,
        finish   => $finish,
        id       => $self->_stage_id,
        start    => $start,
    );

    #
    # Copy the cols into the stage
    #
    foreach my $km ( $self->cols->summits ) {
        $road_stage->cols->set_col( $km, $self->cols->get_col( $km ) );
    }
    $self->cols->empty_cols;

    $self->edition->add_stage( $road_stage );

    if ( $self->split_stage ) {
        $self->inc_suffix;
    }
    else {
        $self->inc_stage_number;
        $self->date( $self->date->add( days => 1 ) );
    }
}
 
sub criterium {
    my ( $self, $start, $distance ) = @_;
    $self->road_stage( $start, $start, $distance );
}

sub team_time_trial {
    my ( $self, $start, $finish, $distance ) = @_;
    
    my $ttt = ParcoursDB::Stage::TeamTimeTrial->new(
        date     => $self->date->clone,
        distance => $distance,
        finish   => $finish,
        id       => $self->_stage_id,
        start    => $start,
    );
    
    $self->edition->add_stage( $ttt );
    $self->inc_suffix if $self->split_stage;
    unless ( $self->split_stage ) {
        $self->inc_stage_number;
        $self->date( $self->date->add( days => 1 ) );
    }
}

sub out_and_back_team_time_trial {
    my ( $self, $start, $distance ) = @_;
    $self->team_time_trial( $start, $start, $distance );
}

sub individual_time_trial {
    my ( $self, $start, $finish, $distance ) = @_;
    
    my $itt = ParcoursDB::Stage::IndividualTimeTrial->new(
        date     => $self->date->clone,
        distance => $distance,
        finish   => $finish,
        id       => $self->_stage_id,
        start    => $start,
    );
    
    $self->edition->add_stage( $itt );
    $self->inc_suffix if $self->split_stage;

    unless ( $self->split_stage ) {
        $self->inc_stage_number;
        $self->date( $self->date->add( days => 1 ) );
    }
}

sub out_and_back_individual_time_trial {
    my ( $self, $start, $distance ) = @_;
    $self->individual_time_trial( $start, $start, $distance );
}

sub rest_day {
    my ( $self, $location ) = @_;
    my $rest_day = ParcoursDB::Stage::RestDay->new(
        date     => $self->date->clone,
        location => $location,
    );
    $self->_rest_day( $rest_day );
}

sub transfer_day {
    my ( $self ) = @_;
    $self->_rest_day( ParcoursDB::Stage::RestDay->new( date => $self->date->clone ) );
}

sub _rest_day {
    my ( $self, $rest_day ) = @_;

    die "A stage race cannot start with a rest day" if $self->edition->count_stages == 0;
    die "Cannot add a rest day as part of a split stage" if $self->split_stage;

    if ( ref( $self->edition->last_stage ) eq 'ParcoursDB::RestDay' ) {
        die "A rest day cannot follow a rest day";
    }
    
    die "Only rest days can be added as rest days" unless $rest_day->isa( 'ParcoursDB::Stage::RestDay' );

    $self->edition->add_stage( $rest_day );
    $self->date( $self->date->add( days => 1 ) );
}

sub mountain_stage {
    my ( $self, $start ) = @_;
    $self->stage_start( $start );
}

sub summit_finish {
    my ( $self, $col, $category, $km ) = @_;
    $self->cols->set_col( $km, { category => $category, col => $col } );
    $self->road_stage( $self->stage_start, $col, $km );
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

#
# Private methods
#
sub _make_col {
    my $self = shift;
    my %args = ( country => $self->edition->country, @_);

    $args{name} || die "No Col 'name'";
    $args{height} || die "No Col 'height'";

    return ParcoursDB::Col->new( %args );
}

sub _add_col {
    my ( $self, $col, $category, $km ) = @_;

    if ( $self->cols->has_col( $km ) ) {
        die "There is already a Col at " . $km . "km : " . $self->cols->get_col( $km )->{col}->name;
    }

    $self->cols->set_col( $km, { category => $category, col => $col } );
}

sub _stage_id {
    my ( $self ) = @_;
    my @id;
    push @id, $self->stage_number;
    push @id, chr( $self->suffix ) if $self->split_stage;
    return join( q{}, @id );
}

no Moose;
1;
