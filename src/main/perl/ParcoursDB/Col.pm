package ParcoursDB::Col;

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

has 'height' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'average_gradient' => (
    is       => 'ro',
    isa      => 'Maybe[Num]',
);

has 'maximum_gradient' => (
    is       => 'ro',
    isa      => 'Maybe[Num]',
);

no Moose;
1;
