package Mountains::Alps;

use strict;
use warnings;
use Mountains::Util qw(
    french_col 
    italian_col
    swiss_col
);

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    alpe_d_huez
    col_du_pre
    cormet_de_roselend
    finhaut_emosson
    la_rosiere
    lans_en_vercors
    monte_de_bisanne
    saint_gervais_mont_blanc
    valmorel
);

sub alpe_d_huez {
    return french_col(
        name             => "Alpe d'Huez",
        height           => 1850,
        length           => 13.8,
        average_gradient => 8.1,
    );
}

sub col_du_pre {
    return french_col(
        name   => "Col du Pre",
        height => 1748,
    );
}

sub cormet_de_roselend {
    return french_col(
        name => "Cormet de Roselend",
        height => 1968,
    );
}

sub la_rosiere {
    return french_col(
        name => "La Rosiere",
        height  => 1855,
        length  => 17.6,
        average_gradient => 5.8,
    );
}

sub finhaut_emosson {
    return swiss_col(
        name   => "Finhaut-Emosson",
        height => 1960,
    );
}

sub lans_en_vercors {
    return french_col(
        name    => "Lans-en-Vercors",
        height  => 1409,
    );
}

sub monte_de_bisanne {
    return french_col(
        name    => "Monte de Bisanne",
        height  => 1723,
    );
};

sub saint_gervais_mont_blanc {
    return french_col(
        name    => "Saint-Gervais Mont-Blanc",
        height  => 970,
    );
}

sub valmorel {
    return french_col(
        name    => "Valmorel",
        height  => 1369,
    );
}

1;
