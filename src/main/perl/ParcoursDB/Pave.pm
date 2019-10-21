package ParcoursDB::Pave;

use Moose;

has 'name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'length' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'severity' => (
    is       => 'ro',
    isa      => 'Int',
    required => 1,
);

1;
