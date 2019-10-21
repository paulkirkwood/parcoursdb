package ParcoursDB::StageRace::TirrenoAdriatico;

use Moose;
extends 'ParcoursDB::StageRace';

use ParcoursDB::Country::Italy;

has '+name' => ( default => sub { "Tirreno Adriatico"; } );

has '+country' => ( default => sub { ParcoursDB::Country::Italy->new; } );

1;
