package ParcoursDB::Classic::GentWevelgem::Factory;

use Moose;
extends 'ParcoursDB::Classic::Factory';

has '+default_name' => ( default => "Gent-Wevelgem" );

has '+country' => ( default => sub { ParcoursDB::Belgium->new } );

has '+default_start_location' => ( default => "Ghent" );

has '+default_finish_location' => ( default => "Wevelgem" );

has '+dates' => (
    default => sub {
        {
            1934 => [ 9, 9, 120 ],
            1935 => [ 6, 30, 120 ],
            1936 => [ 5, 28, 168 ],
            1937 => [ 5, 13, 160 ],
            1938 => [ 6, 2, 165 ],
            1939 => [ 5, 24, 155 ],
            1945 => [ 7, 29, 200 ],
            1946 => [ 5, 26, 200 ],
            1947 => [ 3, 30, 230 ],
            1948 => [ 5, 9, 276 ],
            1949 => [ 4, 3, 250 ],
            1950 => [ 3, 26, 255 ],
            1951 => [ 3, 25, 240 ],
            1952 => [ 4, 3, 240 ],
            1953 => [ 3, 29, 240 ],
            1954 => [ 3, 28, 235 ],
            1955 => [ 4, 3, 228 ],
            1956 => [ 3, 25, 228 ],
            1957 => [ 3, 27, 207 ],
            1958 => [ 4, 6, 231 ],
            1959 => [ 4, 4, 221.2 ],
            1960 => [ 4, 17, 256 ],
            1961 => [ 4, 16, 231 ],
            1962 => [ 3, 25, 237 ],
            1963 => [ 3, 24, 230 ],
            1964 => [ 3, 21, 233 ],
            1965 => [ 3, 21, 235 ],
            1966 => [ 3, 23, 252 ],
            1967 => [ 3, 29, 242 ],
            1968 => [ 4, 16, 250 ],
            1969 => [ 4, 16, 250 ],
            1970 => [ 4, 1, 236 ],
            1971 => [ 3, 31, 237 ],
            1972 => [ 4, 12, 245 ],
            1973 => [ 4, 1, 250 ],
            1974 => [ 4, 9, 244 ],
            1975 => [ 4, 9, 250 ],
            1976 => [ 4, 6, 262 ],
            1977 => [ 4, 19, 277 ],
            1978 => [ 4, 12, 246 ],
            1979 => [ 4, 1, 252 ],
            1980 => [ 4, 2, 264 ],
            1981 => [ 4, 8, 254.4 ],
            1982 => [ 4, 7, 255 ],
            1983 => [ 4, 6, 255 ],
            1984 => [ 4, 4, 255 ],
            1985 => [ 4, 10, 262 ],
            1986 => [ 4, 19, 250 ],
            1987 => [ 4, 8, 243 ],
            1988 => [ 4, 20, 275 ],
            1989 => [ 4, 5, 276 ],
            1990 => [ 4, 4, 204 ],
            1991 => [ 4, 10, 210 ],
            1992 => [ 4, 8, 210 ],
            1993 => [ 4, 7, 210 ],
            1994 => [ 4, 6, 210 ],
            1995 => [ 4, 5, 207 ],
            1996 => [ 4, 10, 208 ],
            1997 => [ 4, 9, 208 ],
            1998 => [ 4, 8, 208 ],
            1999 => [ 4, 7, 208 ],
            2000 => [ 4, 7, 208 ],
            2001 => [ 4, 11, 214 ],
            2002 => [ 4, 10, 214 ],
            2003 => [ 4, 9, 204 ],
            2004 => [ 4, 7, 204 ],
            2005 => [ 4, 6, 208 ],
            2006 => [ 4, 5, 210 ],
            2007 => [ 4, 11, 207 ],
            2008 => [ 4, 9, 209 ],
            2009 => [ 4, 8, 209 ],
            2010 => [ 3, 28, 219 ],
            2011 => [ 3, 27, 219 ],
            2012 => [ 3, 25, 234.6 ],
            2013 => [ 3, 24, 183.4 ],
            2014 => [ 3, 30, 233 ],
            2015 => [ 3, 29, 239.1 ],
            2016 => [ 3, 27, 243 ],
            2017 => [ 3, 26, 249.2 ],
            2018 => [ 3, 25, 250.8 ],
            2019 => [ 3, 31, 251.5 ],
        },
    },
);

__PACKAGE__->meta->make_immutable;
1;
