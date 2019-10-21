use strict;
use warnings;

use ParcoursDB::Country::Andorra;
use ParcoursDB::Country::Austria;
use ParcoursDB::Country::Belgium;
use ParcoursDB::Country::Croatia;
use ParcoursDB::Country::Denmark;
use ParcoursDB::Country::France;
use ParcoursDB::Country::FreeStateOfFiume;
use ParcoursDB::Country::Germany;
use ParcoursDB::Country::Greece;
use ParcoursDB::Country::Ireland;
use ParcoursDB::Country::Israel;
use ParcoursDB::Country::Italy;
use ParcoursDB::Country::Luxembourg;
use ParcoursDB::Country::Netherlands;
use ParcoursDB::Country::NorthernIreland;
use ParcoursDB::Country::Portugal;
use ParcoursDB::Country::SanMarino;
use ParcoursDB::Country::Slovenia;
use ParcoursDB::Country::Spain;
use ParcoursDB::Country::Switzerland;
use ParcoursDB::Country::UnitedKingdom;
use ParcoursDB::Country::VaticanCity;
use ParcoursDB::Country::WestGermany;
use ParcoursDB::Country::Yugoslavia;
use Test::More;

my $test_cases = {
    Andorra          => "Andorra",
    Austria          => "Austria",
    Belgium          => "Belgium",
    Croatia          => "Croatia",
    Denmark          => "Denmark",
    France           => "France",
    FreeStateOfFiume => "Free state of Fiume",
    Germany          => "Germany",
    Greece           => "Greece",
    Ireland          => "Ireland",
    Israel           => "Israel",
    Italy            => "Italy",
    Luxembourg       => "Luxembourg",
    Netherlands      => "Netherlands",
    NorthernIreland  => "Northern Ireland",
    Portugal         => "Portugal",
    SanMarino        => "San Marino",
    Slovenia         => "Slovenia",
    Spain            => "Spain",
    Switzerland      => "Switzerland",
    UnitedKingdom    => "United Kingdom",
    VaticanCity      => "Vatican City",
    WestGermany      => "West Germany",
    Yugoslavia       => "Yugoslavia",
};

while ( my ( $stub, $name ) = each %$test_cases ) {
    my $klass = "ParcoursDB::Country::" . $stub;
    is( $klass->new->name, $name, "$stub 'name' is as expected" );
}

done_testing();
