package Dauphine;

use Moose;
use Data::Dumper;
use DateTime;
use ParcoursDB::Country::France::Locations qw(
    belleville
    bourg_les_valence
    briancon
    chazey
    dijon
    faverges
    frontenex
    gap
    grenoble
    louhans
    montbrison
    moutiers
    nancy
    pont_de_vaux
    saint_etienne
    saint_francois_longchamp
    saint_just
    tournus
    valence
);

use Mountains::Alps qw(
    col_du_pre
    cormet_de_roselend
    la_rosiere
    lans_en_vercors
    monte_de_bisanne
    saint_gervais_mont_blanc
    valmorel
);
use Mountains::Alps::Provence qw(
    mont_ventoux
);
use ParcoursDB::StageRace::Dauphine::Builder;

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _2009 {

    my $builder = ParcoursDB::StageRace::Dauphine::Builder->new(
        date    => DateTime->new( year => 2009, month => 6, day => 7 ),
    );

    # Stage 1
    $builder->out_and_back_individual_time_trial( nancy(), 12.1 );

    # Stage 2
    $builder->road_stage( nancy(), dijon(), 228);

    # Stage 3
    $builder->road_stage( tournus(), saint_etienne(), 182);

    # Stage 4
    $builder->individual_time_trial( bourg_les_valence(), valence(), 42.4);

    # Stage 5
    $builder->mountain_stage( valence() );
    $builder->summit_finish(mont_ventoux(), 'HC', 154);

    # Stage 6
    $builder->road_stage( gap(), briancon(), 106);

    # Stage 7
    $builder->road_stage( briancon(), saint_francois_longchamp(), 157);

    # Stage 8
    $builder->road_stage( faverges(), grenoble(), 146);

    return $builder->build;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Dauphine::Builder->new(
        date    => DateTime->new( year => 2018, month => 6, day => 3 ),
    );

    # Prologue
    $builder->out_and_back_prologue( valence(), 6.6 );

    # Stage 1
    #$builder->c2( name => "Cote de Leyrisse", height => 582, summit_km => 9);
    #$builder->c3( name => "Col de Desaignes", height => 704, summit_km => 46);
    #$builder->c3( name => "Cote de Saint-Agreve", height => 1052, summit_km => 54);
    #$builder->c4( name => "Cote de Terriere", height => 837, summit_km => 89.5);
    #$builder->c4( name => "Cote de la Croix de Martet", height => 563, summit_km => 139);
    #$builder->c4( name => "Cote du Barrage de Grangent", height => 494, summit_km => 163);
    #$builder->c4( name => "Cote du Barrage de Grangent", height => 494, summit_km => 175);
    $builder->road_stage( valence(), saint_just(), 179);

    # Stage 2
    #$builder->c3(name => "Col de Cambuse", height => 711, summit_km => 87.5);
    #$builder->c3(name => "Col de la Croix de Marchanpt", height => 688, summit_km => 108);
    #$builder->c4(name => "Cote de Regnie Durette", height => 318, summit_km => 121.5);
    #$builder->c3(name => "Col de Crie", height => 613, summit_km => 136.5);
    #$builder->c3(name => "Col du Fut d'Avenas", height => 740, summit_km => 151);
    $builder->road_stage( montbrison(), belleville(), 181 );

    # Stage 3
    $builder->team_time_trial( pont_de_vaux(),  louhans(), 35 );

    # Stage 4
    #$builder->c4(name => "Col de Toutes Aures", height => 620, summit_km => 102);
    #$builder->hc(name => "Col du Mont Noir", height => 1421, summit_km => 143.5);
    #$builder->c2(name => "Lans-en-Vercors", height => 1409, summit_km => 181);
    #$builder->road_stage(start => "Chazey-sur-Ain", finish => "Lan-en-Vercors", distance => 181);
    $builder->mountain_stage( chazey() );
    $builder->summit_finish( lans_en_vercors(), 'C2', 181);

    # Stage 5
    #$builder->c2(name => "Cote de Naysord", height => 756, summit_km => 4);
    #$builder->c2(name => "Col des Mouilles", height => 1041, summit_km => 19.5);
    #$builder->hc(name => "Valmorel", height => 1369, summit_km => 130);
    $builder->mountain_stage( grenoble() );
    $builder->summit_finish( valmorel(), 'HC', 130);

    # Stage 6
    $builder->mountain_stage( frontenex() );
    $builder->hc_col( monte_de_bisanne(), 27.5 );
    $builder->hc_col( col_du_pre(), 59.5 );
    $builder->hc_col( cormet_de_roselend(), 72 );
    $builder->summit_finish( la_rosiere(), 'C1', 110 );

    #
    # Stage 7
    #
    #$builder->c1(name => "Cormet de Roselend", height => 1968, summit_km => 43);
    #$builder->c3(name => "Cote de la route des Villes", height => 1078, summit_km => 64.5);
    #$builder->c1(name => "Col des Saisies", height => 1663, summit_km => 88.5);
    #$builder->c1(name => "Cote des Amerands", height => 888, summit_km => 126.5);
    #$builder->c1(name => "Montee du Bettex", height => 1372, summit_km => 136);
    $builder->mountain_stage( moutiers() );
    $builder->summit_finish( saint_gervais_mont_blanc(), 'C1', 136 );

    return $builder->build;
}

1;
