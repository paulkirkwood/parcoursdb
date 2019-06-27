package ParcoursDB::Location;

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

1;
