use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::OmloopHetVolk::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::OmloopHetVolk::Factory->new;

test_edition( $_, "Omloop van Vlaanderen" ) foreach ( 1945 .. 1946 );
test_edition( $_, "Omloop Het Volk" ) foreach ( 1947 .. 1985, 1987 .. 2008 );
test_edition( $_, "Omloop Het Nieuwsblad" ) foreach ( 2009 .. 2019 );

done_testing();

sub test_edition {
    my ( $year, $name ) = @_;

    my $finish = $year >= 1996 && $year <= 2007 ? "Lokeren" : "Ghent";

    subtest "Omloop Het Volk [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, $name, "'name' is as expected" );
        is( $edition->start->fqnc, "Ghent (Belgium)", "'start' is as expected" );
        is( $edition->finish->fqnc, "${finish} (Belgium)", "'finish' is as expected" );
    };
}
