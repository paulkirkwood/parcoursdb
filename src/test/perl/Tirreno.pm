package Tirreno;

use Moose;

use DateTime;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::StageRace::Builder;

my $name = "Tirreno Adriatico";
my $italy = ParcoursDB::Country->new( name => "Italy" );

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => $italy,
        date    => DateTime->new( year => 2018, month => 3, day => 3 ),
        name    => $name,
    );

    #
    # Stage 1
    #
    $builder->team_time_trial( start => "Lido di Camaiore", distance => 21.5);

    #
    # Stage 2
    #
    $builder->road_stage(start => "Camaiore", finish => "Follonica", distance => 172);

    #
    # Stage 3
    #
    $builder->uncategorised_col(name => "Roccastrada", height => 377, summit_km => 35.7);
    $builder->uncategorised_col(name => "Passo del Lume Spento", height => 631, summit_km => 76.8);
    $builder->uncategorised_col(name => "La Foce", height => 551, summit_km => 113.8);
    $builder->uncategorised_col(name => "Trevi", height => 425, summit_km => 239);
    $builder->road_stage(start => "Follonica", finish => "Trevi", distance => 239);

    #
    # Stage 4
    #
    $builder->uncategorised_col(name => "San Ginesio", height => 638, summit_km => 137.6);
    $builder->uncategorised_col(name => "Gualdo", height => 651, summit_km => 151.3);
    $builder->uncategorised_col(name => "Penna San Giovanni", height => 599, summit_km => 170.9);
    $builder->uncategorised_col(name => "Sarnano Sassotetto", height => 1335, summit_km => 219);
    $builder->road_stage(start => "Foligno", finish => "Sarnano Sassotetto", distance => 219);

    #
    # Stage 5
    #
    $builder->uncategorised_col(name => "Montelupone", height => 251, summit_km => 49.9);
    $builder->uncategorised_col(name => "Osimo", height => 265, summit_km => 117.8);
    $builder->uncategorised_col(name => "Filottrano", height => 245, summit_km => 142.7);
    $builder->uncategorised_col(name => "Filottrano", height => 245, summit_km => 158.8);
    $builder->uncategorised_col(name => "Filottrano", height => 245, summit_km => 178);
    $builder->road_stage(start => "Castelraimondo", finish => "Filottrano", distance => 178);

    #
    # Stage 6
    #
    $builder->uncategorised_col(name => "Offagna", height => 291, summit_km => 36.2);
    $builder->uncategorised_col(name => "Ostra", height => 188, summit_km => 75.8);
    $builder->road_stage(start => "Numana", finish => "Fano", distance => 153);

    #
    # Stage 7
    #
    $builder->individual_time_trial( start => "San Benedetto del Tronto", distance => 10.1);

    return $builder->build;
}

no Moose;
1;
