use strict;
use warnings;

use DateTime;
use ParcoursDB::France qw( cholet );
use ParcoursDB::Stage::TeamTimeTrial;
use Test::More;

my $ttt = ParcoursDB::Stage::TeamTimeTrial->new(
    date     => DateTime->new( year => 2018, month => 7, day => 1 ),
    distance => 35,
    id       => "1",
    start    => cholet(),
    finish   => cholet(),
);

is( $ttt->id, "1", "'id' as expected" );
is( $ttt->start->fqnc, "Cholet (France)", "'start' is as expected" );
is( $ttt->finish->fqnc, "Cholet (France)", "'finish' is as expected" );
is( $ttt->description, "Team time trial", "'description' as expected" );

done_testing();
