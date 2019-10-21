use strict;
use warnings;

use Data::Dumper;
use ParcoursDB::Classic::GentWevelgem::Factory;
use Test::More;

my $factory = ParcoursDB::Classic::GentWevelgem::Factory->new;

test_edition( $_ ) foreach ( 1934 .. 1939, 1945 .. 2019 );

done_testing();

sub test_edition {
    my ( $year ) = @_;

    subtest "Gent-Wevelgem [$year]" => sub {
        my $edition = $factory->edition( $year );
        is( $edition->name, "Gent-Wevelgem", "'name' is as expected" );
        is( $edition->start->fqnc, "Ghent (Belgium)", "'start' is as expected" );
        is( $edition->finish->fqnc, "Wevelgem (Belgium)", "'finish' is as expected" );
    };
}
