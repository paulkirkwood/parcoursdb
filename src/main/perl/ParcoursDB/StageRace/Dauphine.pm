package ParcoursDB::StageRace::Dauphine;

use Moose;
extends 'ParcoursDB::StageRace';

use ParcoursDB::Country::France;

has '+name' => (
    builder => '_build_name',
    lazy    => 1,
);

has '+country' => ( default => sub { ParcoursDB::Country::France->new; } );

sub _build_name {
    my ( $self ) = @_;

    my @name = ( "Critérium du Dauphiné" );
    push @name, "Libéré" if $self->start_date->year < 2010;

    return join ( q{ }, @name );
}

1;
