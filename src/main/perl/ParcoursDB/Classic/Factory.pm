package ParcoursDB::Classic::Factory;

use Moose;
use Data::Dumper;
use DateTime;
use ParcoursDB::Classic;
use ParcoursDB::Country;
use ParcoursDB::Location;

has 'country' => (
    is       => 'ro',
    isa      => 'ParcoursDB::Country',
    required => 1,
);

has 'names' => (
    is       => 'ro',
    isa      => 'HashRef',
    required => 1,
    default  => sub { {} },
);

has 'default_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'start_locations' => (
    is       => 'ro',
    isa      => 'HashRef',
    required => 1,
    default  => sub { {} },
);

has 'default_start_location' => (
    is  => 'ro',
    isa => 'Maybe[Str]',
);

has 'finish_locations' => (
    is       => 'ro',
    isa      => 'HashRef',
    required => 1,
    default  => sub { {} },
);

has 'default_finish_location' => (
    is  => 'ro',
    isa => 'Maybe[Str]',
);

has 'dates' => (
    is       => 'ro',
    isa      => 'HashRef',
    required => 1,
    default  => sub { {} },
);

sub years {
    my ( $self ) = @_;
    return sort { $a cmp $b } keys %{ $self->dates };
}

sub edition {
    my ( $self, $year ) = @_;

    my ( $month, $day, $distance ) = @{ $self->dates->{$year} };

    my $start = ParcoursDB::Location->new(
        name    => $self->_find( $year, $self->start_locations, $self->default_start_location ),
        country => $self->country,
    );

    my $finish = ParcoursDB::Location->new(
        name    => $self->_find( $year, $self->finish_locations, $self->default_finish_location ),
        country => $self->country,
    );

    return ParcoursDB::Classic->new(
        date     => DateTime->new( year => $year, month => $month, day => $day ),
        distance => $distance,
        name     => $self->_find( $year, $self->names, $self->default_name ),
        start    => $start,
        finish   => $finish,
    );
}

sub _find {
    my ( $self, $year, $map, $default_value ) = @_;

    my $value;
    while ( my ( $k, $years ) = each %$map ) {
        if ( grep { $_ == $year } @$years ) {
            return $k;
        }
    }

    return $default_value;
}

__PACKAGE__->meta->make_immutable;
1;
