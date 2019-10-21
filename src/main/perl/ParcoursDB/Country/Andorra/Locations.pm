package ParcoursDB::Country::Andorra::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    andorra
    andorra_la_vella
    envalira
    estacio_de_pal
    estacio_d_esqui_d_ordino_arcalis
    escaldes_engordany
    naturlandia
    pal
);

use ParcoursDB::Country::Andorra;
use ParcoursDB::Location;

my $andorra = ParcoursDB::Country::Andorra->new;

sub andorra {
    return _andorran_location( "Andorra" );
}

sub andorra_la_vella {
    return _andorran_location( "Andorra la Vella" );
}

sub envalira {
    return _andorran_location( "Envalira" );
}

sub estacio_de_pal {
    return _andorran_location( "Estacio de Pal" );
}

sub estacio_d_esqui_d_ordino_arcalis {
    return _andorran_location( "Estacio d'Esqui d'Ordino-Alcalis" );
}

sub escaldes_engordany {
    return _andorran_location( "Escaldes-Engordany" );
}

sub naturlandia {
    return _andorran_location( "Naturlandia" );
}

sub pal {
    return _andorran_location( "Pal" );
}

sub _andorran_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $andorra );
}

1;
