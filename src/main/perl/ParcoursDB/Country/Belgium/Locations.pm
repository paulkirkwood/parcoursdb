package ParcoursDB::Country::Belgium::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    ans
    antwerp
    arlon
    bastogne
    beauraing
    beringen
    beveren
    bornem
    brasschaat
    bruges
    brussels
    charleroi
    circuit_zolder
    dinant
    esneux
    evergem
    forest
    gentbrugge
    ghent
    harelbeke
    hasselt
    herentals
    hotton
    huy
    jambes
    kuurne
    leuven
    liege
    lokeren
    marche_en_famenne
    marcinelle
    mariakerke
    meerbeke
    molenbeek
    mons
    mouscron
    namur
    oudenaarde
    perwez
    rochefort
    rocourt
    seraing
    sint_niklaas
    sint_pieters_woluwe
    spa
    tournai
    verviers
    vise
    wanze
    waregem
    waterloo
    wetteren
    wevelgem
    ypres
);

use ParcoursDB::Country::Belgium;
use ParcoursDB::Location;

my $belgium = ParcoursDB::Country::Belgium->new;

# A
sub ans {
    return _belgian_location( "Ans" );
}

sub antwerp {
    return _belgian_location( "Antwerp" );
}

sub arlon {
    return _belgian_location( "Arlon" );
}

# B
sub bastogne {
    return _belgian_location( "Bastogne" );
}

sub beauraing {
    return _belgian_location( "Beauraing" );
}

sub beringen {
    return _belgian_location( "Beringen" );
}

sub beveren {
    return _belgian_location( "Beveren" );
}

sub bornem {
    return _belgian_location( "Bornem" );
}

sub brasschaat {
    return _belgian_location( "Brasschaat" );
}

sub bruges {
    return _belgian_location( "Bruges" );
}

sub brussels {
    return _belgian_location( "Brussels" );
}

# C
sub charleroi {
    return _belgian_location( "Charleroi" );
}

sub circuit_zolder {
    return _belgian_location( "Circuit Zolder" );
}

# D
sub dinant {
    return _belgian_location( "Dinant" );
}

# E
sub esneux {
    return _belgian_location( "Esneux" );
}

sub evergem {
    return _belgian_location( "Evergem" );
}

# F
sub forest {
    return _belgian_location( "Forest" );
}

# G
sub gentbrugge {
    return _belgian_location( "Gentbrugge" );
}

sub ghent {
    return _belgian_location( "Ghent" );
}

# H
sub harelbeke {
    return _belgian_location( "Harelbeke" );
}

sub hasselt {
    return _belgian_location( "Hasselt" );
}

sub herentals {
    return _belgian_location( "Herentals" );
}

sub hotton {
    return _belgian_location( "Hotton" );
}

sub huy {
    return _belgian_location( "Huy" );
}

# J
sub jambes {
    return _belgian_location( "Jambes" );
}

# K
sub kuurne {
    return _belgian_location( "Kuurne" );
}

# L
sub leuven {
    return _belgian_location( "Leuven" );
}

sub liege {
    return _belgian_location( "Liège" );
}

sub lokeren {
    return _belgian_location( "Lokeren" );
}

# M
sub marche_en_famenne {
    return _belgian_location( "Marche-en-Famenne" );
}

sub marcinelle {
    return _belgian_location( "Marcinelle" );
}

sub mariakerke {
    return _belgian_location( "Mariakerke" );
}

sub meerbeke {
    return _belgian_location( "Meerbeke" );
}

sub molenbeek {
    return _belgian_location( "Molenbeek" );
}

sub mons {
    return _belgian_location( "Mons" );
}

sub mouscron {
    return _belgian_location( "Mouscron" );
}

# N
sub namur {
    return _belgian_location( "Namur" );
}

# O
sub oudenaarde {
    return _belgian_location( "Oudenaarde" );
}

# P
sub perwez {
    return _belgian_location( "Perwez" );
}

# R
sub rochefort {
    return _belgian_location( "Rochefort" );
}

sub rocourt {
    return _belgian_location( "Rocourt" );
}

# S
sub seraing {
    return _belgian_location( "Seraing" );
}

sub sint_niklaas {
    return _belgian_location( "Sint-Niklaas" );
}

sub sint_pieters_woluwe {
    return _belgian_location( "Sint-Pieters-Woluwe" );
}

sub spa {
    return _belgian_location( "Spa" );
}

# T
sub tournai {
    return _belgian_location( "Tournai" );
}

# V
sub verviers {
    return _belgian_location( "Verviers" );
}

sub vise {
    return _belgian_location( "Vise" );
}

# W
sub wanze {
    return _belgian_location( "Wanze" );
}

sub waregem {
    return _belgian_location( "Waregem" );
}

sub waterloo {
    return _belgian_location( "Waterloo" );
}

sub wetteren {
    return _belgian_location( "Wetteren" );
}

sub wevelgem {
    return _belgian_location( "Wevelgem" );
}

# Y
sub ypres {
    return _belgian_location( "Ypres" );
}

sub _belgian_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $belgium );
}

1;
