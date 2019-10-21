package ParcoursDB::Country::France::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    abbeville
    agde
    agen
    aigurande
    aime
    aix_en_provence
    aix_les_bains
    ajaccio
    albertville
    albi
    alencon
    ales
    alfortville
    altkirch
    amiens
    ancenis
    angers
    angouleme
    annecy
    annemasse
    annonay_davezieux
    antibes
    antony_parc_de_sceaux
    arbois
    arc_et_senans
    arcachon
    arenberg_porte_du_hainaut
    argeles_gazost
    argeles_sur_mer
    argentan
    argenteuil
    ariege
    armentieres
    arpajon
    arpajon_sur_cere
    arras
    aubagne
    aubenas
    aubisque
    auch
    aulay
    aulnay_sous_bois
    aurillac
    autodrome_de_montlhery
    autrans
    autun
    auxerre
    avesnes_sur_helpe
    avignon
    avranches
    ax_les_thermes
    bagneres_de_bigorre
    bagneres_de_luchon
    bagnoles_de_l_orne
    ballon_d_alsace
    barcelonette
    bar_le_duc
    bastia
    bayonne
    bazas
    beauvais
    bedoin
    belfort
    bellegarde_sue_valserine
    belleville
    bergerac
    besancon
    besse
    besse_en_chandesse
    bethune
    beziers
    biarritz
    blagnac
    blain
    blaye_les_mines
    blois
    bobigny
    bondy
    bonneval
    bordeaux
    boulogne_billancourt
    boulogne_sur_mer
    bourg_de_peage
    bourg_en_bresse
    bourg_les_valence
    bourg_madame
    bourg_saint_andeol
    bourg_saint_maurice
    bourges
    bourgoin
    bourgoin_jallieu
    brest
    bretigny_sur_orge
    briancon
    brignoles
    brioude
    brive
    brive_la_gaillarde
    bron
    caen
    cagnes_sur_mer
    cahors
    calais
    calvi
    cambo_les_bains
    cambrai
    cancale
    cannes
    cap_d_agde
    cap_d_agne
    cap_decouverte
    cap_frehel
    captieux
    carcassonne
    carhaix
    carmaux
    carnon_plage
    carpentras
    castelnaudary
    castelsarrasin
    castillon_la_bataille
    castres
    cergy_pontoise
    cerilly
    chablis
    chalet_reynard
    challans
    chalon_sur_saone
    chalons_sur_marne
    chambery
    chambord
    chamonix
    champagnole
    chaumont
    chantilly
    chantonnay
    charleville
    charleville_mezieres
    chartres
    chassieu
    chateau_thierry
    chateaubriant
    chateaulin
    chateauroux
    chatel
    chatel_guyon
    chatellerault
    chatou
    chaumeil
    chaville
    chazey
    cherbourg
    cherbourg_en_cotentin
    cholet
    chorges
    ciney
    circuit_des_essarts
    circuit_de_rouen_les_essarts
    circuit_de_la_prairie
    clermont_ferrand
    cluses
    cognac
    colmar
    colomiers
    commercy
    compiegne
    concarneau
    corbeil_essonnes
    correze
    cosne_sur_loire
    creteil
    cugnaux
    culoz
    damazan
    dax
    deauville
    dieppe
    digne
    digne_les_bains
    dijon
    dinan
    dinard
    disneyland_paris
    divonne_les_bains
    dole
    domaine_du_rouret
    dordogne
    douai
    draguignan
    dreux
    drome
    dunkerque
    embrun
    epernay
    epinal
    epnay_sous_senart
    espelette
    etampes
    eurotunnel
    evian
    evian_les_bains
    evreux
    evry
    eymet
    faverges
    fecamp
    figeac
    flers
    fleurance
    foix
    font_romeu_odeillo_via
    fontaine
    fontaine_au_pire
    fontainebleau
    fontenay_le_comte
    fontenay_sous_bois
    forges_les_eaux
    fougeres
    fougres
    fromentine
    frontenex
    frontignan_la_peyrade
    futuroscope
    gaillac
    gaillard
    gap
    gerardmer
    gerardmer_las_mauselaine
    gex
    givors
    gourette
    gourette_col_d_aubisque
    granville
    grenoble
    gruissan
    gueret
    gueugnon
    guillestre
    hendaye
    houilles
    hyeres
    ile_d_oleron
    isola
    issoire
    issoudun
    jaunay_clan
    jausiers
    joigny
    joinville
    jonzac
    l_isle_d_abeau
    l_isle_jourdain
    la_baule
    le_bourg_d_oisans
    la_caverne_du_pont_d_arc
    la_chataigneraie
    la_chatre
    la_defense
    la_ferte_sous_jouarre
    la_fouillouse
    la_grand_motte
    la_grande_motte
    la_guerche_de_bretagne
    la_haie_fouassiere
    la_mure
    la_roche_sur_yon
    la_rochelle
    la_tour_du_pin
    la_toussuire_les_sybelles
    labastide_d_armagnac
    lacanau
    lac_de_madine
    lac_de_payolle
    lac_de_vassiviere
    lac_saint_point
    laissac_severac_l_eglise
    lamballe
    lanester
    langon
    lannemezan
    lannion
    laon
    laplume
    laruns
    laval
    lavalanet
    lavaur
    lavelanet
    le_barcares
    le_blanc
    le_creusot
    le_grand_bornand
    le_havre
    le_mans
    le_monetier_les_bains
    le_perreux_sur_marne
    le_puy
    le_puy_du_fou
    le_puy_en_velay
    le_revard
    le_touquet
    le_touquet_paris_plage
    le_treport
    les_echelles
    les_essarts
    les_sables_d_olonne
    levallois_perret
    lezat_sur_leze
    lezignan_corbieres
    libourne
    lievin
    lille
    lille_metropole
    limoges
    limoux
    lisieux
    livarot
    lodeve
    longjumeau
    longwy
    lons_le_saunier
    lorient
    loudenvielle
    loudon
    louhans
    lourdes
    louvroil
    luchon
    lucon
    lugny
    luneville
    luz_saint_sauveur
    lyon
    machecoul
    macon
    malo_les_bains
    manosque
    marcoussis
    marennes
    marseille
    martigues
    mauberge
    maubourguet_pays_du_val_d_adour
    mayenne
    mazamet
    maze_montgeoffroy
    meaux
    megeve
    melun
    mende
    menton
    merlin_plage
    mers_les_bains
    metz
    meudon
    meyrignac_l_eglise
    millau
    miramas
    modane
    moirans_en_montagne
    mont_de_marsan
    mont_des_alouettes
    mont_saint_michel
    montaigu
    montargis
    montauban
    montbeliard
    montbrison
    montceau_les_mines
    montelimar
    montereau_fault_yonne
    montgeron
    montlhery
    montlucon
    montpellier
    montpon_menesterol
    montreuil
    morcenx
    morlaix
    morzine
    morzine_avoriaz
    mouilleron_saint_germain
    mourenx
    moutiers
    mulhouse
    muret
    nancy
    nanterre
    nantes
    nantua
    narbonne
    nay
    nemours
    neufchatel_en_bray
    neuville_de_poitou
    nevers
    nice
    nimes
    niort
    nogent_sur_marne
    nogent_sur_oise
    noirmoutier_en_l_ile
    noisy_le_sec
    nuits_saint_georges
    obernai
    olonne_sur_mer
    oloron_sainte_marie
    orange
    orchies
    orleans
    orsonville
    orthez
    oyonnax
    palaiseau
    pamiers
    pantin
    paris
    passage_du_gois
    pau
    pauillac
    perigueux
    peronne
    perpignan
    perros_guirec
    peyrehorade
    pla_d_adet
    plouay
    plumelec
    poitiers
    pont_audemer
    pont_de_vaux
    pont_l_eveque
    pontarlier
    pontchateau
    pontoise
    pornic
    pornichet
    porrentruy
    porte_maillot
    porto_vecchio
    pouilly_en_auxois
    prades
    prapoutel
    privas
    provence
    quimper
    rambouillet
    redon
    regnie_durette
    reims
    renaze
    rennes
    revel
    roanne
    rochefort
    rodez
    romans_sur_isere
    roquefort_sur_soulzon
    roscoff
    rossignol_voiron
    roubaix
    rouen
    royan
    ruelle_sur_tourve
    ruffex
    rungis
    sable_sur_sarthe
    saint_amand_les_eaux
    saint_amand_montrond
    saint_brieuc
    saint_denis
    saint_dier_d_auvergne
    saint_dizier
    saint_emilion
    saint_etienne
    saint_fargeau
    saint_flour
    saint_francois_longchamp
    saint_galmier
    saint_gaudens
    saint_germain
    saint_germain_en_laye
    saint_gervais
    saint_gervais_les_bains
    saint_gildas_des_bois
    saint_gilles_croix_de_vie
    saint_girons
    saint_gregoire
    saint_herblain
    saint_hilaire_du_harcouet
    saint_jean_de_maurienne
    saint_jean_de_monts
    saint_julien_en_genevois
    saint_just
    saint_lary_pla_d_adet
    saint_lary_soulan
    saint_lary_soulan_pla_d_adet
    saint_leonard_de_noblat
    saint_lo
    saint_maixent_l_ecole
    saint_malo
    saint_martin_de_landelles
    saint_meen_le_grand
    saint_nazaire
    saint_omer
    saint_orens_de_gameville
    saint_paul_trois_chateaux
    saint_pee_sur_nivelle
    saint_pol_de_leon
    saint_pourcain_sur_sioule
    saint_priest
    saint_quentin
    saint_quentin_en_yvelines
    saint_raphael
    saint_trivier_sur_moignans
    saint_valery_en_caux
    sainte_foy_la_grande
    sainte_genevieve_des_bois
    saintes
    salies_de_bearn
    sallanches
    salon_de_provence
    samatan
    santennay
    sarran
    sarrebourg
    sarzeau
    saumur
    sauternes
    savines_le_lac
    sceaux
    sedan
    seignosse_le_penon
    semnoz
    semur_en_auxois
    senlis
    sens
    serre_chevalier
    sete
    seurre
    sevres
    sisteron
    soissons
    station_des_rousses
    strasbourg
    suresnes
    tallard
    tarascon_sur_ariege
    tarbes
    thionville
    thonon_les_bains
    thuir
    tignes
    tomblaine
    tonnerre
    toulon
    toulouse
    tournus
    tours
    trelissac
    trets
    trie_sur_basie
    trouville
    troyes
    tulle
    utah_beach
    vaison_la_romaine
    val_louron
    valence
    valence_d_agen
    valenciennes
    valentigney
    valloire
    valmorel
    valreas
    vals_les_bains
    vannes
    vatan
    vaucluse
    vence
    vercors
    verdun
    versailles
    vesoul
    veurey
    vichy
    vierzon
    villar_les_dombes
    ville_d_avray
    villefranche_sur_saone
    villeneuve_sur_lot
    villers_cotterets
    villers_sur_mer
    villeurbanne
    villie_morgon
    vire
    viry_chatillon
    vitre
    vittel
    vizelle
    vouvray
    voreppe
    wasquehal
);

use ParcoursDB::Country::France;
use ParcoursDB::Location;

my $france = ParcoursDB::Country::France->new;

# A
sub abbeville {
    return _french_location("Abbeville");
}

sub agde {
    return _french_location("Agde");
}

sub agen {
    return _french_location("Agen");
}

sub aigurande {
    return _french_location("Aigurande");
}

sub aime {
    return _french_location("Aime");
}

sub aix_en_provence {
    return _french_location("Aix-en-Provence");
}

sub aix_les_bains {
    return _french_location("Aix-les-Bains");
}

sub ajaccio {
    return _french_location("Ajaccio");
}

sub albertville {
    return _french_location("Albertville");
}

sub albi {
    return _french_location("Albi");
}

sub alencon {
    return _french_location("Alencon");
}

sub ales {
    return _french_location("Ales");
}

sub alfortville {
    return _french_location("Alfortville");
}

sub altkirch {
    return _french_location("Altkirch");
}

sub amiens {
    return _french_location("Amiens");
}

sub ancenis {
    return _french_location("Ancenis");
}

sub angers {
    return _french_location("Angers");
}

sub angouleme {
    return _french_location("Angoulême");
}

sub annecy {
    return _french_location("Annecy");
}

sub annemasse {
    return _french_location("Annemasse");
}

sub annonay_davezieux {
    return _french_location("Annonay-Davezieux");
}

sub antibes {
    return _french_location("Antibes");
}

sub antony_parc_de_sceaux {
    return _french_location("Antony/Parc de Sceaux");
}

sub arbois {
    return _french_location("Arbois");
}

sub arc_et_senans {
    return _french_location("Arc-et-Senans");
}

sub arcachon {
    return _french_location("Arcachon");
}

sub arenberg_porte_du_hainaut {
    return _french_location("Arenberg Porte du Hainaut");
}

sub argeles_gazost {
    return _french_location("Argeles-Gazost");
}

sub argeles_sur_mer {
    return _french_location("Argelès-sur-Mer");
}

sub argentan {
    return _french_location("Argentan");
}

sub argenteuil {
    return _french_location("Argenteuil");
}

sub ariege {
    return _french_location("Ariege");
}

sub armentieres {
    return _french_location("Armentieres");
}

sub arpajon {
    return _french_location("Arpajon");
}

sub arpajon_sur_cere {
    return _french_location("Arpajon-sur-Cere");
}

sub arras {
    return _french_location("Arras");
}

sub aubagne {
    return _french_location("Aubagne");
}

sub aubenas {
    return _french_location("Aubenas");
}

sub aubisque {
    return _french_location("Aubisque");
}

sub auch {
    return _french_location("Auch");
}

sub aulay {
    return _french_location("Aulay");
}

sub aulnay_sous_bois {
    return _french_location("Aulnay-sous-Bois");
}

sub aurillac {
    return _french_location("Aurillac");
}

sub autodrome_de_montlhery {
    return _french_location("Autodrome de Montlhéry");
}

sub autrans {
    return _french_location("Autrans");
}

sub autun {
    return _french_location("Autun");
}

sub auxerre {
    return _french_location("Auxerre");
}

sub avesnes_sur_helpe {
    return _french_location("Avesnes-sur-Helpe");
}

sub avignon {
    return _french_location("Avignon");
}

sub avranches {
    return _french_location("Avranches");
}

sub ax_les_thermes {
    return _french_location("Ax-les-Thermes");
}

# B
sub bagneres_de_bigorre {
    return _french_location("Bagnères-de-Bigorre");
}
sub bagneres_de_luchon {
    return _french_location("Bagnères-de-Luchon");
}
sub bagnoles_de_l_orne {
    return _french_location("Bagnoles-de-l'Orne");
}
sub ballon_d_alsace {
    return _french_location("Ballon d'Alsace");
}
sub barcelonette {
    return _french_location("Barcelonnette");
}
sub bar_le_duc {
    return _french_location("Bar-le-Duc");
}
sub bastia {
    return _french_location("Bastia");
}
sub bayonne {
    return _french_location("Bayonne");
}
sub bazas {
    return _french_location("Bazas");
}
sub beauvais {
    return _french_location("Beauvais");
}
sub bedoin {
    return _french_location("Bedoin");
}
sub belfort {
    return _french_location("Belfort");
}
sub bellegarde_sue_valserine {
    return _french_location("Bellegarde-sue-Valserine");
}
sub belleville {
    return _french_location("Belleville");
}
sub bergerac {
    return _french_location("Bergerac");
}
sub besancon {
    return _french_location("Besançon");
}
sub besse {
    return _french_location("Besse");
}
sub besse_en_chandesse {
    return _french_location("Besse-en-Chandesse");
}
sub bethune {
    return _french_location("Bethune");
}
sub beziers {
    return _french_location("Beziers");
}
sub biarritz {
    return _french_location("Biarritz");
}
sub blagnac {
    return _french_location("Blagnac");
}
sub blain {
    return _french_location("Blain");
}
sub blaye_les_mines {
    return _french_location("Blaye-les-Mines");
}
sub blois {
    return _french_location("Blois");
}
sub bobigny {
    return _french_location("Bobigny");
}
sub bondy {
    return _french_location("Bondy");
}
sub bonneval {
    return _french_location("Bonneval");
}
sub bordeaux {
    return _french_location("Bordeaux");
}
sub boulogne_billancourt {
    return _french_location("Boulogne-Billancourt");
}
sub boulogne_sur_mer {
    return _french_location("Boulogne-sur-Mer");
}
sub bourg_de_peage {
    return _french_location("Bourg-de-Peage");
}
sub bourg_en_bresse {
    return _french_location("Bourg-en-Bresse");
}
sub bourg_les_valence {
    return _french_location("Bourg-lès-Valence");
}
sub bourg_madame {
    return _french_location("Bourg-Madame");
}
sub bourg_saint_andeol {
    return _french_location("Bourg-Saint-Andeol");
}
sub bourg_saint_maurice {
    return _french_location("Bourg-Saint-Maurice");
}
sub bourges {
    return _french_location("Bourges");
}
sub bourgoin {
    return _french_location("Bourgoin");
}
sub bourgoin_jallieu {
    return _french_location("Bourgoin-Jallieu");
}
sub brest {
    return _french_location("Brest");
}
sub bretigny_sur_orge {
    return _french_location("Bretigny-sur-Orge");
}
sub briancon {
    return _french_location("Briançon");
}
sub brignoles {
    return _french_location("Brignoles");
}
sub brioude {
    return _french_location("Brioude");
}
sub brive {
    return _french_location("Brive");
}
sub brive_la_gaillarde {
    return _french_location("Brive-la-Gaillarde");
}
sub bron {
    return _french_location("Bron");
}
# C
sub caen {
    return _french_location("Caen");
}
sub cagnes_sur_mer {
    return _french_location("Cagnes-sur-Mer");
}
sub cahors {
    return _french_location("Cahors");
}
sub calais {
    return _french_location("Calais");
}
sub calvi {
    return _french_location("Calvi");
}
sub cambo_les_bains {
    return _french_location("Cambo-les-Bains");
}
sub cambrai {
    return _french_location("Cambrai");
}
sub cancale {
    return _french_location("Cancale");
}
sub cannes {
    return _french_location("Cannes");
}
sub cap_d_agde {
    return _french_location("Cap d'Agde");
}
sub cap_d_agne {
    return _french_location("Cap d'Agne");
}
sub cap_decouverte {
    return _french_location("Cap Decouverte");
}
sub cap_frehel {
    return _french_location("Cap Frehel");
}
sub captieux {
    return _french_location("Captieux");
}
sub carcassonne {
    return _french_location("Carcassonne");
}
sub carhaix {
    return _french_location("Carhaix");
}
sub carmaux {
    return _french_location("Carmaux");
}
sub carnon_plage {
    return _french_location("Carnon-Plage");
}
sub carpentras {
    return _french_location("Carpentras");
}
sub castelnaudary {
    return _french_location("Castelnaudary");
}
sub castelsarrasin {
    return _french_location("Castelsarrasin");
}
sub castillon_la_bataille {
    return _french_location("Castillon-la-Bataille");
}
sub castres {
    return _french_location("Castres");
}
sub cergy_pontoise {
    return _french_location("Cergy-Pontoise");
}
sub cerilly {
    return _french_location("Cerilly");
}
sub chablis {
    return _french_location("Chablis");
}
sub chalet_reynard {
    return _french_location("Chalet Reynard (Mont Ventoux)");
}
sub challans {
    return _french_location("Challans");
}
sub chalon_sur_saone {
    return _french_location("Chalon-sur-Saône");
}
sub chalons_sur_marne {
    return _french_location("Châlons-sur-Marne");
}
sub chambery {
    return _french_location("Chambery");
}
sub chambord {
    return _french_location("Chambord");
}
sub chamonix {
    return _french_location("Chamonix");
}
sub champagnole {
    return _french_location("Champagnole");
}
sub chaumont {
    return _french_location("Chaumont");
}
sub chantilly {
    return _french_location("Chantilly");
}
sub chantonnay {
    return _french_location("Chantonnay");
}
sub charleville {
    return _french_location("Charleville");
}
sub charleville_mezieres {
    return _french_location("Charleville-Mezieres");
}
sub chartres {
    return _french_location("Chartres");
}
sub chassieu {
    return _french_location("Chassieu");
}
sub chateau_thierry {
    return _french_location("Chateau-Thierry");
}
sub chateaubriant {
    return _french_location("Chateaubriant");
}
sub chateaulin {
    return _french_location("Châteaulin");
}
sub chateauroux {
    return _french_location("Chateauroux");
}
sub chatel {
    return _french_location("Châtel");
}
sub chatel_guyon {
    return _french_location("Chatel-Guyon");
}
sub chatellerault {
    return _french_location("Chatellerault");
}
sub chatou {
    return _french_location("Chatou");
}
sub chaumeil {
    return _french_location("Chaumeil");
}
sub chaville {
    return _french_location("Chaville");
}
sub chazey {
    return _french_location("Chazey-sur-Ain");
}
sub cherbourg {
    return _french_location("Cherbourg");
}
sub cherbourg_en_cotentin {
    return _french_location("Cherbourg-en-Cotentin");
}
sub cholet {
    return _french_location("Cholet");
}
sub chorges {
    return _french_location("Chorges");
}
sub ciney {
    return _french_location("Ciney");
}
sub circuit_des_essarts {
    return _french_location("Circuit des Essarts");
}
sub circuit_de_rouen_les_essarts {
    return _french_location("Circuit de Rouen-Les-Essarts");
}
sub circuit_de_la_prairie {
    return _french_location("Circuit de la Prairie");
}
sub clermont_ferrand {
    return _french_location("Clermont-Ferrand");
}
sub cluses {
    return _french_location("Cluses");
}
sub cognac {
    return _french_location("Cognac");
}
sub colmar {
    return _french_location("Colmar");
}
sub colomiers {
    return _french_location("Colomiers");
}
sub commercy {
    return _french_location("Commercy");
}
sub compiegne {
    return _french_location("Compiegne");
}
sub concarneau {
    return _french_location("Concarneau");
}
sub corbeil_essonnes {
    return _french_location("Corbeil-Essonnes");
}
sub correze {
    return _french_location("Correze");
}
sub cosne_sur_loire {
    return _french_location("Cosne-sur-Loire");
}
sub creteil {
    return _french_location("Creteil");
}
sub cugnaux {
    return _french_location("Cugnaux");
}
sub culoz {
    return _french_location("Culoz");
}
# D
sub damazan {
    return _french_location("Damazan");
}
sub dax {
    return _french_location("Dax");
}
sub deauville {
    return _french_location("Deauville");
}
sub dieppe {
    return _french_location("Dieppe");
}
sub digne {
    return _french_location("Digne");
}
sub digne_les_bains {
    return _french_location("Digne-les-Bains");
}
sub dijon {
    return _french_location("Dijon");
}
sub dinan {
    return _french_location("Dinan");
}
sub dinard {
    return _french_location("Dinard");
}
sub disneyland_paris {
    return _french_location("Disneyland Paris");
}
sub divonne_les_bains {
    return _french_location("Divonne-les-Bains");
}
sub dole {
    return _french_location("Dole");
}
sub domaine_du_rouret {
    return _french_location("Domaine du Rouret");
}
sub dordogne {
    return _french_location("Dordogne");
}
sub douai {
    return _french_location("Douai");
}
sub draguignan {
    return _french_location("Draguignan");
}
sub dreux {
    return _french_location("Dreux");
}
sub drome {
    return _french_location("Drome");
}
sub dunkerque {
    return _french_location("Dunkerque");
}
# E
sub embrun {
    return _french_location("Embrun");
}
sub epernay {
    return _french_location("Epernay");
}
sub epinal {
    return _french_location("Epinal");
}
sub epnay_sous_senart {
    return _french_location("Epnay-sous-Senart");
}
sub espelette {
    return _french_location("Espelette");
}
sub etampes {
    return _french_location("Etampes");
}
sub eurotunnel {
    return _french_location("Eurotunnel");
}
sub evian {
    return _french_location("Evian");
}
sub evian_les_bains {
    return _french_location("Evian-les-Bains");
}
sub evreux {
    return _french_location("Evreux");
}
sub evry {
    return _french_location("Evry");
}
sub eymet {
    return _french_location("Eymet");
}
# F
sub faverges {
    return _french_location("Faverges");
}
sub fecamp {
    return _french_location("Fecamp");
}
sub figeac {
    return _french_location("Figeac");
}
sub flers {
    return _french_location("Flers");
}
sub fleurance {
    return _french_location("Fleurance");
}
sub foix {
    return _french_location("Foix");
}
sub font_romeu_odeillo_via {
    return _french_location("Font-Romeu-Odeillo-Via");
}
sub fontaine {
    return _french_location("Fontaine");
}
sub fontaine_au_pire {
    return _french_location("Fontaine-au-Pire");
}
sub fontainebleau {
    return _french_location("Fontainebleau");
}
sub fontenay_le_comte {
    return _french_location("Fontenay-le-Comte");
}
sub fontenay_sous_bois {
    return _french_location("Fontenay-sous-Bois");
}
sub forges_les_eaux {
    return _french_location("Forges-les-Eaux");
}
sub fougeres {
    return _french_location("Fougeres");
}
sub fougres {
    return _french_location("Fougres");
}
sub fromentine {
    return _french_location("Fromentine");
}
sub frontenex {
    return _french_location("Frontenex");
}
sub frontignan_la_peyrade {
    return _french_location("Frontignan la Peyrade");
}
sub futuroscope {
    return _french_location("Futuroscope");
}
# G
sub gaillac {
    return _french_location("Gaillac");
}
sub gaillard {
    return _french_location("Gaillard");
}
sub gap {
    return _french_location("Gap");
}
sub gerardmer {
    return _french_location("Gerardmer");
}
sub gerardmer_las_mauselaine {
    return _french_location("Gerardmer las Mauselaine");
}
sub gex {
    return _french_location("Gex");
}
sub givors {
    return _french_location("Givors");
}
sub gourette {
    return _french_location("Gourette");
}
sub gourette_col_d_aubisque {
    return _french_location("Gourette-Col d'Aubisque");
}
sub granville {
    return _french_location("Granville");
}
sub grenoble {
    return _french_location("Grenoble");
}
sub gruissan {
    return _french_location("Gruissan");
}
sub gueret {
    return _french_location("Gueret");
}
sub gueugnon {
    return _french_location("Gueugnon");
}
sub guillestre {
    return _french_location("Guillestre");
}
# H
sub hendaye {
    return _french_location("Hendaye");
}
sub houilles {
    return _french_location("Houilles");
}
sub hyeres {
    return _french_location("Hyeres");
}
# I
sub ile_d_oleron {
    return _french_location("Ile d'Oleron");
}
sub isola {
    return _french_location("Isola");
}
sub issoire {
    return _french_location("Issoire");
}
sub issoudun {
    return _french_location("Issoudun");
}
# J
sub jaunay_clan {
    return _french_location("Jaunay-Clan");
}
sub jausiers {
    return _french_location("Jausiers");
}
sub joigny {
    return _french_location("Joigny");
}
sub joinville {
    return _french_location("Joinville");
}
sub jonzac {
    return _french_location("Jonzac");
}
# L
sub l_isle_d_abeau {
    return _french_location("L'Isle-d'Abeau");
}
sub l_isle_jourdain {
    return _french_location("L'Isle-Jourdain");
}
sub la_baule {
    return _french_location("La Baule");
}
sub le_bourg_d_oisans {
    return _french_location("Le Bourg-d'Oisans");
}
sub la_caverne_du_pont_d_arc {
    return _french_location("La Caverne du Pont-d'Arc");
}
sub la_chataigneraie {
    return _french_location("La Chataigneraie");
}
sub la_chatre {
    return _french_location("La Chatre");
}
sub la_defense {
    return _french_location("La Defense");
}
sub la_ferte_sous_jouarre {
    return _french_location("La Ferte-sous-Jouarre");
}
sub la_fouillouse {
    return _french_location("La Fouillouse");
}
sub la_grand_motte {
    return _french_location("La Grand-Motte");
}
sub la_grande_motte {
    return _french_location("La Grande-Motte");
}
sub la_guerche_de_bretagne {
    return _french_location("La Guerche-de-Bretagne");
}
sub la_haie_fouassiere {
    return _french_location("La Haie-Fouassiere");
}
sub la_mure {
    return _french_location("La Mure");
}
sub la_roche_sur_yon {
    return _french_location("La Roche-sur-Yon");
}
sub la_rochelle {
    return _french_location("La Rochelle");
}
sub la_tour_du_pin {
    return _french_location("La Tour-du-Pin");
}
sub la_toussuire_les_sybelles {
    return _french_location("La Toussuire - Les Sybelles");
}
sub labastide_d_armagnac {
    return _french_location("Labastide-d'Armagnac");
}
sub lacanau {
    return _french_location("Lacanau");
}
sub lac_de_madine {
    return _french_location("Lac de Madine");
}
sub lac_de_payolle {
    return _french_location("Lac de Payolle");
}
sub lac_de_vassiviere {
    return _french_location("Lac de Vassiviere");
}
sub lac_saint_point {
    return _french_location("Lac Saint-Point");
}
sub laissac_severac_l_eglise {
    return _french_location("Laissac-Severac-l'Eglise");
}
sub lamballe {
    return _french_location("Lamballe");
}
sub lanester {
    return _french_location("Lanester");
}
sub langon {
    return _french_location("Langon");
}
sub lannemezan {
    return _french_location("Lannemezan");
}
sub lannion {
    return _french_location("Lannion");
}
sub laon {
    return _french_location("Laon");
}
sub laplume {
    return _french_location("Laplume");
}
sub laruns {
    return _french_location("Laruns");
}
sub laval {
    return _french_location("Laval");
}
sub lavalanet {
    return _french_location("Lavalanet");
}
sub lavaur {
    return _french_location("Lavaur");
}
sub lavelanet {
    return _french_location("Lavelanet");
}
sub le_barcares {
    return _french_location("Le Barcarès");
}
sub le_blanc {
    return _french_location("Le Blanc");
}
sub le_creusot {
    return _french_location("Le Creusot");
}
sub le_grand_bornand {
    return _french_location("Le Grand Bornand");
}
sub le_havre {
    return _french_location("Le Havre");
}
sub le_mans {
    return _french_location("Le Mans");
}
sub le_monetier_les_bains {
    return _french_location("Le Monetier-les-Bains");
}
sub le_perreux_sur_marne {
    return _french_location("Le Perreux-sur-Marne");
}
sub le_puy {
    return _french_location("Le Puy");
}
sub le_puy_du_fou {
    return _french_location("Le Puy du Fou");
}
sub le_puy_en_velay {
    return _french_location("Le Puy-en-Velay");
}
sub le_revard {
    return _french_location("Le Revard");
}
sub le_touquet {
    return _french_location("Le Touquet");
}
sub le_touquet_paris_plage {
    return _french_location("Le Touquet-Paris-Plage");
}
sub le_treport {
    return _french_location("Le Treport");
}
sub les_echelles {
    return _french_location("Les Echelles");
}
sub les_essarts {
    return _french_location("Les Essarts");
}
sub les_sables_d_olonne {
    return _french_location("Les Sables-d'Olonne");
}
sub levallois_perret {
    return _french_location("Levallois-Perret");
}
sub lezat_sur_leze {
    return _french_location("Lezat-sur-Leze");
}
sub lezignan_corbieres {
    return _french_location("Lezignan-Corbieres");
}
sub libourne {
    return _french_location("Libourne");
}
sub lievin {
    return _french_location("Lievin");
}
sub lille {
    return _french_location("Lille");
}
sub lille_metropole {
    return _french_location("Lille Metropole");
}
sub limoges {
    return _french_location("Limoges");
}
sub limoux {
    return _french_location("Limoux");
}
sub lisieux {
    return _french_location("Lisieux");
}
sub livarot {
    return _french_location("Livarot");
}
sub lodeve {
    return _french_location("Lodève");
}
sub longjumeau {
    return _french_location("Longjumeau");
}
sub longwy {
    return _french_location("Longwy");
}
sub lons_le_saunier {
    return _french_location("Lons-le-Saunier");
}
sub lorient {
    return _french_location("Lorient");
}
sub loudenvielle {
    return _french_location("Loudenvielle");
}
sub loudon {
    return _french_location("Loudon");
}
sub louhans {
    return _french_location("Louhans-Chateaurenaud");
}
sub lourdes {
    return _french_location("Lourdes");
}
sub louvroil {
    return _french_location("Louvroil");
}
sub luchon {
    return _french_location("Luchon");
}
sub lucon {
    return _french_location("Lucon");
}
sub lugny {
    return _french_location("Lugny");
}
sub luneville {
    return _french_location("Luneville");
}
sub luz_saint_sauveur {
    return _french_location("Luz-Saint-Sauveur");
}
sub lyon {
    return _french_location("Lyon");
}
# M
sub machecoul {
    return _french_location("Machecoul");
}
sub macon {
    return _french_location("Macon");
}
sub malo_les_bains {
    return _french_location("Malo-les-Bains");
}
sub manosque {
    return _french_location("Manosque");
}
sub marcoussis {
    return _french_location("Marcoussis");
}
sub marennes {
    return _french_location("Marennes");
}
sub marseille {
    return _french_location("Marseille");
}
sub martigues {
    return _french_location("Martigues");
}
sub mauberge {
    return _french_location("Mauberge");
}
sub maubourguet_pays_du_val_d_adour {
    return _french_location("Maubourguet Pays du Val d'Adour");
}
sub mayenne {
    return _french_location("Mayenne");
}
sub mazamet {
    return _french_location("Mazamet");
}
sub maze_montgeoffroy {
    return _french_location("Maze-Montgeoffroy");
}
sub meaux {
    return _french_location("Meaux");
}
sub megeve {
    return _french_location("Megeve");
}
sub melun {
    return _french_location("Melun");
}
sub mende {
    return _french_location("Mende");
}
sub menton {
    return _french_location("Menton");
}
sub merlin_plage {
    return _french_location("Merlin-Plage");
}
sub mers_les_bains {
    return _french_location("Mers-les-Bains");
}
sub metz {
    return _french_location("Metz");
}
sub meudon {
    return _french_location("Meudon");
}
sub meyrignac_l_eglise {
    return _french_location("Meyrignac-l'Eglise");
}
sub millau {
    return _french_location("Millau");
}
sub miramas {
    return _french_location("Miramas");
}
sub modane {
    return _french_location("Modane");
}
sub moirans_en_montagne {
    return _french_location("Moirans-en-Montagne");
}
sub mont_de_marsan {
    return _french_location("Mont-de-Marsan");
}
sub mont_des_alouettes {
    return _french_location("Mont des Alouettes");
}
sub mont_saint_michel {
    return _french_location("Mont Saint-Michel");
}
sub montaigu {
    return _french_location("Montaigu");
}
sub montargis {
    return _french_location("Montargis");
}
sub montauban {
    return _french_location("Montauban");
}
sub montbeliard {
    return _french_location("Montbeliard");
}
sub montbrison {
    return _french_location("Montbrison");
}
sub montceau_les_mines {
    return _french_location("Montceau-les-Mines");
}
sub montelimar {
    return _french_location("Montelimar");
}
sub montereau_fault_yonne {
    return _french_location("Montereau-Fault-Yonne");
}
sub montgeron {
    return _french_location("Montgeron");
}
sub montlhery {
    return _french_location("Montlhery");
}
sub montlucon {
    return _french_location("Montlucon");
}
sub montpellier {
    return _french_location("Montpellier");
}
sub montpon_menesterol {
    return _french_location("Montpon-Menesterol");
}
sub montreuil {
    return _french_location("Montreuil");
}
sub morcenx {
    return _french_location("Morenx");
}
sub morlaix {
    return _french_location("Morlaix");
}
sub morzine {
    return _french_location("Morzine");
}
sub morzine_avoriaz {
    return _french_location("Morzine-Avoriaz");
}
sub mouilleron_saint_germain {
    return _french_location("Mouilleron-Saint-Germain");
}
sub mourenx {
    return _french_location("Mourenx");
}
sub moutiers {
    return _french_location("Moûtiers");
}
sub mulhouse {
    return _french_location("Mulhouse");
}
sub muret {
    return _french_location("Muret");
}
# N
sub nancy {
    return _french_location("Nancy");
}
sub nanterre {
    return _french_location("Nanterre");
}
sub nantes {
    return _french_location("Nantes");
}
sub nantua {
    return _french_location("Nantua");
}
sub narbonne {
    return _french_location("Narbonne");
}
sub nay {
    return _french_location("Nay");
}
sub nemours {
    return _french_location("Nemours");
}
sub neufchatel_en_bray {
    return _french_location("Neufchatel-en-Bray");
}
sub neuville_de_poitou {
    return _french_location("Neuville-de-Poitou");
}
sub nevers {
    return _french_location("Nevers");
}
sub nice {
    return _french_location("Nice");
}
sub nimes {
    return _french_location("Nîmes");
}
sub niort {
    return _french_location("Niort");
}
sub nogent_sur_marne {
    return _french_location("Nogent-sur-Marne");
}
sub nogent_sur_oise {
    return _french_location("Nogent-sur-Oise");
}
sub noirmoutier_en_l_ile {
    return _french_location("Noirmoutier-en-l'Île");
}
sub noisy_le_sec {
    return _french_location("Noisy-le-Sec");
}
sub nuits_saint_georges {
    return _french_location("Nuits-Saint-Georges");
}
# O
sub obernai {
    return _french_location("Obernai");
}
sub olonne_sur_mer {
    return _french_location("Olonne-sur-Mer");
}
sub oloron_sainte_marie {
    return _french_location("Oloron-Sainte-Marie");
}
sub orange {
    return _french_location("Orange");
}
sub orchies {
    return _french_location("Orchies");
}
sub orleans {
    return _french_location("Orléans");
}
sub orsonville {
    return _french_location("Orsonville");
}
sub orthez {
    return _french_location("Orthez");
}
sub oyonnax {
    return _french_location("Oyonnax");
}
# P
sub palaiseau {
    return _french_location("Palaiseau");
}
sub pamiers {
    return _french_location("Pamiers");
}
sub pantin {
    return _french_location("Pantin");
}
sub paris {
    return _french_location("Paris");
}
sub passage_du_gois {
    return _french_location("Passage du Gois");
}
sub pau {
    return _french_location("Pau");
}
sub pauillac {
    return _french_location("Pauillac");
}
sub perigueux {
    return _french_location("Périgueux");
}
sub peronne {
    return _french_location("Peronne");
}
sub perpignan {
    return _french_location("Perpignan");
}
sub perros_guirec {
    return _french_location("Perros-Guirec");
}
sub peyrehorade {
    return _french_location("Peyrehorade");
}
sub pla_d_adet {
    return _french_location("Pla d'Adet");
}
sub plouay {
    return _french_location("Plouay");
}
sub plumelec {
    return _french_location("Plumelec");
}
sub poitiers {
    return _french_location("Poitiers");
}
sub pont_audemer {
    return _french_location("Pont-Audemer");
}
sub pont_de_vaux {
    return _french_location("Pont-de-Vaux");
}
sub pont_l_eveque {
    return _french_location("Pont l'Eveque");
}
sub pontarlier {
    return _french_location("Pontarlier");
}
sub pontchateau {
    return _french_location("Pontchateau");
}
sub pontoise {
    return _french_location("Pontoise");
}
sub pornic {
    return _french_location("Pornic");
}
sub pornichet {
    return _french_location("Pornichet");
}
sub porrentruy {
    return _french_location("Porrentruy");
}
sub porte_maillot {
    return _french_location("Porte Maillot, Paris");
}
sub porto_vecchio {
    return _french_location("Porto-Vecchio");
}
sub pouilly_en_auxois {
    return _french_location("Pouilly-en-Auxois");
}
sub prades {
    return _french_location("Prades");
}
sub prapoutel {
    return _french_location("Prapoutel");
}
sub privas {
    return _french_location("Privas");
}
sub provence {
    return _french_location("Provence");
}
# Q
sub quimper {
    return _french_location("Quimper");
}
# R
sub rambouillet {
    return _french_location("Rambouillet");
}
sub redon {
    return _french_location("Redon");
}
sub regnie_durette {
    return _french_location("Regnie-Durette");
}
sub reims {
    return _french_location("Reims");
}
sub renaze {
    return _french_location("Renaze");
}
sub rennes {
    return _french_location("Rennes");
}
sub revel {
    return _french_location("Revel");
}
sub roanne {
    return _french_location("Roanne");
}
sub rochefort {
    return _french_location("Rochefort");
}
sub rodez {
    return _french_location("Rodez");
}
sub romans_sur_isere {
    return _french_location("Romans-sur-Isere");
}
sub roquefort_sur_soulzon {
    return _french_location("Roquefort-sur-Soulzon");
}
sub roscoff {
    return _french_location("Roscoff");
}
sub rossignol_voiron {
    return _french_location("Rossignol Voiron");
}
sub roubaix {
    return _french_location("Roubaix");
}
sub rouen {
    return _french_location("Rouen");
}
sub royan {
    return _french_location("Royan");
}
sub ruelle_sur_tourve {
    return _french_location("Ruelle sur Tourve");
}
sub ruffex {
    return _french_location("Ruffex");
}
sub rungis {
    return _french_location("Rungis");
}
# S
sub sable_sur_sarthe {
    return _french_location("Sablé-sur-Sarthe");
}
sub saint_amand_les_eaux {
    return _french_location("Saint-Amand-les-Eaux");
}
sub saint_amand_montrond {
    return _french_location("Saint-Amand-Montrond");
}
sub saint_brieuc {
    return _french_location("Saint-Brieuc");
}
sub saint_denis {
    return _french_location("Saint-Denis");
}
sub saint_dier_d_auvergne {
    return _french_location("Saint-Dier-d'Auvergne");
}
sub saint_dizier {
    return _french_location("Saint-Dizier");
}
sub saint_emilion {
    return _french_location("Saint-Emilion");
}
sub saint_etienne {
    return _french_location("Saint-Étienne");
}
sub saint_fargeau {
    return _french_location("Saint-Fargeau");
}
sub saint_flour {
    return _french_location("Saint-Flour");
}
sub saint_francois_longchamp {
    return _french_location("Saint-François-Longchamp");
}
sub saint_galmier {
    return _french_location("Saint Galmier");
}
sub saint_gaudens {
    return _french_location("Saint-Gaudens");
}
sub saint_germain {
    return _french_location("Saint-Germain");
}
sub saint_germain_en_laye {
    return _french_location("Saint-Germain-en-Laye");
}
sub saint_gervais {
    return _french_location("Saint-Gervais");
}
sub saint_gervais_les_bains {
    return _french_location("Saint Gervais-les-Bains");
}
sub saint_gildas_des_bois {
    return _french_location("Saint-Gildas-des-Bois");
}
sub saint_gilles_croix_de_vie {
    return _french_location("Saint-Gilles-Croix-de-Vie");
}
sub saint_girons {
    return _french_location("Saint-Girons");
}
sub saint_gregoire {
    return _french_location("Saint Gregoire");
}
sub saint_herblain {
    return _french_location("Saint-Herblain");
}
sub saint_hilaire_du_harcouet {
    return _french_location("Saint-Hilaire-du-Harcouët");
}
sub saint_jean_de_maurienne {
    return _french_location("Saint-Jean-de-Maurienne");
}
sub saint_jean_de_monts {
    return _french_location("Saint-Jean-de-Monts");
}
sub saint_julien_en_genevois {
    return _french_location("Saint-Julien-en-Genevois");
}
sub saint_just {
    return _french_location("Saint-Just-Saint-Rambert");
}
sub saint_lary_pla_d_adet {
    return _french_location("Saint-Lary Pla d'Adet");
}
sub saint_lary_soulan {
    return _french_location("Saint-Lary-Soulan");
}
sub saint_lary_soulan_pla_d_adet {
    return _french_location("Saint-Lary-Soulan Pla d'Adet");
}
sub saint_leonard_de_noblat {
    return _french_location("Saint-Leonard-de-Noblat");
}
sub saint_lo {
    return _french_location("Saint-Lo");
}
sub saint_maixent_l_ecole {
    return _french_location("Saint-Maixent-l'Ecole");
}
sub saint_malo {
    return _french_location("Saint-Malo");
}
sub saint_martin_de_landelles {
    return _french_location("Saint-Martin-de-Landelles");
}
sub saint_meen_le_grand {
    return _french_location("Saint-Meen-le-Grand");
}
sub saint_nazaire {
    return _french_location("Saint-Nazaire");
}
sub saint_omer {
    return _french_location("Saint-Omer");
}
sub saint_orens_de_gameville {
    return _french_location("Saint-Orens-de-Gameville");
}
sub saint_paul_trois_chateaux {
    return _french_location("Saint-Paul-Trois-Chateaux");
}
sub saint_pee_sur_nivelle {
    return _french_location("Saint-Pée-sur-Nivelle");
}
sub saint_pol_de_leon {
    return _french_location("Saint-Pol-de-Léon");
}
sub saint_pourcain_sur_sioule {
    return _french_location("Saint-Pourcain-sur-Sioule");
}
sub saint_priest {
    return _french_location("Saint-Priest");
}
sub saint_quentin {
    return _french_location("Saint-Quentin");
}
sub saint_quentin_en_yvelines {
    return _french_location("Saint-Quentin-en-Yvelines");
}
sub saint_raphael {
    return _french_location("Saint-Raphael");
}
sub saint_trivier_sur_moignans {
    return _french_location("Saint-Trivier-sur-Moignans");
}
sub saint_valery_en_caux {
    return _french_location("Saint-Valery-en-Caux");
}
sub sainte_foy_la_grande {
    return _french_location("Sainte-Foy-la-Grande");
}
sub sainte_genevieve_des_bois {
    return _french_location("Sainte-Genevieve-des-Bois");
}
sub saintes {
    return _french_location("Saintes");
}
sub salies_de_bearn {
    return _french_location("Salies-de-Bearn");
}
sub sallanches {
    return _french_location("Sallanches");
}
sub salon_de_provence {
    return _french_location("Salon-de-Provence");
}
sub samatan {
    return _french_location("Samatan");
}
sub santennay {
    return _french_location("Santennay");
}
sub sarran {
    return _french_location("Sarran");
}
sub sarrebourg {
    return _french_location("Sarrebourg");
}
sub sarzeau {
    return _french_location("Sarzeau");
}
sub saumur {
    return _french_location("Saumur");
}
sub sauternes {
    return _french_location("Sauternes");
}
sub savines_le_lac {
    return _french_location("Savines-le-Lac");
}
sub sceaux {
    return _french_location("Sceaux");
}
sub sedan {
    return _french_location("Sedan");
}
sub seignosse_le_penon {
    return _french_location("Seignosse le Penon");
}
sub semnoz {
    return _french_location("Semnoz");
}
sub semur_en_auxois {
    return _french_location("Semur-en-Auxois");
}
sub senlis {
    return _french_location("Senlis");
}
sub sens {
    return _french_location("Sens");
}
sub serre_chevalier {
    return _french_location("Serre Chevalier");
}
sub sete {
    return _french_location("Sete");
}
sub seurre {
    return _french_location("Seurre");
}
sub sevres {
    return _french_location("Sevres");
}
sub sisteron {
    return _french_location("Sisteron");
}
sub soissons {
    return _french_location("Soissons");
}
sub station_des_rousses {
    return _french_location("Station des Rousses");
}
sub strasbourg {
    return _french_location("Strasbourg");
}
sub suresnes {
    return _french_location("Suresnes, Paris");
}
# T
sub tallard {
    return _french_location("Tallard");
}
sub tarascon_sur_ariege {
    return _french_location("Tarascon-sur-Ariege");
}
sub tarbes {
    return _french_location("Tarbes");
}
sub thionville {
    return _french_location("Thionville");
}
sub thonon_les_bains {
    return _french_location("Thonon-les-Bains");
}
sub thuir {
    return _french_location("Thuir");
}
sub tignes {
    return _french_location("Tignes");
}
sub tomblaine {
    return _french_location("Tomblaine");
}
sub tonnerre {
    return _french_location("Tonnerre");
}
sub toulon {
    return _french_location("Toulon");
}
sub toulouse {
    return _french_location("Toulouse");
}
sub tournus {
    return _french_location("Tournus");
}
sub tours {
    return _french_location("Tours");
}
sub trelissac {
    return _french_location("Trelissac");
}
sub trets {
    return _french_location("Trets");
}
sub trie_sur_basie {
    return _french_location("Trie-sur-Basie");
}
sub trouville {
    return _french_location("Trouville");
}
sub troyes {
    return _french_location("Troyes");
}
sub tulle {
    return _french_location("Tulle");
}
# U
sub utah_beach {
    return _french_location("Utah Beach (Sainte-Marie-du-Mont)");
}
# V
sub vaison_la_romaine {
    return _french_location("Vaison-la-Romaine");
}
sub val_louron {
    return _french_location("Val Louron");
}
sub valence {
    return _french_location("Valence");
}
sub valence_d_agen {
    return _french_location("Valence d'Agen");
}
sub valenciennes {
    return _french_location("Valenciennes");
}
sub valentigney {
    return _french_location("Valentigney");
}
sub valloire {
    return _french_location("Valloire");
}
sub valmorel {
    return _french_location("Valmorel");
}
sub valreas {
    return _french_location("Valreas");
}
sub vals_les_bains {
    return _french_location("Vals-les-Bains");
}
sub vannes {
    return _french_location("Vannes");
}
sub vatan {
    return _french_location("Vatan");
}
sub vaucluse {
    return _french_location("Vaucluse");
}
sub vence {
    return _french_location("Vence");
}
sub vercors {
    return _french_location("Lan-en-Vercors");
}
sub verdun {
    return _french_location("Verdun");
}
sub versailles {
    return _french_location("Versailles");
}
sub vesoul {
    return _french_location("Vesoul");
}
sub veurey {
    return _french_location("Veurey");
}
sub vichy {
    return _french_location("Vichy");
}
sub vierzon {
    return _french_location("Vierzon");
}
sub villar_les_dombes {
    return _french_location("Villar-les-Dombes (Parc des Oiseaux)");
}
sub ville_d_avray {
    return _french_location("Ville-d'Avray");
}
sub villefranche_sur_saone {
    return _french_location("Villefranche-sur-Saone");
}
sub villeneuve_sur_lot {
    return _french_location("Villeneuve-sur-Lot");
}
sub villers_cotterets {
    return _french_location("Villers-Cotterets");
}
sub villers_sur_mer {
    return _french_location("Villers-sur-Mer");
}
sub villeurbanne {
    return _french_location("Villeurbanne");
}
sub villie_morgon {
    return _french_location("Villié-Morgon");
}
sub vire {
    return _french_location("Vire");
}
sub viry_chatillon {
    return _french_location("Viry-Chatillon");
}
sub vitre {
    return _french_location("Vitre");
}
sub vittel {
    return _french_location("Vittel");
}
sub vizelle {
    return _french_location("Vizelle");
}
sub vouvray {
    return _french_location("Vouvray");
}
sub voreppe {
    return _french_location("Voreppe");
}

# W
sub wasquehal {
    return _french_location("Wasquehal");
}

sub _french_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $france );
}

1;
