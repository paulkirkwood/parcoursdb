use strict;
use warnings;

use File::Slurp;
use Dauphine;
use Giro;
use TourDeFrance;
use Tirreno;
use Test::More;

subtest "Test Tour de France editions" => sub {

    my $tdfEditions = TourDeFrance->new;

    my @editions = (
        {
            dates         => "26 June-19 July", 
            distance      => 4368.3,
            longest_stage => 269.5,
            summary       => "23 stages + Prologue including 5 split stages",
            race          => $tdfEditions->build( 1970 ),
        },
        {
            dates         => "2-24 July", 
            distance      => 3529,
            longest_stage => 237.5,
            summary       => "21 stages",
            race          => $tdfEditions->build( 2016 ),
        },
        {
            dates           => "7-29 July", 
            distance        => 3351,
            high_point      => {
                name   => "Col du Portet",
                height => 2215,
            },
            longest_stage   => 231,
            summary         => "21 stages",
            summit_finishes => 4,
            race            => $tdfEditions->build( 2018 ),
        },
    );

    _test_editions( @editions );
};

subtest "Test Giro d'Italia" => sub {

    my $giroEditions = Giro->new;
    my $giro1980 = $giroEditions->build( 1980 );

    my @editions = (
        {
            dates         => "15 May-7 June",
            distance      => 4026,
            longest_stage => 247,
            summary       => "22 stages + Prologue",
            race          => $giro1980
        },
    );

    _test_editions( @editions );
};

subtest "Test 'Criterium du Dauphine' editions" => sub {

    my $dauphineEditions = Dauphine->new;
    my $dauphine2018 = $dauphineEditions->build( 2018 );

    my @editions = (
        {
            dates           => "3-10 June", 
            distance        => 958.6,
            high_point      => {
                name   => "Cormet de Roselend",
                height => 1968
            },
            longest_stage   => 181,
            summary         => "7 stages + Prologue",
            summit_finishes => 4,
            race            => $dauphine2018,
        },
    );

    _test_editions( @editions ); 
};

subtest "Test 'Tirreno Adriatico'" => sub {

    my $tirrenoEditions = Tirreno->new;
    my $tirreno2018 = $tirrenoEditions->build( 2018 );

    my @editions = (
        {
            dates           => "3-9 March",
            distance        => 992.6,
            high_point      => {
                name   => "Sarnano Sassotetto",
                height => 1335
            },
            longest_stage   => 239,
            summary         => "7 stages",
            summit_finishes => 3,
            race            => $tirreno2018,
        },
    );

    _test_editions( @editions );
};

done_testing();

sub _test_editions {
    my ( @editions ) = @_;

    foreach my $edition ( @editions ) {
        my $stage_race = $edition->{race};
        my $name = $stage_race->name;
        my $year = $stage_race->first_stage->date->year;

        my @expected_route = $stage_race->route;
        my @actual_route = read_file( "../resources/${name}/${year}/route.csv", chomp => 1 );
        is_deeply( \@actual_route, \@expected_route, "$name $year route as expected" );

        is( $stage_race->dates, $edition->{dates}, "$name $year dates are as expected" );
        is( $stage_race->distance, $edition->{distance}, "$name $year distance is as expected" );
        is( $stage_race->longest_stage->distance, $edition->{longest_stage}, "$name $year longest stage distance is as expected" );
        is( $stage_race->stage_summary, $edition->{summary}, "$name $year stage summary is as expected" );

        if ( $edition->{summit_finishes} ) {
            my @summit_finishes = $stage_race->summit_finishes;
            is( scalar( @summit_finishes ), $edition->{summit_finishes}, "$name $year summit finishes is as expected" );
        }

        if ( $edition->{high_point} ) {
            my $high_point = $stage_race->high_point;
            is( $high_point->name, $edition->{high_point}->{name}, "$name $year highest col name as expected" );
            is( $high_point->height, $edition->{high_point}->{height}, "$name $year highest col name as expected" );
        }
    }
}
