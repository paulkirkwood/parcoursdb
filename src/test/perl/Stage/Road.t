use strict;
use warnings;

use DateTime;
use ParcoursDB::France qw( paris tours );
use ParcoursDB::Stage::Road;
use Test::More;

my $road_stage = ParcoursDB::Stage::Road->new(
    date     => DateTime->new( year => 2018, month => 7, day => 1 ),
    distance => 255,
    id       => "1",
    start    => paris(),
    finish   => tours(),
);

is( $road_stage->id, "1", "'id' as expected" );
is( $road_stage->start->fqnc, "Paris (France)", "'start' is as expected" );
is( $road_stage->finish->fqnc, "Tours (France)", "'finish' is as expected" );
is( $road_stage->description, "Road stage", "'description' as expected" );

done_testing();
