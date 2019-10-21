package ParcoursDB::Stage;

use Moose;

has 'date' => (
    is       => 'ro',
    isa      => 'DateTime',
    required => 1,
);

has 'description' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
