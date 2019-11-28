package ParcoursDB::Classic::AmstelGoldRace::Factory;

use Moose;
extends 'ParcoursDB::Classic::Factory';

use ParcoursDB::Country;

has '+default_name' => ( default => "Amstel Gold Race" );

has '+country' => ( default => sub { ParcoursDB::Netherlands->new } );

has '+dates' => (
    default => sub {
        {
            1966 => [ 4, 30, 302 ],
            1967 => [ 4, 15, 213 ],
            1968 => [ 9, 21, 245 ],
            1969 => [ 4, 18, 259 ],
            1970 => [ 4, 25, 240 ],
            1971 => [ 3, 28, 233 ],
            1972 => [ 3, 26, 237 ],
            1973 => [ 4, 7, 238 ],
            1974 => [ 4, 13, 238 ],
            1975 => [ 3, 29, 238 ],
            1976 => [ 3, 27, 230 ],
            1977 => [ 4, 9, 230 ],
            1978 => [ 3, 25, 230 ],
            1979 => [ 4, 14, 237 ],
            1980 => [ 4, 5, 238 ],
            1981 => [ 4, 2, 237 ],
            1982 => [ 4, 24, 237 ],
            1983 => [ 4, 23, 242 ],
            1984 => [ 4, 21, 247 ],
            1985 => [ 4, 27, 242 ],
            1986 => [ 4, 26, 242 ],
            1987 => [ 4, 25, 242 ],
            1988 => [ 4, 23, 242 ],
            1989 => [ 4, 22, 242 ],
            1990 => [ 4, 21, 249 ],
            1991 => [ 4, 27, 244 ],
            1992 => [ 4, 25, 247.5 ],
            1993 => [ 4, 24, 249 ],
            1994 => [ 4, 23, 250 ],
            1995 => [ 4, 22, 256 ],
            1996 => [ 4, 27, 253 ],
            1997 => [ 4, 26, 258 ],
            1998 => [ 4, 25, 257.3 ],
            1999 => [ 4, 24, 253 ],
            2000 => [ 4, 22, 257 ],
            2001 => [ 4, 28, 257 ],
            2002 => [ 4, 28, 254.4 ],
            2003 => [ 4, 20, 250.7 ],
            2004 => [ 4, 18, 251.1 ],
            2005 => [ 4, 17, 250.7 ],
            2006 => [ 4, 16, 253.1 ],
            2007 => [ 4, 22, 253.1 ],
            2008 => [ 4, 20, 257.4 ],
            2009 => [ 4, 19, 257.4 ],
            2010 => [ 4, 18, 257.4 ],
            2011 => [ 4, 17, 260.4 ],
            2012 => [ 4, 15, 256.5 ],
            2013 => [ 4, 14, 251.8 ],
            2014 => [ 4, 20, 251 ],
            2015 => [ 4, 19, 258 ],
            2016 => [ 4, 17, 248.7 ],
            2017 => [ 4, 16, 264.6 ],
            2018 => [ 4, 15, 263 ],
            2019 => [ 4, 21, 265.7 ],
        },
    },
);

sub start_locations {
    return {
        "Breda"   => [ 1966 ],
        "Helmond" => [ 1967 .. 1970 ],
        "Heerlen" => [ 1971 .. 1997 ],
    };
};

has '+default_start_location' => ( default => "Maastricht" );

sub finish_locations {
    return {
        "Meerssen"   => [ 1966, 1967, 1969 .. 1990 ],
        "Elsloo"     => [ 1968 ],
        "Maastricht" => [ 1991 .. 2002 ],
        "Valkenburg" => [ 2003 .. 2012 ],
    };
}

has '+default_finish_location' => ( default => "Berg en Terblijt" );

__PACKAGE__->meta->make_immutable;
1;