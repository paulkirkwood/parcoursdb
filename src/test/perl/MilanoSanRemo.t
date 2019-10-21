use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::MilanoSanRemo::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::MilanoSanRemo::Factory->new;

test_edition( $_ ) foreach ( 1907 .. 1915, 1917 .. 1943, 1946 .. 2019 );

done_testing();

sub test_edition {
    my ( $year ) = @_;

    subtest "Milano-San Remo [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, "Milano-San Remo", "'name' is as expected" );
        is( $edition->start->fqnc, "Milan (Italy)", "'start' is as expected" );
        is( $edition->finish->fqnc, "San Remo (Italy)", "'finish' is as expected" );
    };
}
