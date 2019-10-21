package ParcoursDB::StageRace::TourOfItaly;

use Moose;
extends 'ParcoursDB::StageRace';

use ParcoursDB::Country::Italy;

has '+name' => ( default => sub { "Giro d'Italia"; } );

has '+country' => ( default => sub { ParcoursDB::Country::Italy->new; } );

1;
