package TourDeFrance;

use Moose;

use DateTime;
use File::Slurp;
use ParcoursDB::Country::Andorra::Locations qw(
    escaldes_engordany
);
use ParcoursDB::Country::Belgium::Locations qw(
    forest
);
use ParcoursDB::Country::France::Locations qw(
    abbeville
    albertville
    amiens
    angers
    annecy
    arpajon_sur_cere
    arras
    bagneres_de_bigorre
    bagneres_de_luchon
    belfort
    bordeaux
    bourg_en_bresse
    bourg_saint_andeol
    bourg_saint_maurice
    brest
    carcassonne
    carpentras
    chalet_reynard
    chantilly
    chartres
    cherbourg_en_cotentin
    cholet
    ciney
    culoz
    dreux
    divonne_les_bains
    espelette
    gap
    granville
    grenoble
    fontenay_le_comte
    fougres
    houilles
    l_isle_jourdain
    laruns
    la_baule
    la_caverne_du_pont_d_arc
    la_rochelle
    la_roche_sur_yon
    lac_de_payolle
    le_bourg_d_oisans
    le_grand_bornand
    limoges
    lisieux
    lourdes
    lorient
    megeve
    mende
    millau
    moirans_en_montagne
    mouilleron_saint_germain
    mont_saint_michel
    montauban
    montelimar
    montpellier
    morzine
    mourenx
    mulhouse
    noirmoutier_en_l_ile
    paris
    pau
    quimper
    rennes
    revel
    roubaix
    rouen
    ruffex
    saint_gaudens
    saint_gervais_les_bains
    saint_lo
    saint_paul_trois_chateaux
    saint_pee_sur_nivelle
    sallanches
    saumur
    sarzeau
    thonon_les_bains
    toulouse
    tours
    trie_sur_basie
    utah_beach
    valenciennes
    valence
    versailles
    villar_les_dombes
);
use ParcoursDB::Country::Spain::Locations qw(
    vielha_val_d_aran
);
use ParcoursDB::Country::Switzerland::Locations qw(
    bern
);
use ParcoursDB::Country::WestGermany::Locations qw(
    felsberg
    saarlouis
);
use Mountains::MassifArmorican qw(
    mur_de_bretagne
);
use Mountains::Alps qw(
    alpe_d_huez
    finhaut_emosson
    la_rosiere
);
use Mountains::Alps::Provence qw(
    mont_ventoux
);
use Mountains::MassifCentral qw(
    le_lioran
);
use Mountains::Pyrenees qw(
    arcalis
    col_de_portet
    la_mongie
);
use ParcoursDB::StageRace::TourDeFrance::Builder;

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _1970 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TourDeFrance::Builder->new(
        date    => DateTime->new( year => 1970, month => 6, day => 26 ),
    );

    # Prologue
    $builder->out_and_back_prologue( limoges, 7.4 );

    # Stage 1
    $builder->road_stage( limoges, la_rochelle, 224 );

    # Stage 2
    $builder->road_stage( la_rochelle, angers, 200 );

    # Stages 3a & 3b
    $builder->enable_split_stages;
    $builder->out_and_back_team_time_trial( angers, 10.7 );
    $builder->road_stage( angers, rennes, 140 );
    $builder->disable_split_stages;

    # Stage 4
    $builder->road_stage( rennes, lisieux, 229 );

    # Stages 5a & 5b
    $builder->enable_split_stages;
    $builder->road_stage(lisieux, rouen, 94.5 );
    $builder->road_stage(rouen, amiens, 223 );
    $builder->disable_split_stages;

    # Stage 6
    $builder->road_stage(amiens, valenciennes, 135.5 );

    # Stages 7a & 7b
    $builder->enable_split_stages;
    $builder->road_stage(valenciennes, forest, 120 );
    $builder->out_and_back_individual_time_trial( forest, 7.2 );
    $builder->disable_split_stages;

    # Stage 8
    $builder->road_stage( ciney, felsberg, 232.5 );

    # Stage 9
    $builder->road_stage( saarlouis, mulhouse, 269.5 );

    # Stage 10
    $builder->road_stage( belfort, divonne_les_bains, 241 );

    # Stages 11a & 11b
    $builder->enable_split_stages;
    $builder->out_and_back_individual_time_trial( divonne_les_bains, 8.8 );
    $builder->road_stage(divonne_les_bains, thonon_les_bains, 139.5 );
    $builder->disable_split_stages;

    # Stage 12
    $builder->road_stage(divonne_les_bains, grenoble, 194 );

    # Stage 13
    $builder->road_stage( grenoble, gap, 194.5 );

    # Stage 14
    $builder->mountain_stage( gap );
    $builder->summit_finish( mont_ventoux, 'HC', 170 );

    # Stage 15
    $builder->road_stage( carpentras, montpellier, 140.5 );

    # Stage 16
    $builder->road_stage( montpellier, toulouse, 160 );

    # Stage 17
    $builder->road_stage( toulouse, saint_gaudens, 190 );

    # Stage 18
    $builder->mountain_stage( saint_gaudens );
    $builder->summit_finish( la_mongie, 'C1', 135.5 );

    # Stage 19
    $builder->road_stage( bagneres_de_bigorre, mourenx, 185.5 );

    # Stage 20
    $builder->enable_split_stages;
    $builder->road_stage( mourenx, bordeaux, 223.5 );
    $builder->out_and_back_individual_time_trial( bordeaux, 8.2 );
    $builder->disable_split_stages;

    # Stage 21
    $builder->road_stage( ruffex, tours, 191.5 );

    # Stage 22
    $builder->road_stage( tours, versailles, 238.5 );

    # Stage 23
    $builder->individual_time_trial( versailles, paris, 54 );

    return $builder->build;
}

sub _2016 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TourDeFrance::Builder->new(
        date    => DateTime->new( year => 2016, month => 7, day => 2 ),
    );

    # Stage 1
    $builder->road_stage( mont_saint_michel, utah_beach, 188.0 );

    # Stage 2
    $builder->road_stage( saint_lo, cherbourg_en_cotentin, 183 );

    # Stage 3
    $builder->road_stage( granville, angers, 223.5 );

    # Stage 4
    $builder->road_stage( saumur, limoges, 237.5 );

    # Stage 5
    $builder->mountain_stage( limoges );
    $builder->summit_finish( le_lioran, 'C1', 216 );

    # Stage 6
    $builder->road_stage( arpajon_sur_cere, montauban, 190.5 );

    # Stage 7
    $builder->road_stage( l_isle_jourdain, lac_de_payolle, 162.5 );

    # Stage 8
    $builder->road_stage( pau, bagneres_de_luchon, 184 );

    # Stage 9
    $builder->mountain_stage( vielha_val_d_aran );
    $builder->summit_finish( arcalis, 'C1', 184.5 );

    $builder->rest_day( arcalis );

    # Stage 10
    $builder->road_stage( escaldes_engordany, revel, 197 );

    # Stage 11
    $builder->road_stage( carcassonne, montpellier, 162.5 );

    # Stage 12
    $builder->road_stage( montpellier, chalet_reynard, 178 );

    # Stage 13
    $builder->individual_time_trial( bourg_saint_andeol, la_caverne_du_pont_d_arc, 37.5 );

    # Stage 14
    $builder->road_stage( montelimar, villar_les_dombes, 208.5 );

    # Stage 15
    $builder->road_stage( bourg_en_bresse, culoz, 160 );

    # Stage 16
    $builder->road_stage( moirans_en_montagne, bern, 209 );

    $builder->rest_day( bern );

    # Stage 17
    $builder->mountain_stage( bern );
    $builder->summit_finish( finhaut_emosson, 'C1', 184.5 );

    # Stage 18
    $builder->individual_time_trial( sallanches, megeve, 17 );

    # Stage 19
    $builder->road_stage( abbeville, saint_gervais_les_bains, 146 );

    # Stage 20
    $builder->road_stage( megeve, morzine, 146.5 );

    # Stage 21
    $builder->road_stage( chantilly, paris, 113 );

    return $builder->build;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TourDeFrance::Builder->new(
        date    => DateTime->new( year => 2018, month => 7, day => 7 ),
    );

    # Stage 1
    #$builder->c4(name => "Cote de Vix", height => 30, distance => 0.7, summit_km => 173, average_gradient => 4.2);
    $builder->road_stage( noirmoutier_en_l_ile(), fontenay_le_comte(), 201 );

    # Stage 2
    #$builder->c4(name => "Cote de Pouzauges", height => 202, distance => 1, summit_km => 28, average_gradient => 3.9);
    $builder->road_stage( mouilleron_saint_germain(), la_roche_sur_yon(), 182.5 );

    # Stage 3
    $builder->out_and_back_team_time_trial( cholet(), 35.5 );

    # Stage4
    #$builder->c4(name => "Cote de Saint-Jean-la-Poterie", height => 79, distance => 0.8, summit_km => 135.5, average_gradient => 7.8);
    $builder->road_stage( la_baule(), sarzeau(), 195 );

    # Stage 5
    #$builder->c4(name => "Cote de Kaliforn", height => 209, distance => 1.7, summit_km => 106, average_gradient => 7.1);
    #$builder->c4(name => "Cote de Trimen", height => 223, distance => 1.6, summit_km => 113, average_gradient => 5.6);
    #$builder->c3(name => "Cote de la Roche du Feu", height => 221, distance => 1.9, summit_km => 140.5, average_gradient => 6.6);
    #$builder->c3(name => "Cote de Menez Quelerc'h", height => 210, distance => 3, summit_km => 159.5, average_gradient => 6.2);
    #$builder->c3(name => "Cote de la montagne de Locranan",
    #             height => 233,
    #             distance => 2.2,
    #             summit_km => 184.5,
    #             average_gradient => 5.9);
    $builder->road_stage( lorient(), quimper(), 204.5 );

    # Stage 6
    $builder->mountain_stage( brest() );
    #$builder->c3(name => "Cote de Ploudiry", summit_km => 44, height => 128, distance => 1.5, average_gradient => 7);
    #$builder->c4(name => "Cote de Roc'h Trevezel", summit_km => 68.5, height => 340, distance => 2.5, average_gradient => 3.5);
    #$builder->c3(name => "Mur-de-Bretagne", height => 293, summit_km => 165, distance => 2, average_gradient => 6.9);
    #$builder->c3(name => "Mur-de-Bretagne", height => 293, summit_km => 181, distance => 2, average_gradient => 6.9);
    $builder->summit_finish( mur_de_bretagne(), 'C3', 181 );

    # Stage 7
    #$builder->c4(name => "Cote du Buisson de Perseigne", summit_km => 120, height => 235, distance => 1.5, average_gradient => 6.9);
    $builder->road_stage( fougres(), chartres(), 231 );

    # Stage 8
    #$builder->c4(name => "Cote de Pacy-sur-Eure", summit_km => 35, height => 135, distance => 2, average_gradient => 4.3);
    #$builder->c4(name => "Cote de Feuquerolles", height => 134, summit_km => 71.5, distance => 2.3, average_gradient => 4.3);
    $builder->road_stage( dreux(), amiens(), 181 );

    # Stage 9
    $builder->road_stage( arras(), roubaix(), 156.5 );

    $builder->rest_day( annecy() );

    # Stage 10
    #$builder->c4(name => "Col de Bluffy", summit_km => 19, height => 622, distance => 1.5, average_gradient => 5.6);
    #$builder->c1(name => "Col de la Croix Fry", summit_km => 43, height => 1477, distance => 11.3, average_gradient => 7);
    #$builder->hc(name => "Montee du plateau des Glieres", summit_km => 68.5, height => 1390, distance => 6, average_gradient => 11.2);
    #$builder->c1(name => "Col de Romme", height => 1297, distance => 8.8, summit_km => 130, average_gradient => 8.9);
    #$builder->c1(name => "Col de la Colombiere", height => 1618, distance => 7.5, summit_km => 144, average_gradient => 8.5);
    $builder->road_stage( annecy(), le_grand_bornand(), 158.5 );

    # Stage 11
    $builder->mountain_stage( albertville() );
    #$builder->hc(name => "Montee de Bisanne", summit_km => 26, height => 1723, distance => 12.4, average_gradient => 8.2);
    #$builder->hc(name => "Col du Pre", height => 1748, summit_km => 57.5, distance => 12.6, average_gradient => 7.7);
    #$builder->c2(name => "Cormet de Roselend", height => 1968, summit_km => 70, distance => 5.7, average_gradient => 6.5);
    #$builder->c1(name => "La Rosiere", height => 1855, distance => 17.6, summit_km => 108.5, average_gradient => 5.8);
    $builder->summit_finish( la_rosiere(), 'C1', 108.5 );

    # Stage 12
    $builder->mountain_stage( bourg_saint_maurice() );
    #$builder->hc(name => "Col de la Madeleine", summit_km => 53.5, height => 2000, distance => 25.3, average_gradient => 6.2);
    #$builder->c2(name => "Lacets de Montvernier", summit_km => 83, height => 782, distance => 3.4, average_gradient => 8.2);
    #$builder->hc(name => "Col de la Croix de Fer", height => 2067, summit_km => 121, distance => 29, average_gradient => 5.2);
    #$builder->hc(name => "Alpe d'Huez", height => 1850, distance => 13.8, summit_km => 175.5, average_gradient => 8.1);
    $builder->summit_finish( alpe_d_huez(), 'HC', 175.5 );

    # Stage 13
    #$builder->c3(name => "Cote de Brie", summit_km => 32.5, height => 450, distance => 2.4, average_gradient => 6.9);
    #$builder->c4(name => "Cote de Sainte-Eulalie", summit_km => 109.5, height => 298, distance => 1.5, average_gradient => 4.9);
    $builder->road_stage( le_bourg_d_oisans(), valence(), 169.5 );

    # Stage 14
    #$builder->c4(name => "Cote du Grand Chataignier", summit_km => 81, height => 321, distance => 1, average_gradient => 7.4);
    #$builder->c2(name => "Col de la Croix de Berthel", summit_km => 129, height => 1088, distance => 9.1, average_gradient => 5.3);
    #$builder->c3(name => "Col du Pont sans Eau", height => 1084, summit_km => 142, distance => 3.3, average_gradient => 6.3);
    #$builder->c2(name => "Cote de la Croix Neuve", height => 1055, distance => 3, summit_km => 186.5, average_gradient => 10.2);
    $builder->road_stage( saint_paul_trois_chateaux(), mende(), 188 );

    # Stage 15
    #$builder->c3(name => "Cote de Luzencon", summit_km => 9, height => 538, distance => 3.1, average_gradient => 5.9);
    #$builder->c2(name => "Col de Sie", summit_km => 64.5, height => 928, distance => 10.2, average_gradient => 4.9);
    #$builder->c1(name => "Pic de Nore", height => 1205, summit_km => 140, distance => 12.3, average_gradient => 6.3);
    $builder->road_stage( millau(), carcassonne(), 181.5 );

    $builder->rest_day( lourdes() );

    # Stage 16
    #$builder->c4(name => "Cote de Fanjeaux", summit_km => 25, height => 348, distance => 2.4, average_gradient => 4.9);
    #$builder->c4(name => "Cote de Pamiers", height => 417, summit_km => 72, distance => 2.3, average_gradient => 5.8);
    #$builder->c2(name => "Col de Portet d'Aspet", height => 1069, summit_km => 155.5, distance => 5.4, average_gradient => 7.1);
    #$builder->c1(name => "Col de Mente", height => 1349, summit_km => 171, distance => 6.9, average_gradient => 8.1);
    #$builder->c1(name => "Col du Portillon", height => 1292, summit_km => 208, distance => 8.3, average_gradient => 7.1);
    $builder->road_stage( carcassonne(), bagneres_de_luchon(), 218 );

    # Stage 17
    $builder->mountain_stage( bagneres_de_luchon() );
    #$builder->c1(name => "Monte de Peyragudes", height => 1645, distance => 14.9, summit_km => 15, average_gradient => 6.7);
    #$builder->c1(name => "Col de Val Louron-Azet", height => 1580, summit_km => 37, distance => 7.4, average_gradient => 8.3);
    #$builder->hc(name => "Col du Portet", height => 2215, distance => 16, summit_km => 65, average_gradient => 8.7);
    $builder->summit_finish( col_de_portet(), 'HC', 65 );

    # Stage 18
    #$builder->c4(name => "Cote de Madiran", summit_km => 53.5, height => 260, distance => 1.2, average_gradient => 7);
    #$builder->c4(name => "Cote d'Anos", height => 304, summit_km => 152.5, distance => 2.1, average_gradient => 4.6);
    $builder->road_stage( trie_sur_basie(), pau(), 171 );

    # Stage 19
    #$builder->c4(name => "Cote de Loucrup", summit_km => 7, height => 532, distance => 1.8, average_gradient => 7.2);
    #$builder->c4(name => "Cote de Capvern-les-Bains", summit_km => 40, height => 604, distance => 3.4, average_gradient => 5.1);
    #$builder->c1(name => "Col d'Aspin", height => 1490, distance => 12, summit_km => 78.5, average_gradient => 6.5);
    #$builder->hc(name => "Col du Tourmalet", height => 2115, distance => 17.1, summit_km => 108, average_gradient => 7.3);
    #$builder->c2(name => "Col de Borderes", height => 1156, distance => 8.6, summit_km => 159.5, average_gradient => 5.8);
    #$builder->hc(name => "Col d'Aubisque", height => 1709, distance => 16.6, summit_km => 180.5, average_gradient => 4.9);
    $builder->road_stage( lourdes(), laruns(), 200.5 );

    # Stage 20
    $builder->individual_time_trial( saint_pee_sur_nivelle(), espelette(), 31 );

    # Stage 21
    $builder->road_stage( houilles(), paris(), 116 );

    return $builder->build;
}

no Moose;
1;
