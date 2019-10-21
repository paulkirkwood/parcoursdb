use strict;
use warnings;

use DateTime;
use ParcoursDB::France qw( paris );
use ParcoursDB::Stage::Prologue;
use Test::More;

my $prologue = ParcoursDB::Stage::Prologue->new(
    date     => DateTime->new( year => 2018, month => 7, day => 1 ),
    distance => 8.5,
    start    => paris(),
    finish   => paris(),
);

is( $prologue->id, "P", "Prologues are always identified as 'P'");
is( $prologue->start->fqnc, "Paris (France)", "'start' is as expected" );
is( $prologue->finish->fqnc, "Paris (France)", "'finish' is as expected" );
is( $prologue->description, "Individual time trial", "'description' as expected" );

done_testing();
