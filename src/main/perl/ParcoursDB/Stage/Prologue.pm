package ParcoursDB::Stage::Prologue;

use Moose;
extends 'ParcoursDB::Stage::Racing';

has '+id' => ( default => sub { 'P'; } );

has '+description' => ( default => sub { 'Individual time trial'; } );

1;
