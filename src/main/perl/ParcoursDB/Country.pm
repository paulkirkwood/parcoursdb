package ParcoursDB::Country;

use Moose;

has 'name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
