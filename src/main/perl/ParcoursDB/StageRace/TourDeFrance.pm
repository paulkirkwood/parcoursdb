package ParcoursDB::StageRace::TourDeFrance;

use Moose;
extends 'ParcoursDB::StageRace';

use ParcoursDB::Country::France;

has '+name' => ( default => sub { "Le Tour de France"; } );

has '+country' => ( default => sub { ParcoursDB::Country::France->new; } );

1;
