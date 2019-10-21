use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::ParisRoubaix::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::ParisRoubaix::Factory->new;

test_edition( 1896, 'Porte Maillot, Paris (France)' );
test_edition( 1897, 'Porte Maillot, Paris (France)' );
test_edition( 1898, 'Chatou (France)' );
test_edition( 1899, 'Chatou (France)' );
test_edition( 1900, 'Saint-Germain (France)' );
test_edition( 1901, 'Porte Maillot, Paris (France)' );
test_edition( 1902, 'Chatou (France)' );
test_edition( 1903, 'Chatou (France)' );
test_edition( 1904, 'Chatou (France)' );
test_edition( 1905, 'Chatou (France)' );
test_edition( 1906, 'Chatou (France)' );
test_edition( 1907, 'Chatou (France)' );
test_edition( 1908, 'Chatou (France)' );
test_edition( 1909, 'Chatou (France)' );
test_edition( 1910, 'Chatou (France)' );
test_edition( 1911, 'Chatou (France)' );
test_edition( 1912, 'Chatou (France)' );
test_edition( 1913, 'Chatou (France)' );
test_edition( 1914, 'Suresnes (France)' );
test_edition( 1919, 'Suresnes (France)' );
test_edition( 1920, 'Suresnes (France)' );
test_edition( 1921, 'Suresnes (France)' );
test_edition( 1922, 'Suresnes (France)' );
test_edition( 1923, 'Suresnes (France)' );
test_edition( 1924, 'Suresnes (France)' );
test_edition( 1925, 'Suresnes (France)' );
test_edition( 1926, 'Suresnes (France)' );
test_edition( 1927, 'Suresnes (France)' );
test_edition( 1928, 'Suresnes (France)' );
test_edition( 1929, 'Porte Maillot, Paris (France)' );
test_edition( 1930, 'Porte Maillot, Paris (France)' );
test_edition( 1931, 'Porte Maillot, Paris (France)' );
test_edition( 1932, 'Porte Maillot, Paris (France)' );
test_edition( 1933, 'Porte Maillot, Paris (France)' );
test_edition( 1934, 'Porte Maillot, Paris (France)' );
test_edition( 1935, 'Porte Maillot, Paris (France)' );
test_edition( 1936, 'Porte Maillot, Paris (France)' );
test_edition( 1937, 'Porte Maillot, Paris (France)' );
test_edition( 1938, 'Argenteuil (France)' );
test_edition( 1939, 'Porte Maillot, Paris (France)' );

test_edition( $_, 'Saint-Denis (France)' ) foreach ( 1943 .. 1965 );
test_edition( $_, 'Chantilly (France)' ) foreach ( 1966 .. 1976 );
test_edition( $_, 'Compiegne (France)' ) foreach ( 1977 .. 2019 );

done_testing();

sub test_edition {
    my ( $year, $start ) = @_;

    subtest "Paris-Roubaix [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, "Paris-Roubaix", "'name' is as expected" );
        is( $edition->start->fqnc, $start, "'start' is as expected" );
        is( $edition->finish->fqnc, "Roubaix (France)", "'finish' is as expected" );
    };
}
