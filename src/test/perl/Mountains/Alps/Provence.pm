package Mountains::Alps::Provence;

use strict;
use warnings;
use Mountains::Util qw( french_col );

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    mont_ventoux
);

sub mont_ventoux {
    return french_col(
        name             => "Mont Ventoux",
        height           => 1912,
        length           => 21.4,
        average_gradient => 7.6,
        maximum_gradient => 12,
    );
}

1;
