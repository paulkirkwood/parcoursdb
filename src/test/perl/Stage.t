use strict;
use warnings;

use DateTime;
use ParcoursDB::Col;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::Stage;
use Test::Exception;
use Test::More;

my $france = ParcoursDB::Country->new( name => "France" );
my $start  = ParcoursDB::Location->new( name => "Paris", country => $france );
my $date   = DateTime->new( year => 2018, month => 7, day => 1 );

subtest "Test Prologue" => sub {
    my $prologue = ParcoursDB::Prologue->new( start => $start, finish => $start, date => $date, distance => 8.5 );
    is( $prologue->id, "P", "Prologues are always identified as 'P'");
    ok( !$prologue->is_summit_finish, "There is no summit finish when there are no cols" );
};

subtest "Test 'Road' stage" => sub {
    my $col = ParcoursDB::Col->new( name => "La Rosiere", height => 1855, category => "C1" );

    my $stage1 = ParcoursDB::RoadStage->new(
        id       => "1",
        date     => $date,
        start    => ParcoursDB::Location->new( name => "Frontenex", country => $france ),
        finish   => ParcoursDB::Location->new( name => "La Rosiere Espace San Bernardo", country => $france ),
        distance => 110,
        cols     => { 110 => $col },
    );

    ok( $stage1->is_summit_finish, "There is a summit finish when the stage finishes at the top of the last climb" );

    my $stage2 = ParcoursDB::RoadStage->new(
        id       => "2",
        date     => $date,
        start    => ParcoursDB::Location->new( name => "Montbrison", country => $france ),
        finish   => ParcoursDB::Location->new( name => "Belleville", country => $france ),
        distance => 181,
        cols     => {
            87.5 => ParcoursDB::Col->new( category => "C3", name => "Col de Cambuse", height => 711 ),
            108  => ParcoursDB::Col->new( category => "C3", name => "Col de la Croix de Marchanpt", height => 688 ),
            121.5 => ParcoursDB::Col->new( category => "C4", name => "Cote de Regnie Durette", height => 318 ),
            136.5 => ParcoursDB::Col->new( category => "C3", name => "Col de Crie", height => 613 ),
            151   => ParcoursDB::Col->new( category => "C3", name => "Col du Fut d'Avenas", height => 740 ),
        },
    );

    ok( !$stage2->is_summit_finish, "There is no summit finish when the stage has cols but doesn't finish at the top of a climb" );
};

done_testing();
