package ParcoursDB::Country::WestGermany::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    cologne
    felsberg
    saarlouis
    freiburg
    frankfurt
    wiesbaden
    west_berlin
    karlsruhe
    stuttgart
    pforzheim
);

use ParcoursDB::Country::WestGermany;
use ParcoursDB::Location;

my $west_germany = ParcoursDB::Country::WestGermany->new;

sub cologne {
    return _west_german_location( "Cologne" );
}

sub felsberg {
    return _west_german_location( "Felsberg" );
}

sub saarlouis {
    return _west_german_location( "Saarlouis" );
}

sub freiburg {
    return _west_german_location( "Freiburg" );
}

sub frankfurt {
    return _west_german_location( "Frankfurt" );
}

sub wiesbaden {
    return _west_german_location( "Wiesbaden" );
}

sub west_berlin {
    return _west_german_location( "West Berlin" );
}

sub karlsruhe {
    return _west_german_location( "Karlsruhe" );
}

sub stuttgart {
    return _west_german_location( "Stuttgart" );
}

sub pforzheim {
    return _west_german_location( "Pforzheim" );
}

sub _west_german_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $west_germany );
}

1;
