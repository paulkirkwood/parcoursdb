package Mountains::MassifCentral;

use strict;
use warnings;
use Mountains::Util qw(
    french_col
);

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    le_lioran
);

# L
sub le_lioran {
    return french_col(
        name    => "Le Lioran",
        height  => 1326,
    );
}

1;
