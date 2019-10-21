package ParcoursDB::Country::Switzerland::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    bern
);

use ParcoursDB::Country::Switzerland;
use ParcoursDB::Location;

my $switzerland = ParcoursDB::Country::Switzerland->new;

# B
sub bern {
    return _swiss_location( "Bern" );
}

sub _swiss_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $switzerland );
}

1;
