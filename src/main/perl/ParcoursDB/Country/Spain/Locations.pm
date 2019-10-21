package ParcoursDB::Country::Spain::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    vielha_val_d_aran
);

use ParcoursDB::Country::Spain;
use ParcoursDB::Location;

my $spain = ParcoursDB::Country::Spain->new;

sub vielha_val_d_aran {
    return _spanish_location( "Vielha Val d'Aran" );
}

sub _spanish_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $spain );
}

1;
