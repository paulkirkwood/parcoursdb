use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::GrandPrixDePlouay::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::GrandPrixDePlouay::Factory->new;

test_edition( $_, "Grand-Prix de Plouay" ) foreach ( 1931 .. 1939, 1945 .. 1988 );
test_edition( $_, "GP Ouest-France" ) foreach ( 1989 .. 2015 );
test_edition( $_, "Bretagne Classic Ouest-France" ) foreach ( 2016 .. 2019 );

done_testing();

sub test_edition {
    my ( $year, $name ) = @_;

    subtest "Grand Prix de Plouay [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, $name, "'name' is as expected" );
        is( $edition->start->fqnc, "Plouay (France)", "'start' is as expected" );
        is( $edition->finish->fqnc, "Plouay (France)", "'finish' is as expected" );
    };
}
