package ParcoursDB::Country;

use Moose;

sub name {
    my ( $self ) = @_;
    return ( split( '::', ref( $self ) ) )[-1];
}

1;
