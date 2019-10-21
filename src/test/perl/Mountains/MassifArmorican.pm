package Mountains::MassifArmorican;

use strict;
use warnings;
use Mountains::Util qw(
    french_col
);

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    cote_de_kaliforn
    cote_de_la_montagne_de_locranan
    cote_de_menez_quelerc_h
    mur_de_bretagne
    cote_de_ploudiry
    cote_de_la_roche_du_feu
    cote_de_roc_h_trevezel
    cote_de_trimen
);

sub cote_de_kaliforn {
    return french_col(
        name             => "Cote de Kaliforn",
        height           => 209,
        length           => 1.7,
        average_gradient => 7.1,
    );
}

sub cote_de_la_montagne_de_locranan {
    return french_col(
        name             => "Cote de la montagne de Locranan",
        height           => 233,
        length           => 2.2,
        average_gradient => 5.9,
    );
}

sub cote_de_menez_quelerc_h {
    return french_col(
        name             => "Cote de Menez Quelerc'h",
        height           => 210,
        length           => 3,
        average_gradient => 6.2,
    );
}

sub mur_de_bretagne {
    return french_col(
        name             => "Mûr-de-Bretagne",
        height           => 293,
        length           => 2,
        average_gradient => 6.9,
    );
}

sub cote_de_ploudiry {
    return french_col(
        name             => "Cote de Ploudiry",
        height           => 128,
        length           => 1.5,
        average_gradient => 7,
    );
}

sub cote_de_la_roche_du_feu {
    return french_col(
        name             => "Cote de la Roche du Feu",
        height           => 221,
        length           => 1.9,
        average_gradient => 6.6,
    );
}

sub cote_de_roc_h_trevezel {
    return french_col(
        name             => "Cote de Roc'h Trevezel",
        height           => 340,
        length           => 2.5,
        average_gradient => 3.5,
    );
}

sub cote_de_trimen {
    return french_col(
        name             => "Cote de Trimen",
        height           => 233,
        length           => 1.6,
        average_gradient => 5.6,
    );
}

1;
