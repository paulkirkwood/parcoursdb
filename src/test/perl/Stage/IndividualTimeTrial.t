use strict;
use warnings;

use DateTime;
use ParcoursDB::France qw( lac_de_vassiviere );
use ParcoursDB::Stage::IndividualTimeTrial;
use Test::More;

my $itt = ParcoursDB::Stage::IndividualTimeTrial->new(
    date     => DateTime->new( year => 2018, month => 7, day => 1 ),
    distance => 55,
    id       => "19",
    start    => lac_de_vassiviere(),
    finish   => lac_de_vassiviere(),
);

is( $itt->id, "19", "'id' as expected" );
is( $itt->start->fqnc, "Lac de Vassiviere (France)", "'start' is as expected" );
is( $itt->finish->fqnc, "Lac de Vassiviere (France)", "'finish' is as expected" );
is( $itt->description, "Individual time trial", "'description' as expected" );

done_testing();
