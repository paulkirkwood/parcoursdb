package ParcoursDB::Stage::Road;

use Moose;
extends 'ParcoursDB::Stage::Racing';

has '+description' => ( default => sub { 'Road stage'; } );

1;
