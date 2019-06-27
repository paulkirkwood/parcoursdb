use strict;
use warnings;

use DateTime;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::StageRace::Builder;
use Test::Deep;
use Test::Exception;
use Test::More;

my $france = ParcoursDB::Country->new( name => "France" );
my $paris  = ParcoursDB::Location->new( name => "Paris", country => $france );
my $tours  = ParcoursDB::Location->new( name => "Tours", country => $france );
my $nantes = ParcoursDB::Location->new( name => "Nantes", country => $france );

subtest "Build a Stage race that starts with a prologue" => sub {

    my $july1st = DateTime->new( year => 2018, month => 7, day => 1 );
    my $builder = ParcoursDB::StageRace::Builder->new( name => "Mini TdF", date => $july1st, country => $france );

    $builder->prologue( start => $paris, distance => 8.5 );
    $builder->road_stage( start => $paris, distance => 185 );
    $builder->road_stage( start => $paris, finish => $tours, distance => 250 );

    my $stage_race = $builder->build;

    my @expected_route = (
        "P,1 July,Paris,8.5 km,Individual time trial",
        "1,2 July,Paris,185.0 km,Road stage",
        "2,3 July,Paris to Tours,250.0 km,Road stage",
    );

    my @route = $stage_race->route;
    is_deeply( \@route, \@expected_route, "route() working as expected" );
};

subtest "Build a Stage race that starts with split stages" => sub {

    my $july1st = DateTime->new( year => 2018, month => 7, day => 1 );
    my $builder = ParcoursDB::StageRace::Builder->new( name => "Mini TdF", date => $july1st, country => $france );

    $builder->enable_split_stages;
    $builder->road_stage( start => "Paris", distance => 85 );
    $builder->road_stage( start => "Paris", finish => "Tours", distance => 190 );
    $builder->disable_split_stages;
    $builder->road_stage( start => "Tours", finish => "Nantes", distance => 276 );
   
    my $stage_race = $builder->build;

    my @expected_route = (
        "1a,1 July,Paris,85.0 km,Road stage",
        "1b,1 July,Paris to Tours,190.0 km,Road stage",
        "2,2 July,Tours to Nantes,276.0 km,Road stage",
    );

    my @route = $stage_race->route;
    is_deeply( \@route, \@expected_route, "route() working as expected" );
};

subtest "Build a stage race that has with a morning and afternoon stage [TdF 1990, 1991]" => sub {

    my $june30th = DateTime->new( year => 1990, month => 6, day => 30 );
    my $builder = ParcoursDB::StageRace::Builder->new( name => "Tour de France", date => $june30th, country => $france );

    $builder->prologue( start => "Futuroscope", distance => 6.3 );
    $builder->road_stage( start => "Futuroscope", distance => 138.5, morning_stage => 1 );
    $builder->team_time_trial( start => "Futuroscope", distance => 44.5 );
    $builder->road_stage( start => "Poitiers", finish => "Nantes", distance => 233 );

    my $stage_race = $builder->build;

    my @expected_route = (
        "P,30 June,Futuroscope,6.3 km,Individual time trial",
        "1,1 July,Futuroscope,138.5 km,Road stage",
        "2,1 July,Futuroscope,44.5 km,Team time trial",
        "3,2 July,Poitiers to Nantes,233.0 km,Road stage",
    );

    my @route = $stage_race->route;
    is_deeply( \@route, \@expected_route, "route() working as expected" );
};

subtest "A rest day cannot follow a rest day" => sub {
    my $july1st = DateTime->new( year => 2018, month => 7, day => 1 );
    my $builder = ParcoursDB::StageRace::Builder->new( name => "Mini TdF", date => $july1st, country => $france );
    $builder->road_stage( start => $paris, finish => $tours, distance => 190 );
    $builder->rest_day( location => $tours );
    dies_ok { $builder->rest_day( location => $tours ) } "A rest day cannot follow a rest day";
};

subtest "A stage race cannot start or finish with a rest day" => sub {
    my $july1st = DateTime->new( year => 2018, month => 7, day => 1 );
    my $builder = ParcoursDB::StageRace::Builder->new( name => "Mini TdF", date => $july1st, country => $france );
    dies_ok { $builder->rest_day( location => $tours ) } "A stage race cannot start with a rest day";

    $builder->road_stage( start => $paris, finish => $tours, distance => 190 );
    $builder->rest_day( location => $tours );
    dies_ok { $builder->build } "A stage race cannot end with a rest day";
};

done_testing();
