package ParcoursDB::Stage::TeamTimeTrial;

use Moose;
extends 'ParcoursDB::Stage::Racing';

has '+description' => ( default => sub { 'Team time trial'; } );

1;
