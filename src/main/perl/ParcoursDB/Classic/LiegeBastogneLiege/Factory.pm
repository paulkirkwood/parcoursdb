package ParcoursDB::Classic::LiegeBastogneLiege::Factory;

use Moose;
extends 'ParcoursDB::Classic::Factory';

use ParcoursDB::Country;

has '+default_name' => ( default => sub { "Liège-Bastogne-Liège" } );

has '+country' => ( default => sub { ParcoursDB::Belgium->new } );

has '+default_start_location' => ( default => "Liège" );

has '+finish_locations' => (
    default => sub {
        {
            "Ans" => [ 1992 .. 2018 ],
        },
    },
);

has '+default_finish_location' => ( default => "Liège" );

__PACKAGE__->meta->make_immutable;
1;
