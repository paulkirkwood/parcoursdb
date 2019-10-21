package Mountains::Pyrenees;

use strict;
use warnings;
use Mountains::Util qw(
    andorran_col
    french_col
    spanish_col
);

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    col_d_agnes
    cote_d_anos
    arcalis
    col_des_ares
    col_de_portet
    col_d_aspin
    col_d_aubisque
    aussieres
    ax_3_domaines 
    la_mongie
);

# A
sub col_d_agnes {
    return french_col(
        name   => "Col d'Agnes",
        height => 1570,
    );
}

sub cote_d_anos {
    return french_col(
        name             => "Cote d'Anos",
        height           => 304,
        length           => 2.1,
        average_gradient => 4.6,
    );
}

sub arcalis {
    return andorran_col(
        name   => "Andorra-Arcalis",
        height => 2240,
    );
}

sub col_des_ares {
    return french_col(
        name   => "Col des Ares",
        height => 797,
    );
}

sub col_de_portet {
    return french_col(
        name             => "Saint-Lary-Soulan (Col de Portet)",
        height           => 2215,
        length           => 16,
        average_gradient => 8.7,
    );
}

sub col_d_aspin {
    return french_col(
        name             => "Col d'Aspin",
        height           => 1490,
        length           => 12,
        average_gradient => 6.5,
    );
}

sub col_d_aubisque {
    return french_col(
        name            => "Col d'Aubisque",
        height           => 1709,
        length           => 16.6,
        average_gradient => 4.9,
    );
}

sub aussieres {
    return french_col(
        name   => "Aussières",
        height => 1057,
    );
}

sub ax_3_domaines {
    return french_col(
        name   => "Ax 3 Domaines",
        height => 1372,
    );
}

sub la_mongie {
    return french_col(
        name    => "La Mongie",
        height  => 1715,
    );
}

1;
