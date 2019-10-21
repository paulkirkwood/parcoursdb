package ParcoursDB::Classic;

use Moose;
use ParcoursDB::Location;

has 'name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'date' => (
    is       => 'ro',
    isa      => 'DateTime',
    required => 1,
);

has 'distance' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'start'=> (
    is      => 'ro',
    isa     => 'ParcoursDB::Location',
    required => 1,
);

has 'finish'=> (
    is      => 'ro',
    isa     => 'ParcoursDB::Location',
    required => 1,
);

__PACKAGE__->meta->make_immutable;
1;
