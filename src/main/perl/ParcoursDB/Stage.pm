package ParcoursDB::Stage;

use Moose;

has 'date' => (
    is       => 'ro',
    isa      => 'DateTime',
    required => 1,
);

has 'ordinal' => (
    is  => 'ro',
    isa => 'Maybe[Num]',
);

package ParcoursDB::RacingStage;

use Moose;
extends 'ParcoursDB::Stage';

has 'id' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'start' => (
    is       => 'ro',
    isa      => 'ParcoursDB::Location',
    required => 1,
);

has 'finish' => (
    is       => 'ro',
    isa      => 'ParcoursDB::Location',
    required => 1,
);

has 'distance' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'cols' => (
    traits => ['Hash'],
    is     => 'ro',
    isa    => 'HashRef[ParcoursDB::Col]',
    default => sub { {} },
    handles => {
        all_cols    => 'values',
        get_col     => 'get',
        has_col     => 'exists',
        has_no_cols => 'is_empty',
        col_summits => 'keys',
    },
);

sub is_summit_finish {
    my ( $self ) = @_;
    return if $self->has_no_cols;
    my @sorted = sort { $a <=> $b } $self->col_summits;
    return $sorted[-1] == $self->distance;
}

package ParcoursDB::RoadStage;

use Moose;
extends 'ParcoursDB::RacingStage';

sub description {
    return "Road stage";
}

package ParcoursDB::IndividualTimeTrial;

use Moose;
extends 'ParcoursDB::RacingStage';

sub description {
    return "Individual time trial";
}

package ParcoursDB::Prologue;

use Moose;
extends 'ParcoursDB::RacingStage';

has +id => (
    is       => 'ro',
    isa      => 'Str',
    default => sub { 'P' },
);

sub description {
    return "Individual time trial";
}

package ParcoursDB::TeamTimeTrial;

use Moose;
extends 'ParcoursDB::RacingStage';

sub description {
    return "Team time trial";
}

package ParcoursDB::RestDay;

use Moose;
extends 'ParcoursDB::Stage';

has 'location' => (
    is        => 'ro',
    isa       => 'ParcoursDB::Location',
    predicate => 'has_location',
);

sub description {
    return "Rest day";
}

1;
