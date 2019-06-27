package ParcoursDB::StageRace;

use Moose;

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

has '_stages' => (
    traits => ['Array'],
    is     => 'ro',
    isa    => 'ArrayRef[ParcoursDB::Stage]',
    default => sub { [] },
    handles => {
        all_stages    => 'elements',
        add_stage     => 'push',
        filter_stages => 'grep',
        find_stage    => 'first',
        get_stage     => 'get',
        count_stages  => 'count',
        sort_stages   => 'sort',
    },
);

sub prologue {
    my ( $self ) = @_;
    return $self->find_stage( sub { $_->ordinal == 1 && $_->id eq 'P' } );
}

sub has_prologue {
    my ( $self ) = @_;
    my $prologue = $self->prologue;
    return defined $prologue;
}

sub racing_stages {
    my ( $self ) = @_;
    return $self->filter_stages( sub { !$_->isa( "ParcoursDB::RestDay" ) } );
}

sub road_stages {
    my ( $self ) = @_;
    return $self->_clone( 'ParcoursDB::RoadStage' );
}

sub team_time_trials {
    my ( $self ) = @_;
    return $self->_clone( 'ParcoursDB::TeamTimeTrial' );
}

sub individual_time_trials {
    my ( $self ) = @_;
    return $self->_clone( 'ParcoursDB::IndividualTimeTrial' );
}

sub rest_days {
    my ( $self ) = @_;
    return $self->_clone( 'ParcoursDB::RestDay' );
}

sub distance {
    my ( $self ) = @_;

    my $distance = 0;
    foreach my $stage ( $self->all_stages ) {
        next if ( ref( $stage ) eq 'ParcoursDB::RestDay' );
        $distance += $stage->distance;
    }

    return $distance;
}

sub route {
    my ( $self ) = @_;
    my @stages = $self->sort_stages( sub { $_[0]->date cmp $_[1]->date } );

    my @route;
    foreach my $stage ( @stages ) {

        my $is_rest_day = ref( $stage ) eq 'ParcoursDB::RestDay';

        my @components;
        push @components, $is_rest_day ? q{} : $stage->id;
        push @components, sprintf( "%d %s", $stage->date->day, $stage->date->strftime( "%B" ) );

        if ( $is_rest_day ) {
            push @components, $stage->description;
            push @components, $self->_format_location( $stage->location ) if $stage->has_location;
        }
        else {
            if ( $stage->start->name eq $stage->finish->name && $stage->start->country->name eq $stage->finish->country->name ) {
                push @components, $self->_format_location( $stage->start );
            }
            else {
                my $s = $self->_format_location( $stage->start );
                my $f = $self->_format_location( $stage->finish );
                push @components, sprintf( "%s to %s", $s, $f );
            }

            push @components, sprintf( "%.1f %s", $stage->distance, 'km' );
            push @components, $stage->description;
        }

        push @route, join( ",", @components );
    }

    return @route;
}

sub first_stage {
    my ( $self ) = @_;
    return $self->find_stage( sub { $_->ordinal == 1 } );
}

sub last_stage {
    my ( $self ) = @_;
    my @ordinals = sort { $a <=> $b } map { $_->ordinal } $self->racing_stages;
    return $self->find_stage( sub { $_->ordinal == $ordinals[-1] } );
}

sub depart {
    my ( $self ) = @_;
    return $self->first_stage->start;
}

sub arrive {
    my ( $self ) = @_;
    return $self->last_stage->finish;
}

sub dates {
    my ( $self ) = @_;
    my $dt1 = $self->first_stage->date;
    my $dt2 = $self->last_stage->date;

    return sprintf( "%d-%d %s", $dt1->day, $dt2->day, $dt1->month_name ) if $dt1->month eq $dt2->month;
    return sprintf( "%d %s-%d %s", $dt1->day, $dt1->month_name, $dt2->day, $dt2->month_name );
}

sub stage_summary {
    my ( $self ) = @_;

    my @racing_stages = $self->racing_stages;
    my @road = grep { $_->isa( 'ParcoursDB::RoadStage' ) } @racing_stages;
    my @ttt  = grep { $_->isa( 'ParcoursDB::TeamTimeTrial' ) } @racing_stages;
    my @itt  = grep { $_->isa( 'ParcoursDB::IndividualTimeTrial' ) } @racing_stages;

    my @split_stage_days = grep { $_->id =~ /\d+a/ } @racing_stages;
    my $total = @road + @ttt + @itt - @split_stage_days;

    my @summary;
    push @summary, sprintf( "%d stages", $total );
    push @summary, "+ Prologue" if $self->has_prologue;
    if ( @split_stage_days > 0 ) {
        push @summary, sprintf( "including %d split %s",
            scalar( @split_stage_days ), @split_stage_days == 1 ? "stage" : "stages" );
    }

    return join( q{ }, @summary );
}

sub longest_stage {
    my ( $self ) = @_;
    my @racing_stages = $self->racing_stages;
    my @sorted = sort { $a->distance <=> $b->distance } @racing_stages;
    return $sorted[-1];
}

sub summit_finishes {
    my ( $self ) = @_;
    my @racing_stages = $self->racing_stages;
    my @summit_finishes = grep { $_->is_summit_finish } @racing_stages;
    return @summit_finishes;
}

sub high_point {
    my ( $self ) = @_;
    my @cols;
    foreach my $stage( $self->racing_stages ) {
        push @cols, $stage->all_cols;
    }
    my @sorted = sort { $a->height <=> $b->height } @cols;
    return $sorted[-1];
}

sub _format_location {
    my ( $self, $location ) = @_;
    return sprintf( "%s", $location->name ) if $location->country->name eq $self->country->name;
    return sprintf( "%s (%s)", $location->name, $location->country->name );
}

sub _clone {
    my ( $self, $stage_class_name ) = @_;
    my @stages = $self->filter_stages( sub { ref( $_ ) eq $stage_class_name } );
    return __PACKAGE__->new( name => $self->name, country => $self->country, _stages => \@stages );
}

no Moose;
1;
