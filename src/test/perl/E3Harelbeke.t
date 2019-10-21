use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::E3Harelbeke::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::E3Harelbeke::Factory->new;

test_edition( 1958, 'Harelbeke-Antwerp-Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1959, 'Harelbeke-Antwerp-Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1960, 'Harelbeke-Antwerp-Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1961, 'Harelbeke-Antwerp-Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1962, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1962, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1963, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1964, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1965, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1966, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1967, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1968, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1969, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1970, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1971, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1972, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1973, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1974, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1975, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1976, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1977, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1978, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1979, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1980, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1981, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1982, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1983, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1984, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1985, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1986, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1987, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1988, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1989, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1990, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1991, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1992, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1993, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1994, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1995, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1996, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1997, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1998, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 1999, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2000, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2001, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2002, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2003, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2004, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2005, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2006, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2007, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2008, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2009, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2010, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2011, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2012, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2013, 'E3 Prijs Vlaanderen', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2014, 'E3 Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2015, 'E3 Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2016, 'E3 Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2017, 'E3 Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2018, 'E3 Harelbeke', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 
test_edition( 2019, 'E3 BinckBank Classic', 'Harelbeke (Belgium)', 'Harelbeke (Belgium)' ); 

done_testing();

sub test_edition {
    my ( $year, $name, $start, $finish ) = @_;

    subtest "E3 Harelbeke [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, $name, "'name' is as expected" );
        is( $edition->start->fqnc, $start, "'start' is as expected" );
        is( $edition->finish->fqnc, $finish, "'finish' is as expected" );
    };
}
