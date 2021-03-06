package ParcoursDB::Classic::TourOfFlanders::Factory;
use Moose;
extends 'ParcoursDB::Classic::Factory';

use ParcoursDB::Country;

has '+default_name' => ( default => "Tour of Flanders" );

has '+country' => ( default => sub { ParcoursDB::Belgium->new } );

sub start_locations {
    return {
        "Sint-Niklaas"   => [ 1977 .. 1997 ],
        "Bruges" => [ 1998 .. 2016 ],
        "Antwerp" => [ 2017 .. 2019 ],
    };
}

has '+default_start_location' => ( default => "Ghent" );

sub finish_locations {
    return {
        "Mariakerke" => [ 1913 ],
        "Evergem"    => [ 1914 ],
        "Gentbrugge" => [ 1919 .. 1923, 1962 .. 1972 ],
        "Wetteren"   => [ 1928 .. 1941, 1945 .. 1961 ],
        "Meerbeke"   => [ 1973 .. 2011 ],
        "Oudenaarde" => [ 2012 .. 2019 ],
    };
}

has '+default_finish_location' => ( default => "Ghent" );

has '+dates' => (
    default => sub {
        {
            1913 => [ 4, 2, 265 ],
            1914 => [ 4, 2, 265 ],
            1919 => [ 4, 2, 265 ],
            1920 => [ 4, 2, 265 ],
            1921 => [ 4, 2, 265 ],
            1922 => [ 4, 2, 265 ],
            1923 => [ 4, 2, 265 ],
            1924 => [ 4, 2, 265 ],
            1925 => [ 4, 2, 265 ],
            1926 => [ 4, 2, 265 ],
            1927 => [ 4, 2, 265 ],
            1928 => [ 4, 2, 265 ],
            1929 => [ 4, 2, 265 ],
            1930 => [ 4, 2, 265 ],
            1931 => [ 4, 2, 265 ],
            1932 => [ 4, 2, 265 ],
            1933 => [ 4, 2, 265 ],
            1934 => [ 4, 2, 265 ],
            1935 => [ 4, 2, 265 ],
            1936 => [ 4, 2, 265 ],
            1937 => [ 4, 2, 265 ],
            1938 => [ 4, 2, 265 ],
            1939 => [ 4, 2, 265 ],
            1940 => [ 4, 2, 265 ],
            1941 => [ 4, 2, 265 ],
            1945 => [ 4, 2, 265 ],
            1946 => [ 4, 2, 265 ],
            1947 => [ 4, 2, 265 ],
            1948 => [ 4, 2, 265 ],
            1949 => [ 4, 2, 265 ],
            1950 => [ 4, 2, 265 ],
            1951 => [ 4, 2, 265 ],
            1952 => [ 4, 2, 265 ],
            1953 => [ 4, 2, 265 ],
            1954 => [ 4, 2, 265 ],
            1955 => [ 4, 2, 265 ],
            1956 => [ 4, 2, 265 ],
            1957 => [ 4, 2, 265 ],
            1958 => [ 4, 2, 265 ],
            1959 => [ 4, 2, 265 ],
            1960 => [ 4, 2, 265 ],
            1961 => [ 4, 2, 265 ],
            1962 => [ 4, 2, 265 ],
            1963 => [ 4, 2, 265 ],
            1964 => [ 4, 2, 265 ],
            1965 => [ 4, 2, 265 ],
            1966 => [ 4, 2, 265 ],
            1967 => [ 4, 2, 265 ],
            1968 => [ 4, 2, 265 ],
            1969 => [ 4, 2, 265 ],
            1970 => [ 4, 2, 265 ],
            1971 => [ 4, 2, 265 ],
            1972 => [ 4, 2, 265 ],
            1973 => [ 4, 2, 265 ],
            1974 => [ 4, 2, 265 ],
            1975 => [ 4, 2, 265 ],
            1976 => [ 4, 2, 265 ],
            1977 => [ 4, 2, 265 ],
            1978 => [ 4, 2, 265 ],
            1979 => [ 4, 2, 265 ],
            1980 => [ 4, 2, 265 ],
            1981 => [ 4, 2, 265 ],
            1982 => [ 4, 2, 265 ],
            1983 => [ 4, 2, 265 ],
            1984 => [ 4, 2, 265 ],
            1985 => [ 4, 2, 265 ],
            1986 => [ 4, 2, 265 ],
            1987 => [ 4, 2, 265 ],
            1988 => [ 4, 2, 265 ],
            1989 => [ 4, 2, 265 ],
            1990 => [ 4, 2, 265 ],
            1991 => [ 4, 2, 265 ],
            1992 => [ 4, 2, 265 ],
            1993 => [ 4, 2, 265 ],
            1994 => [ 4, 2, 265 ],
            1995 => [ 4, 2, 265 ],
            1996 => [ 4, 2, 265 ],
            1997 => [ 4, 2, 265 ],
            1998 => [ 4, 2, 265 ],
            1999 => [ 4, 2, 265 ],
            2000 => [ 4, 2, 265 ],
            2001 => [ 4, 2, 265 ],
            2002 => [ 4, 2, 265 ],
            2003 => [ 4, 2, 265 ],
            2004 => [ 4, 2, 265 ],
            2005 => [ 4, 2, 265 ],
            2006 => [ 4, 2, 265 ],
            2007 => [ 4, 2, 265 ],
            2008 => [ 4, 2, 265 ],
            2009 => [ 4, 2, 265 ],
            2010 => [ 4, 2, 265 ],
            2011 => [ 4, 2, 265 ],
            2012 => [ 4, 2, 265 ],
            2013 => [ 4, 2, 265 ],
            2014 => [ 4, 2, 265 ],
            2015 => [ 4, 2, 265 ],
            2016 => [ 4, 2, 265 ],
            2017 => [ 4, 2, 265 ],
            2018 => [ 4, 2, 265 ],
            2019 => [ 4, 7, 265 ],
        };
    },
);

__PACKAGE__->meta->make_immutable;
1;
