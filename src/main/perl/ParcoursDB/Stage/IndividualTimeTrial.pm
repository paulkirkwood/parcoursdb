package ParcoursDB::Stage::IndividualTimeTrial;

use Moose;
extends 'ParcoursDB::Stage::Racing';

has '+description' => ( default => sub { 'Individual time trial'; } );

1;
