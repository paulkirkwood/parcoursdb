package Dauphine;

use Moose;

use DateTime;
use File::Slurp;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::StageRace::Builder;

my $name = 'Criterium du Dauphine';

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => ParcoursDB::Country->new( name => "France" ),
        date    => DateTime->new( year => 2018, month => 6, day => 3 ),
        name    => $name,
    );

    #
    # Prologue
    #
    $builder->prologue(start => "Valence", distance => 6.6 );

    #
    # Stage 1
    #
    $builder->c2( name => "Cote de Leyrisse", height => 582, summit_km => 9);
    $builder->c3( name => "Col de Desaignes", height => 704, summit_km => 46);
    $builder->c3( name => "Cote de Saint-Agreve", height => 1052, summit_km => 54);
    $builder->c4( name => "Cote de Terriere", height => 837, summit_km => 89.5);
    $builder->c4( name => "Cote de la Croix de Martet", height => 563, summit_km => 139);
    $builder->c4( name => "Cote du Barrage de Grangent", height => 494, summit_km => 163);
    $builder->c4( name => "Cote du Barrage de Grangent", height => 494, summit_km => 175);
    $builder->road_stage(start => "Valence", finish => "Saint-Just-Saint-Rambert", distance => 179 );

    #
    # Stage 2
    #
    $builder->c3(name => "Col de Cambuse", height => 711, summit_km => 87.5);
    $builder->c3(name => "Col de la Croix de Marchanpt", height => 688, summit_km => 108);
    $builder->c4(name => "Cote de Regnie Durette", height => 318, summit_km => 121.5);
    $builder->c3(name => "Col de Crie", height => 613, summit_km => 136.5);
    $builder->c3(name => "Col du Fut d'Avenas", height => 740, summit_km => 151);
    $builder->road_stage(start => "Montbrison", finish => "Belleville", distance => 181);

    #
    # Stage 3
    #
    $builder->team_time_trial(start => "Pont-de-Vaux", finish => "Louhans-Chateaurenaud", distance => 35);

    #
    # Stage 4
    #
    $builder->c4(name => "Col de Toutes Aures", height => 620, summit_km => 102);
    $builder->hc(name => "Col du Mont Noir", height => 1421, summit_km => 143.5);
    $builder->c2(name => "Lans-en-Vercors", height => 1409, summit_km => 181);
    $builder->road_stage(start => "Chazey-sur-Ain", finish => "Lan-en-Vercors", distance => 181);

    #
    # Stage 5
    #
    $builder->c2(name => "Cote de Naysord", height => 756, summit_km => 4);
    $builder->c2(name => "Col des Mouilles", height => 1041, summit_km => 19.5);
    $builder->hc(name => "Valmorel", height => 1369, summit_km => 130);
    $builder->road_stage(start => "Grenoble", finish => "Valmorel", distance => 130);

    #
    # Stage 6
    #
    $builder->hc(name => "Monte de Bisanne", height => 1723, summit_km => 27.5);
    $builder->hc(name => "Col du Pre", height => 1748, summit_km => 59.5);
    $builder->c2(name => "Cormet de Roselend", height => 1968, summit_km => 72);
    $builder->c1(name => "La Rosiere", height => 1855, summit_km => 110);
    $builder->road_stage(start => "Frontenex", finish => "La Rosiere Espace San Bernardo", distance => 110);

    #
    # Stage 7
    #
    $builder->c1(name => "Cormet de Roselend", height => 1968, summit_km => 43);
    $builder->c3(name => "Cote de la route des Villes", height => 1078, summit_km => 64.5);
    $builder->c1(name => "Col des Saisies", height => 1663, summit_km => 88.5);
    $builder->c1(name => "Cote des Amerands", height => 888, summit_km => 126.5);
    $builder->c1(name => "Montee du Bettex", height => 1372, summit_km => 136);
    $builder->road_stage(start => "Moutiers", finish => "Saint-Gervais Mont Blanc", distance => 136);

    return $builder->build;
}

no Moose;
1;
