package ParcoursDB::Stage::RestDay;

use Moose;
extends 'ParcoursDB::Stage';

has '+description' => ( default => sub { 'Rest day'; } );

has 'location' => (
    is        => 'ro',
    predicate => 'has_location',
);

1;
