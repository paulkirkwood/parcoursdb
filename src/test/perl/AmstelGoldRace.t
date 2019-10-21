use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::AmstelGoldRace::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::AmstelGoldRace::Factory->new;

test_edition( 1966, "Breda (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1967, "Helmond (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1968, "Helmond (Netherlands)", "Elsloo (Netherlands)" );
test_edition( 1969, "Helmond (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1970, "Helmond (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1971, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1972, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1973, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1974, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1975, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1976, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1977, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1978, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1979, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1980, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1981, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1982, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1983, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1984, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1985, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1986, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1987, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1988, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1989, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1990, "Heerlen (Netherlands)", "Meerssen (Netherlands)" );
test_edition( 1991, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1992, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1993, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1994, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1995, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1996, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1997, "Heerlen (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1998, "Maastricht (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 1999, "Maastricht (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 2000, "Maastricht (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 2001, "Maastricht (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 2002, "Maastricht (Netherlands)", "Maastricht (Netherlands)" );
test_edition( 2003, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2004, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2005, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2006, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2007, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2008, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2009, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2010, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2011, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2012, "Maastricht (Netherlands)", "Valkenburg (Netherlands)" );
test_edition( 2013, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2013, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2014, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2016, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2017, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2018, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );
test_edition( 2019, "Maastricht (Netherlands)", "Berg en Terblijt (Netherlands)" );

done_testing();

sub test_edition {
    my ( $year, $expected_start, $expected_finish ) = @_;

    subtest "Amstel Gold Race [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, "Amstel Gold Race", "'name' is as expected" );
        is( $edition->start->fqnc, $expected_start, "'start' is as expected" );
        is( $edition->finish->fqnc, $expected_finish, "'finish' is as expected" );
    };
}
