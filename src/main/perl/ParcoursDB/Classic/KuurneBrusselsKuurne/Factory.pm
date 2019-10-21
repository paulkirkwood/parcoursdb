package ParcoursDB::Classic::KuurneBrusselsKuurne::Factory;

use Moose;
extends 'ParcoursDB::Classic::Factory';

has '+default_name' => ( default => "Kuurne-Brussels-Kuurne" );

has '+country' => ( default => sub { ParcoursDB::Belgium->new } );

has '+default_start_location' => ( default => "Kuurne" );

has '+default_finish_location' => ( default => "Kuurne" );

has '+dates' => (
    default => sub {
        {

        };
    },
);

__PACKAGE__->meta->make_immutable;
1;
