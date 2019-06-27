use strict;
use warnings;

use DateTime;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::Stage;
use ParcoursDB::StageRace;
use Test::Deep;
use Test::Exception;
use Test::More;

my $france = ParcoursDB::Country->new( name => "France" );
my $paris  = ParcoursDB::Location->new( name => "Paris", country => $france );
my $tours  = ParcoursDB::Location->new( name => "Tours", country => $france );

my $july1st = DateTime->new( year => 2018, month => 7, day => 1 );
my $july2nd = DateTime->new( year => 2018, month => 7, day => 2 );
my $july3rd = DateTime->new( year => 2018, month => 7, day => 3 );

subtest "Stage race with a prologue" => sub {

    my $prologue = ParcoursDB::Prologue->new(
        ordinal  => 1,
        start    => $paris,
        finish   => $paris,
        date     => $july1st,
        distance => 8.5,
    );

    my $stage1 = ParcoursDB::RoadStage->new(
        ordinal  => 2,
        id       => "1",
        start    => $paris,
        finish   => $paris,
        date     => $july2nd,
        distance => 185,
    );
    
    my $stage2 = ParcoursDB::RoadStage->new(
        ordinal  => 3,
        id       => "2",
        start    => $paris,
        finish   => $tours,
        date     => $july3rd,
        distance => 250,
    );

    my $stage_race = ParcoursDB::StageRace->new( name => "Mini TdF", country => $france );
    $stage_race->add_stage( $prologue );
    $stage_race->add_stage( $stage1 );
    $stage_race->add_stage( $stage2 );

    is( $stage_race->distance, $prologue->distance + $stage1->distance + $stage2->distance, "Distance is as expected" );

    ok( $stage_race->has_prologue, "has_prologue() working as expected" );

    is( $stage_race->road_stages->count_stages, 2, "2 road stages as expected" );
    is( $stage_race->team_time_trials->count_stages, 0, "0 TTTs as expected" );
    is( $stage_race->individual_time_trials->count_stages, 0, "0 ITTs as expected" );
    is( $stage_race->rest_days->count_stages, 0, "0 rest days as expected" );

    my @expected_route = (
        "P,1 July,Paris,8.5 km,Individual time trial",
        "1,2 July,Paris,185.0 km,Road stage",
        "2,3 July,Paris to Tours,250.0 km,Road stage",
    );

    my @route = $stage_race->route;
    is_deeply( \@route, \@expected_route, "route() working as expected" );

    is( $stage_race->first_stage, $prologue, "first_stage() returns the Prologue if there is one" );
    is( $stage_race->last_stage, $stage2, "last_stage() returns the last stage on the last day of the race" );
};

subtest "Stage race with split stages on day 1" => sub {

    my $stage1a = ParcoursDB::RoadStage->new(
        ordinal  => 1,
        id       => "1a",
        start    => $paris,
        finish   => $paris,
        date     => $july2nd,
        distance => 50
    );

    my $stage1b = ParcoursDB::RoadStage->new(
        ordinal  => 2,
        id       => "1b",
        start    => $paris,
        finish   => $tours,
        date     => $july3rd,
        distance => 190
    );

    my $stage_race = ParcoursDB::StageRace->new( name => "Mini TdF", country => $france );
    $stage_race->add_stage( $stage1a );
    $stage_race->add_stage( $stage1b );

    is( $stage_race->first_stage, $stage1a, "first_stage() returns the first stage if there is no Prologue" );
    is( $stage_race->last_stage, $stage1b, "last_stage() returns the last stage on the last day of the race" );
};

done_testing();
