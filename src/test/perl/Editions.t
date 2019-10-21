use strict;
use warnings;

use Data::Dumper;
use File::Slurp;
use Dauphine;
use TourOfItaly;
use TourDeFrance;
use Tirreno;
use Test::More;

subtest "Tour de France" => sub {

    my $tdf_editions = TourDeFrance->new;

    subtest "TdF 1970" => sub {
        _test_edition(
            dates         => "26 June-19 July", 
            distance      => 4368.3,
            longest_stage => 269.5,
            summary       => "23 stages + Prologue including 5 split stages",
            edition       => $tdf_editions->build( 1970 ),
        );
    };

    subtest "TdF 2016" => sub {
        _test_edition(
            dates         => "2-24 July",
            distance      => 3529,
            longest_stage => 237.5,
            summary       => "21 stages",
            edition       => $tdf_editions->build( 2016 ),
        );
    };

    subtest "TdF 2018" => sub {
        _test_edition( 
            dates           => "7-29 July", 
            distance        => 3351,
            high_point      => {
                name   => "Saint-Lary-Soulan (Col de Portet)",
                height => 2215,
            },
            longest_stage   => 231,
            summary         => "21 stages",
            summit_finishes => 4,
            edition         => $tdf_editions->build( 2018 ),
        );
    };
};

subtest "Giro d'Italia" => sub {

    my $giro_editions = TourOfItaly->new;

    subtest "Giro 1980" => sub {
        _test_edition(
            dates         => "15 May-7 June",
            distance      => 4026,
            longest_stage => 247,
            summary       => "22 stages + Prologue",
            edition       => $giro_editions->build( 1980 ),
        );
    };
};

subtest "Criterium du Dauphine" => sub {

    my $dauphine_editions = Dauphine->new;

    subtest "Dauphine 2009" => sub {
        _test_edition(
            dates         => "7-14 June",
            distance      => 1027.5,
            longest_stage => 228,
            summary       => "8 stages",
            edition       => $dauphine_editions->build( 2009 ),
        );
    };

    subtest "Dauphine 2018" => sub {
        _test_edition(
            dates           => "3-10 June", 
            distance        => 958.6,
            high_point      => {
                name   => "Cormet de Roselend",
                height => 1968
            },
            longest_stage   => 181,
            summary         => "7 stages + Prologue",
            summit_finishes => 4,
            edition         => $dauphine_editions->build( 2018 ),
        );
    };
};

subtest "Test 'Tirreno Adriatico'" => sub {

    my $tirreno_editions = Tirreno->new;

    subtest "Tirreno 2013" => sub {
        return _test_edition(
            dates           => "6-12 March",
            distance        => 1060.1,
            longest_stage   => 232,
            summary         => "6 stages + Prologue",
            edition         => $tirreno_editions->build( 2013 ),
        );
    };

    subtest "Tirreno 2014" => sub {
        return _test_edition(
            dates           => "12-18 March",
            distance        => 1034.6,
            longest_stage   => 244,
            summary         => "6 stages + Prologue",
            edition         => $tirreno_editions->build( 2014 ),
        );
    };

    subtest "Tirreno 2018" => sub {
        return _test_edition(
            dates           => "3-9 March",
            distance        => 992.6,
            high_point      => {
                name   => "Sarnano Sassotetto",
                height => 1335
            },
            longest_stage   => 239,
            summary         => "7 stages",
            summit_finishes => 3,
            edition         => $tirreno_editions->build( 2018 ),
        ),
    };
};

done_testing();

sub _test_edition {
    my ( %args ) = (@_);

    my $stage_race = $args{edition};
    my $name = $stage_race->name;
    my $year = $stage_race->first_stage->date->year;

    my @expected_route = $stage_race->route;
    my @actual_route = read_file( "../resources/${name}/${year}/route.csv", chomp => 1 );
    is_deeply( \@actual_route, \@expected_route, "route as expected" );

    is( $stage_race->dates, $args{dates}, "dates are as expected" );
    is( $stage_race->distance, $args{distance}, "distance is as expected" );
    is( $stage_race->longest_stage->distance, $args{longest_stage}, "longest stage distance is as expected" );
    is( $stage_race->stage_summary, $args{summary}, "stage summary is as expected" );

    if ( $args{summit_finishes} ) {
        my @summit_finishes = $stage_race->summit_finishes;
        is( scalar( @summit_finishes ), $args{summit_finishes}, "summit finishes is as expected" );
    }

    if ( $args{high_point} ) {
        my $high_point = $stage_race->high_point;
        is( $high_point->name, $args{high_point}->{name}, "highest col name as expected" );
        is( $high_point->height, $args{high_point}->{height}, "highest col height as expected" );
    }
}
