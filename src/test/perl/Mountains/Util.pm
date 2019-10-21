package Mountains::Util;

use strict;
use warnings;
use ParcoursDB::Col;
use ParcoursDB::Country::Andorra;
use ParcoursDB::Country::France;
use ParcoursDB::Country::Italy;
use ParcoursDB::Country::Spain;
use ParcoursDB::Country::Switzerland;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    andorran_col
    french_col
    italian_col
    spanish_col
    swiss_col
);

sub andorran_col {
    my %args = ( country => ParcoursDB::Country::Andorra->new, @_ ); 
    return ParcoursDB::Col->new( %args );
}

sub french_col {
    my %args = ( country => ParcoursDB::Country::France->new, @_ ); 
    return ParcoursDB::Col->new( %args );
}

sub italian_col {
    my %args = ( country => ParcoursDB::Country::Italy->new, @_ ); 
    return ParcoursDB::Col->new( %args );
}

sub spanish_col {
    my %args = ( country => ParcoursDB::Country::Spain->new, @_ ); 
    return ParcoursDB::Col->new( %args );
}

sub swiss_col {
    my %args = ( country => ParcoursDB::Country::Switzerland->new, @_ ); 
    return ParcoursDB::Col->new( %args );
}

1;
