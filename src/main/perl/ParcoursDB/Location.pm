package ParcoursDB::Location;

use Moose;

has 'name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'country' => (
    is       => 'ro',
    isa      => 'ParcoursDB::Country',
    required => 1,
);

sub fqnc {
    my ( $self ) = @_;
    return sprintf( "%s (%s)", $self->name, $self->country->name );
}

1;
