package ParcoursDB::RestDay;

use Moose;
extends 'ParcoursDB::Stage';

has 'location' => (
    is  => 'ro',
    isa => 'ParcoursDB::Location',
);

1;
