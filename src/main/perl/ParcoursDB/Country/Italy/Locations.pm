package ParcoursDB::Country::Italy::Locations;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
    abano_terme
    abbadia_san_salvatore
    abbazia
    abbiategrasso
    abetone
    acquappesa
    acqui_terme
    agile
    agordo
    agrigento
    agropoli
    alassio
    alba
    alba_adriatica
    albenga
    albese_con_cassano
    alessandria
    alghero
    alleghe
    alpe_di_pampeago
    alpe_di_siusi
    altopiano_del_montasio
    amalfi
    amantea
    amatrice
    anagi
    ancona
    andalo
    aosta
    arabba
    arco
    arcore
    arenzano
    arezzo
    arona
    arosio
    arta_terme
    arzignano
    ascoli_piceno
    asiago
    asolo
    assisi
    asti
    aulla
    auronzo_di_cadore
    autodromo_enzo_e_dino_ferrari
    avellino
    aversa
    avezzano
    bacoli
    bagni_di_casciana_terme
    bagno_di_romagna
    bagnoli_irpino
    baia_domizia
    barbaresco
    barberino_di_mugello
    bardolino
    bardonecchia
    bari
    barletta
    barolo
    barumini
    barzio
    baselga_di_pine
    bassano_del_grappa
    bellaria
    belluno
    belluno_nevegal
    belvedere_marittimo
    benevento
    bergamo
    bezzecca
    biandronno
    bibbiena
    bibione
    biella
    binago
    bitonto
    blockhaus
    boario_terme
    bologna
    bolsena
    bolzano
    bordighera
    borgo
    borgo_a_mozzano
    borgo_san_dalmazzo
    borgo_val_di_taro
    borgo_valsugana
    borgomanero
    bormio
    bormio2000
    borno
    bosa
    bosco_chiesanuova
    bra
    brentonico
    brescia
    brescia_sant_eufemia
    bressanone
    breuil_cervinia
    brindisi
    brixen
    bruneck
    bucchianico
    busseto
    busto_arsizio
    cagliari
    caldes_val_di_sole
    caltagirone
    caltanissetta
    camaiore
    cambiago
    camigliatello_silano
    campi_bisenzio
    campi_salentina
    campione_d_italia
    campitello_matese
    campo_dei_fiori
    campobasso
    campotenese
    canazei
    canelli
    cannobio
    cantu
    capannori
    capo_d_orlando
    caprera
    capua
    caravaggio
    carovigno
    carpegna
    carpi
    carrara
    casale_monferrato
    cascata_del_toce
    cascia
    casciana_terme
    cascina
    caserta
    cassano_d_adda
    cassino
    casteggio
    castel_gandolfo
    castelfidardo
    castelfranco_veneto
    castellammare_di_stabia
    castellamonte
    castellana_grotte
    castellania
    castelnuouvo_di_val_di_cecina
    castelraimondo
    castelrotto
    castigilione_della_pescaia
    castiglione_del_lago
    castiglione_della_pescaia
    castrocaro_terme
    castrovillari
    catania
    catanzaro
    catanzaro_lido
    catanzaro_lungomare
    cattolica
    cava_de_tirreni
    cavalese
    cave_del_predil
    cave_di_carrara
    cecina
    cefalu
    celano
    celle_ligure
    cellole
    cenate_sotto
    cento
    cepagatti
    certosa_di_pavia
    cervere
    cervia
    cervinia
    cesana_torinese
    cesano_maderno
    cesena
    cesenatico
    cherasco
    chianale
    chianciano
    chianciano_terme
    chiavari
    chiavenna
    chieri
    chiesa_in_valmalenco
    chieti
    chioggia
    cima_grappa
    circuito_del_mugello
    circuito_di_lido_d_albaro
    citta_di_castello
    citta_sant_angelo
    cittadella
    cittareale
    cividale_del_fruili
    civitanova_marche
    civitavecchia
    civitella_di_val_di_chiana
    cles
    clusone
    col_du_galibier_valloire
    collecchio
    colle_don_bosco
    colli_di_san_fermo
    collina_di_superga
    comacchio
    comerio
    commezzadura
    como
    conegliano
    contursi_terme
    copertino
    cordenons
    corinaldo
    corno_alle_scale
    cortina_d_ampezzo
    cortona
    corvara
    cosenza
    courmayeur
    cremona
    crotone
    cuneo
    dalmine
    darfo_boario_terme
    desenzano_del_garda
    diamante
    diano_marina
    dimaro
    dobbiaco
    domodossola
    donoratico
    dozza
    edolo
    empoli
    erba
    erbusco
    ercolano
    erto_e_casso
    esanatoglia
    etna
    fabriano
    faenza
    falcade
    fano
    felino
    feltre
    fermo
    ferrara
    fidenza
    fiera_di_primiero
    fiorano_modenese
    firenze
    fiuggi
    florence
    foggia
    folgaria
    folgarida
    foligno
    follonica
    fondo_sarnonico
    foppolo
    forio
    forli
    formia
    forte_dei_marmi
    fossacesia
    fossano
    frabosa_soprana
    francavilla_al_mare
    frascati
    frosinone
    fucecchio
    gabicce_mare
    gaeta
    gallarate
    garda
    gardeccia_val_di_fassa
    gardone_riviera
    gatteo_a_mare
    gemona_del_friuli
    genoa
    giffoni_valle_piana
    giovinazzo
    giulianova
    gorizia
    gradisca_d_isonzo
    grado
    gran_sasso_d_italia
    gravellona_toce
    gressoney_saint_jean
    grinzane_cavour
    grosseto
    gualdo_tadino
    guardiagrele
    gubbio
    guilianova
    igea_marina
    il_ciocco
    imola
    imperia
    indicatore
    inverigo
    ischia
    iseo
    isernia
    ivrea
    jesi
    jesolo
    l_aquila
    la_maddalena
    la_spezia
    la_thuile
    laga_laceno
    lago_di_piediluco
    lago_di_scanno
    lago_laceno
    lago_miseno
    lainate
    lamporecchio
    lanciano
    langhirano
    larciano
    latina
    lauria
    lavagna
    lavarone
    lecce
    lecco
    lecco_pian_dei_resinelli
    legnago
    lerici
    levico_terme
    lido_d_albaro
    lido_degli_estensi
    lido_delle_nazioni
    lido_di_caldonazzo
    lido_di_camaiore
    lido_di_jesolo
    lido_venice
    lignano_sabbiadoro
    limone_piemonte
    limone_sul_garda
    lissone
    livigno
    livorno
    loano
    lodi
    longarne
    longarone
    loreto
    loreto_aprutino
    lovere
    lucca
    lucera
    lugo
    luino
    lumezzane
    macerata
    macugnaga
    maddaloni
    madesimo
    madonna_di_campiglio
    madonna_di_san_luca
    maielletta
    malcesine
    male
    maniago
    mantua
    maratea
    marcianise
    marconia_di_pisticci
    mareo
    margherita_di_savoia
    marina_di_ascea
    marina_di_carrara
    marina_di_grosseto
    marina_di_massa
    marina_di_pietrasanta
    marina_di_pisa
    marina_di_ravenna
    marina_di_san_vito
    marina_romea
    marino_di_massa
    marmolada
    marostica
    marotta
    marsala
    martell
    massiccio_del_sirino
    matera
    mazzin
    meda
    melfi
    mentana
    merano
    merano2000
    mercogliano
    mergozzo
    messina
    mestre
    metaponto
    mezzocorona
    mezzolombardo
    milan
    milazzo
    mira
    mirandola
    misurina
    modena
    modica
    modigiliana
    moena
    mola_di_bari
    molfetta
    molveno
    mondolfo
    mondovi
    mondragone
    monesi
    montalcino
    montalto_di_castro
    monte_argentario
    monte_bondone
    monte_carpegna
    monte_di_procida
    monte_generoso
    monte_maddalena
    monte_petrano
    monte_san_vicino
    monte_terminillo
    monte_trebbio
    montebelluna
    montecampione
    montecassino
    montecatini
    montecatini_terme
    montecchio_maggiore
    montecopiolo
    montefalco
    montefiascone
    montelibretti
    montella
    monteluco_di_spoleto
    montenero_di_bisaccia
    montepulciano
    montesano_sulla_marcellana
    montesilvano
    montevarchi
    montevergine_di_mercogliano
    monticello_brianza
    monza
    morbegno
    mori
    mount_etna
    mount_vesuvius
    muggio
    museo_del_ghisallo
    naples
    narni_scalo
    nervesa_della_battaglia
    nettuno
    neumarkt
    nevegal
    nicotera
    noale
    nola
    noto
    novara
    novi_ligure
    numana
    olbia
    oneglia
    orbetello
    oropa
    orta_san_giulio
    ortisei
    ortona
    orvieto
    osimo
    ostuni
    ozegna
    padua
    padula
    paestum
    palazzolo_sull_oglio
    palermo
    palinuro
    palmanova
    palmi
    panicagliora_marliana
    paola
    parabiago
    parma
    passo_del_bocco
    passo_del_tonale
    passo_di_pampeagno
    passo_di_san_pellegrino
    passo_fedaia
    pavia
    pedara
    pedavena
    peio
    peio_terme
    penne
    pergola
    perugia
    pesaro
    pescara
    pescasseroli
    peschici
    pesco_sannita
    pescocostanzo
    pfalzen
    piacenza
    pian_del_re
    pian_del_resinelli
    piancavallo
    piancogno
    pienza
    pietra_ligure
    pietrasanta
    pieve_di_cadore
    pieve_di_cento
    pila
    pinerolo
    pineta_di_cervia
    pinzolo
    piombino
    pisa
    pistoia
    pizzo
    pizzo_calabro
    plan_de_corones
    plan_di_montecampione
    poggibonsi
    poggio
    poggio_di_san_remo
    policastro_bussentino
    policoro
    polla
    polsa
    pomarance
    pompeii
    pont_saint_martin
    ponte
    ponte_di_legno
    pontechianale
    pontedera
    pontoglio
    pontremoli
    pordenone
    porretta_terme
    porteferraio
    porto_azzurro
    porto_recanati
    porto_san_giorgio
    porto_sant_elpidio
    portocivitanova
    portoferraio
    portorose
    portovenere
    potenza
    pozza_di_fassa
    praia_a_mare
    prati_di_tivo
    prato
    prato_nevoso
    predappio
    predazzo
    presolana
    quarto_dei_mille
    racconigi
    rapallo
    ravello
    ravenna
    recanati
    recoaro_terme
    reggello
    reggio_calabria
    reggio_emilia
    riccione
    riese_pio_x
    rieti
    rifugio_panarotta
    rimini
    rio_marina
    riolo_terme
    riomaggiore
    riva_del_garda
    rivarolo_canavese
    rivisondoli
    rocca_di_cambio
    rocca_di_papa
    rocca_pietore
    roccaraso
    rodi_garganico
    rome
    rossanto_veneto
    rovato
    rovereto
    rovetta
    rovigo
    sacro_monte_di_varese
    saint_vincent
    sala_baganza
    sala_consilina
    salerno
    salice_terme
    salo
    salsomaggiore_terme
    saltara
    saluzzo
    sampeyre
    san_benedetto_del_tronto
    san_dona_di_piave
    san_giacomo_di_roburent
    san_giacomo_di_valle_castellana
    san_giorgio_del_sannio
    san_giorgio_piacentino
    san_giovanni_rotondo
    san_lorenzo_al_mare
    san_luca
    san_marcello_pistoiese
    san_pellegrino_terme
    san_remo
    san_romolo
    san_salvo
    san_severo
    san_vendemiano
    san_vigillo_di_marebbe
    san_vincenzo
    san_vito_al_tagliamento
    san_vito_di_cadore
    sanctuario_di_vicoforte
    sansepolcro
    sant_anna_di_vinadio
    santa_caterina_di_valfurva
    santa_maria_capua_vetere
    santa_margherita_ligure
    santa_maria_del_cedro
    santa_maria_della_versa
    santa_maria_di_sala
    santarcangelo_di_romagna
    santuario_di_oropa
    santuario_nostra_signora_della_guardia
    sanuario_di_vicoforte
    sappada
    sapri
    sarezzo
    sarnico
    sarnonico
    saronno
    sarzana
    sassari
    sassono
    sassuolo
    sauze_d_oulx
    savigliano
    savona
    scalea
    scalenghe
    scanno
    scarperia
    schio
    schlanders
    schnals
    sciacca
    scilla
    sella_valsugana
    selva
    selva_di_fasano
    selva_di_val_gardena
    selvino
    senigallia
    seravezza
    seregno
    serniga_di_salo
    serra_san_bruno
    serraville_scrivia
    sestola
    sestri_levante
    siena
    sillian
    silvi_marina
    sinalunga
    siracusa
    sirmione
    soave
    sondrio
    sora
    sorrento
    sottomarina_di_chioggia
    spilimbergo
    spoleto
    spondigna
    stradella
    sulden
    sulmona
    susa
    tabiano_terme
    taormina
    taranto
    tarvisio
    teano
    telese_terme
    tempio_pausania
    teramo
    term_luigiane
    termamo
    terme_di_comano
    terme_euganee
    terme_la_calda
    terme_luigiane
    termoli
    terni
    terracina
    tirano
    tivoli
    todi
    tolmezzo
    torino
    tortoli
    tortona
    tortoreto
    tortoreto_lido
    tramin
    trani
    tre_cime_di_lavaredo
    trento
    trescore
    trescore_balneario
    trevi
    treviglio
    treviso
    trieste
    tropea
    turbigo
    turin
    udine
    uliveto_terme
    urbania
    urbino
    urtijei
    vajolet_towers
    val_martello
    valdaora
    valdengo
    valdobbiadene
    valenza
    valico_del_vetriolo
    vallombrosa
    valmontone
    valnontey_di_cogne
    varazze
    varese
    varzi
    vasto
    vedelago
    veneria_reale
    venezia
    venice
    verbania
    vercelli
    verona
    verres
    vestone
    viareggio
    vibo_valentia
    vicenza
    vicenza_monte_berico
    vieste
    vigevano
    viggiano
    vigo_di_fassa
    villa_di_tirano
    villa_san_giovanni
    villafranca
    villafranca_tirrena
    villapiana_lido
    vinci
    viterbo
    vittorio_veneto
    voghera
    zingonia
    zoldo_alto
);

use ParcoursDB::Country::Italy;
use ParcoursDB::Location;

my $italy = ParcoursDB::Country::Italy->new;

# A
sub abano_terme {
    return _italian_location("Abano Terme");
}

sub abbadia_san_salvatore {
    return _italian_location("Abbadia San Salvatore");
}

sub abbazia {
    return _italian_location("Abbazia");
}

sub abbiategrasso {
    return _italian_location("Abbiategrasso");
}

sub abetone {
    return _italian_location("Abetone");
}

sub acquappesa {
    return _italian_location("Acquappesa");
}

sub acqui_terme {
    return _italian_location("Acqui Terme");
}

sub agile {
    return _italian_location("Agile");
}

sub agordo {
    return _italian_location("Agordo");
}

sub agrigento {
    return _italian_location("Agrigento");
}

sub agropoli {
    return _italian_location("Agropoli");
}

sub alassio {
    return _italian_location("Alassio");
}

sub alba {
    return _italian_location("Alba");
}

sub alba_adriatica {
    return _italian_location("Alba Adriatica");
}

sub albenga {
    return _italian_location("Albenga");
}

sub albese_con_cassano {
    return _italian_location("Albese con Cassano");
}

sub alessandria {
    return _italian_location("Alessandria");
}

sub alghero {
    return _italian_location("Alghero");
}

sub alleghe {
    return _italian_location("Alleghe");
}

sub alpe_di_pampeago {
    return _italian_location("Alpe di Pampeago");
}

sub alpe_di_siusi {
    return _italian_location("Alpe di Siusi");
}

sub altopiano_del_montasio {
    return _italian_location("Altopiano del Montasio");
}

sub amalfi {
    return _italian_location("Amalfi");
}

sub amantea {
    return _italian_location("Amantea");
}

sub amatrice {
    return _italian_location("Amatrice");
}

sub anagi {
    return _italian_location("Anagi");
}

sub ancona {
    return _italian_location("Ancona");
}

sub andalo {
    return _italian_location("Andalo");
}

sub aosta {
    return _italian_location("Aosta");
}

sub arabba {
    return _italian_location("Arabba");
}

sub arco {
    return _italian_location("Arco");
}

sub arcore {
    return _italian_location("Arcore");
}

sub arenzano {
    return _italian_location("Arenzano");
}

sub arezzo {
    return _italian_location("Arezzo");
}

sub arona {
    return _italian_location("Arona");
}

sub arosio {
    return _italian_location("Arosio");
}

sub arta_terme {
    return _italian_location("Arta Terme");
}

sub arzignano {
    return _italian_location("Arzignano");
}

sub ascoli_piceno {
    return _italian_location("Ascoli Piceno");
}

sub asiago {
    return _italian_location("Asiago");
}

sub asolo {
    return _italian_location("Asolo");
}

sub assisi {
    return _italian_location("Assisi");
}

sub asti {
    return _italian_location("Asti");
}

sub aulla {
    return _italian_location("Aulla");
}

sub auronzo_di_cadore {
    return _italian_location("Auronzo di Cadore");
}

sub autodromo_enzo_e_dino_ferrari {
    return _italian_location("Imola (Autodromo Enzo e Dino Ferrari)");
}

sub avellino {
    return _italian_location("Avellino");
}

sub aversa {
    return _italian_location("Aversa");
}

sub avezzano {
    return _italian_location("Avezzano");
}

# B
sub bacoli {
    return _italian_location("Bacoli");
}

sub bagni_di_casciana_terme {
    return _italian_location("Bagni di Casciana Terme");
}

sub bagno_di_romagna {
    return _italian_location("Bagno di Romagna");
}

sub bagnoli_irpino {
    return _italian_location("Bagnoli Irpino");
}

sub baia_domizia {
    return _italian_location("Baia Domizia");
}

sub barbaresco {
    return _italian_location("Barbaresco");
}

sub barberino_di_mugello {
    return _italian_location("Barberino di Mugello");
}

sub bardolino {
    return _italian_location("Bardolino");
}

sub bardonecchia {
    return _italian_location("Bardonecchia");
}

sub bari {
    return _italian_location("Bari");
}

sub barletta {
    return _italian_location("Barletta");
}

sub barolo {
    return _italian_location("Barolo");
}

sub barumini {
    return _italian_location("Barumini");
}

sub barzio {
    return _italian_location("Barzio");
}

sub baselga_di_pine {
    return _italian_location("Baselga di Pine");
}

sub bassano_del_grappa {
    return _italian_location("Bassano del Grappa");
}

sub bellaria {
    return _italian_location("Bellaria");
}

sub belluno {
    return _italian_location("Belluno");
}

sub belluno_nevegal {
    return _italian_location("Belluno Nevegal");
}

sub belvedere_marittimo {
    return _italian_location("Belvedere Marittimo");
}

sub benevento {
    return _italian_location("Benevento");
}

sub bergamo {
    return _italian_location("Bergamo");
}

sub bezzecca {
    return _italian_location("Bezzecca");
}

sub biandronno {
    return _italian_location("Biandronno");
}

sub bibbiena {
    return _italian_location("Bibbiena");
}

sub bibione {
    return _italian_location("Bibione");
}

sub biella {
    return _italian_location("Biella");
}

sub binago {
    return _italian_location("Binago");
}

sub bitonto {
    return _italian_location("Bitonto");
}

sub blockhaus {
    return _italian_location("Blockhaus");
}

sub boario_terme {
    return _italian_location("Boario Terme");
}

sub bologna {
    return _italian_location("Bologna");
}

sub bolsena {
    return _italian_location("Bolsena");
}

sub bolzano {
    return _italian_location("Bolzano");
}

sub bordighera {
    return _italian_location("Bordighera");
}

sub borgo {
    return _italian_location("Borgo Val di Taro");
}

sub borgo_a_mozzano {
    return _italian_location("Borgo a Mozzano");
}

sub borgo_san_dalmazzo {
    return _italian_location("Borgo San Dalmazzo");
}

sub borgo_val_di_taro {
    return _italian_location("Borgo Val di Taro");
}

sub borgo_valsugana {
    return _italian_location("Borgo Valsugana");
}

sub borgomanero {
    return _italian_location("Borgomanero");
}

sub bormio {
    return _italian_location("Bormio");
}

sub bormio2000 {
    return _italian_location("Bormio 2000");
}

sub borno {
    return _italian_location("Borno");
}

sub bosa {
    return _italian_location("Bosa");
}

sub bosco_chiesanuova {
    return _italian_location("Bosco Chiesanuova");
}

sub bra {
    return _italian_location("Bra");
}

sub brentonico {
    return _italian_location("Brentonico");
}

sub brescia {
    return _italian_location("Brescia");
}

sub brescia_sant_eufemia {
    return _italian_location("Brescia Sant'Eufemia");
}

sub bressanone {
    return _italian_location("Bressanone");
}

sub breuil_cervinia {
    return _italian_location("Breuil-Cervinia");
}

sub brindisi {
    return _italian_location("Brindisi");
}

sub brixen {
    return _italian_location("Brixen");
}

sub bruneck {
    return _italian_location("Bruneck");
}

sub bucchianico {
    return _italian_location("Bucchianico");
}

sub busseto {
    return _italian_location("Busseto");
}

sub busto_arsizio {
    return _italian_location("Busto Arsizio");
}

# C
sub cagliari {
    return _italian_location("Cagliari");
}

sub caldes_val_di_sole {
    return _italian_location("Caldes-Val di Sole");
}

sub caltagirone {
    return _italian_location("Caltagirone");
}

sub caltanissetta {
    return _italian_location("Caltanissetta");
}

sub camaiore {
    return _italian_location("Camaiore");
}

sub cambiago {
    return _italian_location("Cambiago");
}

sub camigliatello_silano {
    return _italian_location("Camigliatello Silano");
}

sub campi_bisenzio {
    return _italian_location("Campi Bisenzio");
}

sub campi_salentina {
    return _italian_location("Campi Salentina");
}

sub campione_d_italia {
    return _italian_location("Campione d'Italia");
}

sub campitello_matese {
    return _italian_location("Campitello Matese");
}

sub campo_dei_fiori {
    return _italian_location("Campo dei Fiori");
}

sub campobasso {
    return _italian_location("Campobasso");
}

sub campotenese {
    return _italian_location("Campotenese");
}

sub canazei {
    return _italian_location("Canazei");
}

sub canelli {
    return _italian_location("Canelli");
}

sub cannobio {
    return _italian_location("Cannobio");
}

sub cantu {
    return _italian_location("Cantu");
}

sub capannori {
    return _italian_location("Capannori");
}

sub capo_d_orlando {
    return _italian_location("Capo d'Orlando");
}

sub caprera {
    return _italian_location("Caprera");
}

sub capua {
    return _italian_location("Capua");
}

sub caravaggio {
    return _italian_location("Caravaggio");
}

sub carovigno {
    return _italian_location("Carovigno");
}

sub carpegna {
    return _italian_location("Carpegna");
}

sub carpi {
    return _italian_location("Carpi");
}

sub carrara {
    return _italian_location("Carrara");
}

sub casale_monferrato {
    return _italian_location("Casale Monferrato");
}

sub cascata_del_toce {
    return _italian_location("Cascata del Toce");
}

sub cascia {
    return _italian_location("Cascia");
}

sub casciana_terme {
    return _italian_location("Casciana Terme");
}

sub cascina {
    return _italian_location("Cascina");
}

sub caserta {
    return _italian_location("Caserta");
}

sub cassano_d_adda {
    return _italian_location("Cassano d'Adda");
}

sub cassino {
    return _italian_location("Cassino");
}

sub casteggio {
    return _italian_location("Casteggio");
}

sub castel_gandolfo {
    return _italian_location("Castel Gandolfo");
}

sub castelfidardo {
    return _italian_location("Castelfidardo");
}

sub castelfranco_veneto {
    return _italian_location("Castelfranco Veneto");
}

sub castellammare_di_stabia {
    return _italian_location("Castellammare di Stabia");
}

sub castellamonte {
    return _italian_location("Castellamonte");
}

sub castellana_grotte {
    return _italian_location("Castellana Grotte");
}

sub castellania {
    return _italian_location("Castellania");
}

sub castelnuouvo_di_val_di_cecina {
    return _italian_location("Castelnuouvo di Val di Cecina");
}

sub castelraimondo {
    return _italian_location("Castelraimondo");
}

sub castelrotto {
    return _italian_location( "Castelrotto" );
}

sub castigilione_della_pescaia {
    return _italian_location("Castiglione della Pescaia");
}

sub castiglione_del_lago {
    return _italian_location("Castiglione del Lago");
}

sub castiglione_della_pescaia {
    return _italian_location("Castiglione della Pescaia");
}

sub castrocaro_terme {
    return _italian_location("Castrocaro Terme");
}

sub castrovillari {
    return _italian_location("Castrovillari");
}

sub catania {
    return _italian_location("Catania");
}

sub catanzaro {
    return _italian_location("Catanzaro");
}

sub catanzaro_lido {
    return _italian_location("Catanzaro Lido");
}

sub catanzaro_lungomare {
    return _italian_location("Catanzaro-Lungomare");
}

sub cattolica {
    return _italian_location("Cattolica");
}

sub cava_de_tirreni {
    return _italian_location("Cava de'Tirreni");
}

sub cavalese {
    return _italian_location("Cavalese");
}

sub cave_del_predil {
    return _italian_location("Cave del Predil");
}

sub cave_di_carrara {
    return _italian_location("Cave di Carrara");
}

sub cecina {
    return _italian_location("Cecina");
}

sub cefalu {
    return _italian_location("Cefalu");
}

sub celano {
    return _italian_location("Celano");
}

sub celle_ligure {
    return _italian_location("Celle Ligure");
}

sub cellole {
    return _italian_location("Cellole");
}

sub cenate_sotto {
    return _italian_location("Cenate Sotto");
}

sub cento {
    return _italian_location("Cento");
}

sub cepagatti {
    return _italian_location("Cepagatti");
}

sub certosa_di_pavia {
    return _italian_location("Certosa di Pavia");
}

sub cervere {
    return _italian_location("Cervere");
}

sub cervia {
    return _italian_location("Cervia");
}

sub cervinia {
    return _italian_location("Cervinia");
}

sub cesana_torinese {
    return _italian_location("Cesana Torinese");
}

sub cesano_maderno {
    return _italian_location("Cesano Maderno");
}

sub cesena {
    return _italian_location("Cesena");
}

sub cesenatico {
    return _italian_location("Cesenatico");
}

sub cherasco {
    return _italian_location("Cherasco");
}

sub chianale {
    return _italian_location("Chianale");
}

sub chianciano {
    return _italian_location("Chianciano");
}

sub chianciano_terme {
    return _italian_location("Chianciano Terme");
}

sub chiavari {
    return _italian_location("Chiavari");
}

sub chiavenna {
    return _italian_location("Chiavenna");
}

sub chieri {
    return _italian_location("Chieri");
}

sub chiesa_in_valmalenco {
    return _italian_location("Chiesa in Valmalenco");
}

sub chieti {
    return _italian_location("Chieti");
}

sub chioggia {
    return _italian_location("Chioggia");
}

sub cima_grappa {
    return _italian_location("Cima Grappa");
}

sub circuito_del_mugello {
    return _italian_location("Circuito del Mugello");
}

sub circuito_di_lido_d_albaro {
    return _italian_location("Circuito di Lido d'Albaro");
}

sub citta_di_castello {
    return _italian_location("Citta di Castello");
}

sub citta_sant_angelo {
    return _italian_location("Citta Sant'Angelo");
}

sub cittadella {
    return _italian_location("Cittadella");
}

sub cittareale {
    return _italian_location("Cittareale");
}

sub cividale_del_fruili {
    return _italian_location("Cividale del Friuli");
}

sub civitanova_marche {
    return _italian_location("Civitanova Marche");
}

sub civitavecchia {
    return _italian_location("Civitavecchia");
}

sub civitella_di_val_di_chiana {
    return _italian_location("Civitella di Val di Chiana");
}

sub cles {
    return _italian_location("Cles");
}

sub clusone {
    return _italian_location("Clusone");
}

sub col_du_galibier_valloire {
    return _italian_location("Col du Galibier Valloire");
}

sub collecchio {
    return _italian_location("Collecchio");
}

sub colle_don_bosco {
    return _italian_location("Colle Don Bosco");
}

sub colli_di_san_fermo {
    return _italian_location("Colli di San Fermo");
}

sub collina_di_superga {
    return _italian_location("Collina di Superga");
}

sub comacchio {
    return _italian_location("Comacchio");
}

sub comerio {
    return _italian_location("Comerio");
}

sub commezzadura {
    return _italian_location("Commezzadura");
}

sub como {
    return _italian_location("Como");
}

sub conegliano {
    return _italian_location("Conegliano");
}

sub contursi_terme {
    return _italian_location("Contursi Terme");
}

sub copertino {
    return _italian_location("Copertino");
}

sub cordenons {
    return _italian_location("Cordenons");
}

sub corinaldo {
    return _italian_location("Corinaldo");
}

sub corno_alle_scale {
    return _italian_location("Corno alle Scale");
}

sub cortina_d_ampezzo {
    return _italian_location("Cortina d'Ampezzo");
}

sub cortona {
    return _italian_location("Cortona");
}

sub corvara {
    return _italian_location("Corvara");
}

sub cosenza {
    return _italian_location("Cosenza");
}

sub courmayeur {
    return _italian_location("Courmayeur");
}

sub cremona {
    return _italian_location("Cremona");
}

sub crotone {
    return _italian_location("Crotone");
}

sub cuneo {
    return _italian_location("Cuneo");
}

# D
sub dalmine {
    return _italian_location("Dalmine");
}

sub darfo_boario_terme {
    return _italian_location("Darfo Boario Terme");
}

sub desenzano_del_garda {
    return _italian_location("Desenzano del Garda");
}

sub diamante {
    return _italian_location("Diamante");
}

sub diano_marina {
    return _italian_location("Diano Marina");
}

sub dimaro {
    return _italian_location("Dimaro");
}

sub dobbiaco {
    return _italian_location("Dobbiaco");
}

sub domodossola {
    return _italian_location("Domodossola");
}

sub donoratico {
    return _italian_location("Donoratico");
}

sub dozza {
    return _italian_location("Dozza");
}

# E
sub edolo {
    return _italian_location("Edolo");
}

sub empoli {
    return _italian_location("Empoli");
}

sub erba {
    return _italian_location("Erba");
}

sub erbusco {
    return _italian_location("Erbusco");
}

sub ercolano {
    return _italian_location("Ercolano");
}

sub erto_e_casso {
    return _italian_location("Erto e Casso");
}

sub esanatoglia {
    return _italian_location("Esanatoglia");
}

sub etna {
    return _italian_location("Etna");
}

# F
sub fabriano {
    return _italian_location("Fabriano");
}

sub faenza {
    return _italian_location("Faenza");
}

sub falcade {
    return _italian_location("Falcade");
}

sub fano {
    return _italian_location("Fano");
}

sub felino {
    return _italian_location("Felino");
}

sub feltre {
    return _italian_location("Feltre");
}

sub fermo {
    return _italian_location("Fermo");
}

sub ferrara {
    return _italian_location("Ferrara");
}

sub fidenza {
    return _italian_location("Fidenza");
}

sub fiera_di_primiero {
    return _italian_location("Fiera di Primiero");
}

sub fiorano_modenese {
    return _italian_location("Fiorano Modenese");
}

sub firenze {
    return _italian_location("Firenze");
}

sub fiuggi {
    return _italian_location("Fiuggi");
}

sub florence {
    return _italian_location("Florence");
}

sub foggia {
    return _italian_location("Foggia");
}

sub folgaria {
    return _italian_location("Folgaria");
}

sub folgarida {
    return _italian_location("Folgarida");
}

sub foligno {
    return _italian_location("Foligno");
}

sub follonica {
    return _italian_location("Follonica");
}

sub fondo_sarnonico {
    return _italian_location("Fondo/Sarnonico");
}

sub foppolo {
    return _italian_location("Foppolo");
}

sub forio {
    return _italian_location("Forio");
}

sub forli {
    return _italian_location("Forlì");
}

sub formia {
    return _italian_location("Formia");
}

sub forte_dei_marmi {
    return _italian_location("Forte dei Marmi");
}

sub fossacesia {
    return _italian_location("Fossacesia");
}

sub fossano {
    return _italian_location("Fossano");
}

sub frabosa_soprana {
    return _italian_location("Frabosa Soprana");
}

sub francavilla_al_mare {
    return _italian_location("Francavilla al Mare");
}

sub frascati {
    return _italian_location("Frascati");
}

sub frosinone {
    return _italian_location("Frosinone");
}

sub fucecchio {
    return _italian_location("Fucecchio");
}

# G
sub gabicce_mare {
    return _italian_location("Gabicce Mare");
}

sub gaeta {
    return _italian_location("Gaeta");
}

sub gallarate {
    return _italian_location("Gallarate");
}

    return _italian_location("Garda");
sub garda {
}

sub gardeccia_val_di_fassa {
    return _italian_location("Gardeccia-Val di Fassa");
}

sub gardone_riviera {
    return _italian_location("Gardone Riviera");
}

sub gatteo_a_mare {
    return _italian_location("Gatteo a Mare");
}

sub gemona_del_friuli {
    return _italian_location("Gemona del Friuli");
}

sub genoa {
    return _italian_location("Genoa");
}

sub giffoni_valle_piana {
    return _italian_location("Giffoni Valle Piana");
}

sub giovinazzo {
    return _italian_location("Giovinazzo");
}

sub giulianova {
    return _italian_location("Giulianova");
}

sub gorizia {
    return _italian_location("Gorizia");
}

sub gradisca_d_isonzo {
    return _italian_location("Gradisca d'Isonzo");
}

sub grado {
    return _italian_location("Grado");
}

sub gran_sasso_d_italia {
    return _italian_location("Gran Sasso d'Italia");
}

sub gravellona_toce {
    return _italian_location("Gravellona Toce");
}

sub gressoney_saint_jean {
    return _italian_location("Gressoney-Saint-Jean");
}

sub grinzane_cavour {
    return _italian_location("Grinzane Cavour");
}

sub grosseto {
    return _italian_location("Grosseto");
}

sub gualdo_tadino {
    return _italian_location("Gualdo Tadino");
}

sub guardiagrele {
    return _italian_location("Guardiagrele");
}

sub gubbio {
    return _italian_location("Gubbio");
}

sub guilianova {
    return _italian_location("Guilianova");
}

# I
sub igea_marina {
    return _italian_location("Igea Marina");
}

sub il_ciocco {
    return _italian_location("Il Ciocco");
}

sub imola {
    return _italian_location("Imola");
}

sub imperia {
    return _italian_location("Imperia");
}

sub indicatore {
    return _italian_location("Indicatore");
}

sub inverigo {
    return _italian_location("Inverigo");
}

sub ischia {
    return _italian_location("Ischia");
}

sub iseo {
    return _italian_location("Iseo");
}

sub isernia {
    return _italian_location("Isernia");
}

sub ivrea {
    return _italian_location("Ivrea");
}

# J
sub jesi {
    return _italian_location("Jesi");
}

sub jesolo {
    return _italian_location("Jesolo");
}

# L
sub l_aquila {
    return _italian_location("L'Aquila");
}

sub la_maddalena {
    return _italian_location("La Maddalena");
}

sub la_spezia {
    return _italian_location("La Spezia");
}

sub la_thuile {
    return _italian_location("La Thuile");
}

sub laga_laceno {
    return _italian_location("Laga Laceno");
}

sub lago_di_piediluco {
    return _italian_location("Lago di Piediluco");
}

sub lago_di_scanno {
    return _italian_location("Lago di Scanno");
}

sub lago_laceno {
    return _italian_location("Lago Laceno");
}

sub lago_miseno {
    return _italian_location("Lago Miseno");
}

sub lainate {
    return _italian_location("Lainate");
}

sub lamporecchio {
    return _italian_location("Lamporecchio");
}

sub lanciano {
    return _italian_location("Lanciano");
}

sub langhirano {
    return _italian_location("Langhirano");
}

sub larciano {
    return _italian_location("Larciano");
}

sub latina {
    return _italian_location("Latina");
}

sub lauria {
    return _italian_location("Lauria");
}

sub lavagna {
    return _italian_location("Lavagna");
}

sub lavarone {
    return _italian_location("Lavarone");
}

sub lecce {
    return _italian_location("Lecce");
}

sub lecco {
    return _italian_location("Lecco");
}

sub lecco_pian_dei_resinelli {
    return _italian_location("Lecco-Pian dei Resinelli");
}

sub legnago {
    return _italian_location("Legnago");
}

sub lerici {
    return _italian_location("Lerici");
}

sub levico_terme {
    return _italian_location("Levico Terme");
}

sub lido_d_albaro {
    return _italian_location("Lido d'Albaro");
}

sub lido_degli_estensi {
    return _italian_location("Lido degli Estensi");
}

sub lido_delle_nazioni {
    return _italian_location("Lido delle Nazioni");
}

sub lido_di_caldonazzo {
    return _italian_location("Lido di Caldonazzo");
}

sub lido_di_camaiore {
    return _italian_location("Lido di Camaiore");
}

sub lido_di_jesolo {
    return _italian_location("Lido di Jesolo");
}

sub lido_venice {
    return _italian_location("Lido (Venice)");
}

sub lignano_sabbiadoro {
    return _italian_location("Lignano Sabbiadoro");
}

sub limone_piemonte {
    return _italian_location("Limone Piemonte");
}

sub limone_sul_garda {
    return _italian_location("Limone sul Garda");
}

sub lissone {
    return _italian_location("Lissone");
}

sub livigno {
    return _italian_location("Livigno");
}

sub livorno {
    return _italian_location("Livorno");
}

sub loano {
    return _italian_location("Loano");
}

sub lodi {
    return _italian_location("Lodi");
}

sub longarne {
    return _italian_location("Longarne");
}

sub longarone {
    return _italian_location("Longarone");
}

sub loreto {
    return _italian_location("Loreto");
}

sub loreto_aprutino {
    return _italian_location("Loreto Aprutino");
}

sub lovere {
    return _italian_location("Lovere");
}

sub lucca {
    return _italian_location("Lucca");
}

sub lucera {
    return _italian_location("Lucera");
}

sub lugo {
    return _italian_location("Lugo");
}

sub luino {
    return _italian_location("Luino");
}

sub lumezzane {
    return _italian_location("Lumezzane");
}

# M
sub macerata {
    return _italian_location("Macerata");
}

sub macugnaga {
    return _italian_location("Macugnaga");
}

sub maddaloni {
    return _italian_location("Maddaloni");
}

sub madesimo {
    return _italian_location("Madesimo");
}

sub madonna_di_campiglio {
    return _italian_location("Madonna di Campiglio");
}

sub madonna_di_san_luca {
    return _italian_location("Madonna di San Luca");
}

sub maielletta {
    return _italian_location("Maielletta");
}

sub malcesine {
    return _italian_location("Malcesine");
}

sub male {
    return _italian_location("Male");
}

sub maniago {
    return _italian_location("Maniago");
}

sub mantua {
    return _italian_location("Mantua");
}

sub maratea {
    return _italian_location("Maratea");
}

sub marcianise {
    return _italian_location("Marcianise");
}

sub marconia_di_pisticci {
    return _italian_location("Marconia di Pisticci");
}

sub mareo {
    return _italian_location("Mareo");
}

sub margherita_di_savoia {
    return _italian_location("Margherita di Savoia");
}

sub marina_di_ascea {
    return _italian_location("Marina di Ascea");
}

sub marina_di_carrara {
    return _italian_location("Marina di Carrara");
}

sub marina_di_grosseto {
    return _italian_location("Marina di Grosseto");
}

sub marina_di_massa {
    return _italian_location("Marina di Massa");
}

sub marina_di_pietrasanta {
    return _italian_location("Marina di Pietrasanta");
}

sub marina_di_pisa {
    return _italian_location("Marina di Pisa");
}

sub marina_di_ravenna {
    return _italian_location("Marina di Ravenna");
}

sub marina_di_san_vito {
    return _italian_location("Marina di San Vito");
}

sub marina_romea {
    return _italian_location("Marina Romea");
}

sub marino_di_massa {
    return _italian_location("Marino di Massa");
}

sub marmolada {
    return _italian_location("Marmolada");
}

sub marostica {
    return _italian_location("Marostica");
}

sub marotta {
    return _italian_location("Marotta");
}

sub marsala {
    return _italian_location("Marsala");
}

sub martell {
    return _italian_location("Martell");
}

sub massiccio_del_sirino {
    return _italian_location("Massiccio del Sirino");
}

sub matera {
    return _italian_location("Matera");
}

sub mazzin {
    return _italian_location("Mazzin");
}

sub meda {
    return _italian_location("Meda");
}

sub melfi {
    return _italian_location("Melfi");
}

sub mentana {
    return _italian_location("Mentana");
}

sub merano {
    return _italian_location("Merano");
}

sub merano2000 {
    return _italian_location("Merano 2000");
}

sub mercogliano {
    return _italian_location("Mercogliano");
}

sub mergozzo {
    return _italian_location("Mergozzo");
}

sub messina {
    return _italian_location("Messina");
}

sub mestre {
    return _italian_location("Mestre");
}

sub metaponto {
    return _italian_location("Metaponto");
}

sub mezzocorona {
    return _italian_location("Mezzocorona");
}

sub mezzolombardo {
    return _italian_location("Mezzolombardo");
}

sub milan {
    return _italian_location("Milan");
}

sub milazzo {
    return _italian_location("Milazzo");
}

sub mira {
    return _italian_location("Mira");
}

sub mirandola {
    return _italian_location("Mirandola");
}

sub misurina {
    return _italian_location("Misurina");
}

sub modena {
    return _italian_location("Modena");
}

sub modica {
    return _italian_location("Modica");
}

sub modigiliana {
    return _italian_location("Modigiliana");
}

sub moena {
    return _italian_location("Moena");
}

sub mola_di_bari {
    return _italian_location("Mola di Bari");
}

sub molfetta {
    return _italian_location("Molfetta");
}

sub molveno {
    return _italian_location("Molveno");
}

sub mondolfo {
    return _italian_location("Mondolfo");
}

sub mondovi {
    return _italian_location("Mondovi");
}

sub mondragone {
    return _italian_location("Mondragone");
}

sub monesi {
    return _italian_location("Monesi");
}

sub montalcino {
    return _italian_location("Montalcino");
}

sub montalto_di_castro {
    return _italian_location("Montalto di Castro");
}

sub monte_argentario {
    return _italian_location("Monte Argentario");
}

sub monte_bondone {
    return _italian_location("Monte Bondone");
}

sub monte_carpegna {
    return _italian_location("Monte Carpegna");
}

sub monte_di_procida {
    return _italian_location("Monte di Procida");
}

sub monte_generoso {
    return _italian_location("Monte Generoso");
}

sub monte_maddalena {
    return _italian_location("Monte Maddalena");
}

sub monte_petrano {
    return _italian_location("Monte Petrano");
}

sub monte_san_vicino {
    return _italian_location("Monte San Vicino");
}

sub monte_terminillo {
    return _italian_location("Monte Terminillo");
}

sub monte_trebbio {
    return _italian_location("Monte Trebbio");
}

sub montebelluna {
    return _italian_location("Montebelluna");
}

sub montecampione {
    return _italian_location("Montecampione");
}

sub montecassino {
    return _italian_location("Montecassino");
}

sub montecatini {
    return _italian_location("Montecatini");
}

sub montecatini_terme {
    return _italian_location("Montecatini Terme");
}

sub montecchio_maggiore {
    return _italian_location("Montecchio Maggiore");
}

sub montecopiolo {
    return _italian_location("Montecopiolo");
}

sub montefalco {
    return _italian_location("Montefalco");
}

sub montefiascone {
    return _italian_location("Montefiascone");
}

sub montelibretti {
    return _italian_location("Montelibretti");
}

sub montella {
    return _italian_location("Montella");
}

sub monteluco_di_spoleto {
    return _italian_location("Monteluco di Spoleto");
}

sub montenero_di_bisaccia {
    return _italian_location("Montenero di Bisaccia");
}

sub montepulciano {
    return _italian_location("Montepulciano");
}

sub montesano_sulla_marcellana {
    return _italian_location("Montesano sulla Marcellana");
}

sub montesilvano {
    return _italian_location("Montesilvano");
}

sub montevarchi {
    return _italian_location("Montevarchi");
}

sub montevergine_di_mercogliano {
    return _italian_location("Montevergine di Mercogliano");
}

sub monticello_brianza {
    return _italian_location("Monticello Brianza");
}

sub monza {
    return _italian_location("Monza");
}

sub morbegno {
    return _italian_location("Morbegno");
}

sub mori {
    return _italian_location("Mori");
}

sub mount_etna {
    return _italian_location("Mount Etna");
}

sub mount_vesuvius {
    return _italian_location("Mount Vesuvius");
}

sub muggio {
    return _italian_location("Muggio");
}

sub museo_del_ghisallo {
    return _italian_location("Museo del Ghisallo");
}

# N
sub naples {
    return _italian_location("Naples");
}

sub narni_scalo {
    return _italian_location("Narni Scalo");
}

sub nervesa_della_battaglia {
    return _italian_location("Nervesa della Battaglia");
}

sub nettuno {
    return _italian_location("Nettuno");
}

sub neumarkt {
    return _italian_location("Neumarkt");
}

sub nevegal {
    return _italian_location("Nevegal");
}

sub nicotera {
    return _italian_location("Nicotera");
}

sub noale {
    return _italian_location("Noale");
}

sub nola {
    return _italian_location("Nola");
}

sub noto {
    return _italian_location("Noto");
}

sub novara {
    return _italian_location("Novara");
}

sub novi_ligure {
    return _italian_location("Novi Ligure");
}

sub numana {
    return _italian_location("Numana");
}

# O
sub olbia {
    return _italian_location("Olbia");
}

sub oneglia {
    return _italian_location("Oneglia");
}

sub orbetello {
    return _italian_location("Orbetello");
}

sub oropa {
    return _italian_location("Oropa");
}

sub orta_san_giulio {
    return _italian_location("Orta San Giulio");
}

sub ortisei {
    return _italian_location("Ortisei");
}

sub ortona {
    return _italian_location("Ortona");
}

sub orvieto {
    return _italian_location("Orvieto");
}

sub osimo {
    return _italian_location("Osimo");
}

sub ostuni {
    return _italian_location("Ostuni");
}

sub ozegna {
    return _italian_location("Ozegna");
}

# P
sub padua {
    return _italian_location("Padua");
}

sub padula {
    return _italian_location("Padula");
}

sub paestum {
    return _italian_location("Paestum");
}

sub palazzolo_sull_oglio {
    return _italian_location("Palazzolo sull'Oglio");
}

sub palermo {
    return _italian_location("Palermo");
}

sub palinuro {
    return _italian_location("Palinuro");
}

sub palmanova {
    return _italian_location("Palmanova");
}

sub palmi {
    return _italian_location("Palmi");
}

sub panicagliora_marliana {
    return _italian_location("Panicagliora (Marliana)");
}

sub paola {
    return _italian_location("Paola");
}

sub parabiago {
    return _italian_location("Parabiago");
}

sub parma {
    return _italian_location("Parma");
}

sub passo_del_bocco {
    return _italian_location("Passo del Bocco");
}

sub passo_del_tonale {
    return _italian_location("Passo del Tonale");
}

sub passo_di_pampeagno {
    return _italian_location("Passo di Pampeagno");
}

sub passo_di_san_pellegrino {
    return _italian_location("Passo di San Pellegrino");
}

sub passo_fedaia {
    return _italian_location("Passo Fedaia");
}

sub pavia {
    return _italian_location("Pavia");
}

sub pedara {
    return _italian_location("Pedara");
}

sub pedavena {
    return _italian_location("Pedavena");
}

sub peio {
    return _italian_location("Peio");
}

sub peio_terme {
    return _italian_location("Peio Terme");
}

sub penne {
    return _italian_location("Penne");
}

sub pergola {
    return _italian_location("Pergola");
}

sub perugia {
    return _italian_location("Perugia");
}

sub pesaro {
    return _italian_location("Pesaro");
}

sub pescara {
    return _italian_location("Pescara");
}

sub pescasseroli {
    return _italian_location("Pescasseroli");
}

sub peschici {
    return _italian_location("Peschici");
}

sub pesco_sannita {
    return _italian_location("Pesco Sannita");
}

sub pescocostanzo {
    return _italian_location("Pescocostanzo");
}

sub pfalzen {
    return _italian_location("Pfalzen");
}

sub piacenza {
    return _italian_location("Piacenza");
}

sub pian_del_re {
    return _italian_location("Pian del Re");
}

sub pian_del_resinelli {
    return _italian_location("Pian del Resinelli");
}

sub piancavallo {
    return _italian_location("Piancavallo");
}

sub piancogno {
    return _italian_location("Piancogno");
}

sub pienza {
    return _italian_location("Pienza");
}

sub pietra_ligure {
    return _italian_location("Pietra Ligure");
}

sub pietrasanta {
    return _italian_location("Pietrasanta");
}

sub pieve_di_cadore {
    return _italian_location("Pieve di Cadore");
}

sub pieve_di_cento {
    return _italian_location("Pieve di Cento");
}

sub pila {
    return _italian_location("Pila");
}

sub pinerolo{
    return _italian_location("Pinerolo");
}

sub pineta_di_cervia {
    return _italian_location("Pineta di Cervia");
}

sub pinzolo {
    return _italian_location("Pinzolo");
}

sub piombino {
    return _italian_location("Piombino");
}

sub pisa {
    return _italian_location("Pisa");
}

sub pistoia {
    return _italian_location("Pistoia");
}

sub pizzo {
    return _italian_location("Pizzo");
}

sub pizzo_calabro {
    return _italian_location("Pizzo Calabro");
}

sub plan_de_corones {
    return _italian_location("Plan de Corones");
}

sub plan_di_montecampione {
    return _italian_location("Plan di Montecampione");
}

sub poggibonsi {
    return _italian_location("Poggibonsi");
}

sub poggio {
    return _italian_location("Poggio");
}

sub poggio_di_san_remo {
    return _italian_location("Poggio di San Remo");
}

sub policastro_bussentino {
    return _italian_location("Policastro Bussentino");
}

sub policoro {
    return _italian_location("Policoro");
}

sub polla {
    return _italian_location("Polla");
}

sub polsa {
    return _italian_location("Polsa");
}

sub pomarance {
    return _italian_location("Pomarance");
}

sub pompeii {
    return _italian_location("Pompeii");
}

sub pont_saint_martin {
    return _italian_location("Pont-Saint-Martin");
}

sub ponte {
    return _italian_location("Ponte");
}

sub ponte_di_legno {
    return _italian_location("Ponte di Legno");
}

sub pontechianale {
    return _italian_location("Pontechianale");
}

sub pontedera {
    return _italian_location("Pontedera");
}

sub pontoglio {
    return _italian_location("Pontoglio");
}

sub pontremoli {
    return _italian_location("Pontremoli");
}

sub pordenone {
    return _italian_location("Pordenone");
}

sub porretta_terme {
    return _italian_location("Porretta Terme");
}

sub porteferraio {
    return _italian_location("Porteferraio");
}

sub porto_azzurro {
    return _italian_location("Porto Azzurro");
}

sub porto_recanati {
    return _italian_location("Porto Recanati");
}

sub porto_san_giorgio {
    return _italian_location("Porto San Giorgio");
}

sub porto_sant_elpidio {
    return _italian_location("Porto Sant'Elpidio");
}

sub portocivitanova {
    return _italian_location("Portocivitanova");
}

sub portoferraio {
    return _italian_location("Portoferraio");
}

sub portorose {
    return _italian_location("Portorose");
}

sub portovenere {
    return _italian_location("Portovenere");
}

sub potenza {
    return _italian_location("Potenza");
}

sub pozza_di_fassa {
    return _italian_location("Pozza di Fassa");
}

sub praia_a_mare {
    return _italian_location("Praia a Mare");
}

sub prati_di_tivo {
    return _italian_location("Prati di Tivo");
}

sub prato {
    return _italian_location("Prato");
}

sub prato_nevoso {
    return _italian_location("Prato Nevoso");
}

sub predappio {
    return _italian_location("Predappio");
}

sub predazzo {
    return _italian_location("Predazzo");
}

sub presolana {
    return _italian_location("Presolana");
}

# Q
sub quarto_dei_mille {
    return _italian_location("Quarto dei Mille");
}

# R
sub racconigi {
    return _italian_location("Racconigi");
}

sub rapallo {
    return _italian_location("Rapallo");
}

sub ravello {
    return _italian_location("Ravello");
}

sub ravenna {
    return _italian_location("Ravenna");
}

sub recanati {
    return _italian_location("Recanati");
}

sub recoaro_terme {
    return _italian_location("Recoaro Terme");
}

sub reggello {
    return _italian_location("Reggello");
}

sub reggio_calabria {
    return _italian_location("Reggio Calabria");
}

sub reggio_emilia {
    return _italian_location("Reggio Emilia");
}

sub riccione {
    return _italian_location("Riccione");
}

sub riese_pio_x {
    return _italian_location("Riese Pio X");
}

sub rieti {
    return _italian_location("Rieti");
}

sub rifugio_panarotta {
    return _italian_location("Rifugio Panarotta");
}

sub rimini {
    return _italian_location("Rimini");
}

sub rio_marina {
    return _italian_location("Rio Marina");
}

sub riolo_terme {
    return _italian_location("Riolo Terme");
}

sub riomaggiore {
    return _italian_location("Riomaggiore");
}

sub riva_del_garda {
    return _italian_location("Riva del Garda");
}

sub rivarolo_canavese {
    return _italian_location("Rivarolo Canavese");
}

sub rivisondoli {
    return _italian_location("Rivisondoli");
}

sub rocca_di_cambio {
    return _italian_location("Rocca di Cambio");
}

sub rocca_di_papa {
    return _italian_location("Rocca di Papa");
}

sub rocca_pietore {
    return _italian_location("Rocca Pietore");
}

sub roccaraso {
    return _italian_location("Roccaraso");
}

sub rodi_garganico {
    return _italian_location("Rodi Garganico");
}

sub rome {
    return _italian_location("Rome");
}

sub rossanto_veneto {
    return _italian_location("Rossanto Veneto");
}

sub rovato {
    return _italian_location("Rovato");
}

sub rovereto {
    return _italian_location("Rovereto");
}

sub rovetta {
    return _italian_location("Rovetta");
}

sub rovigo {
    return _italian_location("Rovigo");
}

# S
sub sacro_monte_di_varese {
    return _italian_location("Sacro Monte di Varese");
}

sub saint_vincent {
    return _italian_location("Saint-Vincent");
}

sub sala_baganza {
    return _italian_location("Sala Baganza");
}

sub sala_consilina {
    return _italian_location("Sala Consilina");
}

sub salerno {
    return _italian_location("Salerno");
}

sub salice_terme {
    return _italian_location("Salice Terme");
}

sub salo {
    return _italian_location("Salo");
}

sub salsomaggiore_terme {
    return _italian_location("Salsomaggiore Terme");
}

sub saltara {
    return _italian_location("Saltara");
}

sub saluzzo {
    return _italian_location("Saluzzo");
}

sub sampeyre {
    return _italian_location("Sampeyre");
}

sub san_benedetto_del_tronto {
    return _italian_location("San Benedetto del Tronto");
}

sub san_dona_di_piave {
    return _italian_location("San Dona di Piave");
}

sub san_giacomo_di_roburent {
    return _italian_location("San Giacomo di Roburent");
}

sub san_giacomo_di_valle_castellana {
    return _italian_location("San Giacomo di Valle Castellana");
}

sub san_giorgio_del_sannio {
    return _italian_location("San Giorgio del Sannio");
}

sub san_giorgio_piacentino {
    return _italian_location("San Giorgio Piacentino");
}

sub san_giovanni_rotondo {
    return _italian_location("San Giovanni Rotondo");
}

sub san_lorenzo_al_mare {
    return _italian_location("San Lorenzo al Mare");
}

sub san_luca {
    return _italian_location("San Luca");
}

sub san_marcello_pistoiese {
    return _italian_location("San Marcello Pistoiese");
}

sub san_pellegrino_terme {
    return _italian_location("San Pellegrino Terme");
}

sub san_remo {
    return _italian_location("San Remo");
}

sub san_romolo {
    return _italian_location("San Romolo");
}

sub san_salvo {
    return _italian_location("San Salvo");
}

sub san_severo {
    return _italian_location("San Severo");
}

sub san_vendemiano {
    return _italian_location("San Vendemiano");
}

sub san_vigillo_di_marebbe {
    return _italian_location("San Vigillo di Marebbe");
}

sub san_vincenzo {
    return _italian_location("San Vincenzo");
}

sub san_vito_al_tagliamento {
    return _italian_location("San Vito al Tagliamento");
}

sub san_vito_di_cadore {
    return _italian_location("San Vito di Cadore");
}

sub sanctuario_di_vicoforte {
    return _italian_location("Sanctuario di Vicoforte");
}

sub sansepolcro {
    return _italian_location("Sansepolcro");
}

sub sant_anna_di_vinadio {
    return _italian_location("Sant'Anna di Vinadio");
}

sub santa_caterina_di_valfurva {
    return _italian_location("Santa Caterina di Valfurva");
}

sub santa_maria_capua_vetere {
    return _italian_location("Santa Maria Capua Vetere");
}

sub santa_margherita_ligure {
    return _italian_location("Santa Margherita Ligure");
}

sub santa_maria_del_cedro {
    return _italian_location("Santa Maria del Cedro");
}

sub santa_maria_della_versa {
    return _italian_location("Santa Maria della Versa");
}

sub santa_maria_di_sala {
    return _italian_location("Santa Maria di Sala");
}

sub santarcangelo_di_romagna {
    return _italian_location("Santarcangelo di Romagna");
}

sub santuario_di_oropa {
    return _italian_location("Santuario di Oropa");
}

sub santuario_nostra_signora_della_guardia {
    return _italian_location("Santuario Nostra Signora della Guardia");
}

sub sanuario_di_vicoforte {
    return _italian_location("Sanuario di Vicoforte");
}

sub sappada {
    return _italian_location("Sappada");
}

sub sapri {
    return _italian_location("Sapri");
}

sub sarezzo {
    return _italian_location("Sarezzo");
}

sub sarnico {
    return _italian_location("Sarnico");
}

sub sarnonico {
    return _italian_location("Sarnonico");
}

sub saronno {
    return _italian_location("Saronno");
}

sub sarzana {
    return _italian_location("Sarzana");
}

sub sassari {
    return _italian_location("Sassari");
}

sub sassono {
    return _italian_location("Sassono");
}

sub sassuolo {
    return _italian_location("Sassuolo");
}

sub sauze_d_oulx {
    return _italian_location("Sauze d'Oulx");
}

sub savigliano {
    return _italian_location("Savigliano");
}

sub savona {
    return _italian_location("Savona");
}

sub scalea {
    return _italian_location("Scalea");
}

sub scalenghe {
    return _italian_location("Scalenghe");
}

sub scanno {
    return _italian_location("Scanno");
}

sub scarperia {
    return _italian_location("Scarperia");
}

sub schio {
    return _italian_location("Schio");
}

sub schlanders {
    return _italian_location("Schlanders");
}

sub schnals {
    return _italian_location("Schnals");
}

sub sciacca {
    return _italian_location("Sciacca");
}

sub scilla {
    return _italian_location("Scilla");
}

sub sella_valsugana {
    return _italian_location("Sella Valsugana");
}

sub selva {
    return _italian_location("Selva");
}

sub selva_di_fasano {
    return _italian_location("Selva di Fasano");
}

sub selva_di_val_gardena {
    return _italian_location("Selva di Val Gardena");
}

sub selvino {
    return _italian_location("Selvino");
}

sub senigallia {
    return _italian_location("Senigallia");
}

sub seravezza {
    return _italian_location("Seravezza");
}

sub seregno {
    return _italian_location("Seregno");
}

sub serniga_di_salo {
    return _italian_location("Serniga di Salo");
}

sub serra_san_bruno {
    return _italian_location("Serra San Bruno");
}

sub serraville_scrivia {
    return _italian_location("Serraville Scrivia");
}

sub sestola {
    return _italian_location("Sestola");
}

sub sestri_levante {
    return _italian_location("Sestri Levante");
}

sub siena {
    return _italian_location("Siena");
}

sub sillian {
    return _italian_location("Sillian");
}

sub silvi_marina {
    return _italian_location("Silvi Marina");
}

sub sinalunga {
    return _italian_location("Sinalunga");
}

sub siracusa {
    return _italian_location("Siracusa");
}

sub sirmione {
    return _italian_location("Sirmione");
}

sub soave {
    return _italian_location("Soave");
}

sub sondrio {
    return _italian_location("Sondrio");
}

sub sora {
    return _italian_location("Sora");
}

sub sorrento {
    return _italian_location("Sorrento");
}

sub sottomarina_di_chioggia {
    return _italian_location("Sottomarina di Chioggia");
}

sub spilimbergo {
    return _italian_location("Spilimbergo");
}

sub spoleto {
    return _italian_location("Spoleto");
}

sub spondigna {
    return _italian_location("Spondigna");
}

sub stradella {
    return _italian_location("Stradella");
}

sub sulden {
    return _italian_location("Sulden");
}

sub sulmona {
    return _italian_location("Sulmona");
}

sub susa {
    return _italian_location("Susa");
}

# T
sub tabiano_terme {
    return _italian_location("Tabiano Terme");
}

sub taormina {
    return _italian_location("Taormina");
}

sub taranto {
    return _italian_location("Taranto");
}

sub tarvisio {
    return _italian_location("Tarvisio");
}

sub teano {
    return _italian_location("Teano");
}

sub telese_terme {
    return _italian_location("Telese Terme");
}

sub tempio_pausania {
    return _italian_location("Tempio Pausania");
}

sub teramo {
    return _italian_location("Teramo");
}

sub term_luigiane {
    return _italian_location("Term Luigiane");
}

sub termamo {
    return _italian_location("Termamo");
}

sub terme_di_comano {
    return _italian_location("Terme di Comano");
}

sub terme_euganee {
    return _italian_location("Terme Euganee");
}

sub terme_la_calda {
    return _italian_location("Terme La Calda");
}

sub terme_luigiane {
    return _italian_location("Terme Luigiane");
}

sub termoli {
    return _italian_location("Termoli");
}

sub terni {
    return _italian_location("Terni");
}

sub terracina {
    return _italian_location("Terracina");
}

sub tirano {
    return _italian_location("Tirano");
}

sub tivoli {
    return _italian_location("Tivoli");
}

sub todi {
    return _italian_location("Todi");
}

sub tolmezzo {
    return _italian_location("Tolmezzo");
}

sub torino {
    return _italian_location("Torino");
}

sub tortoli {
    return _italian_location("Tortolì");
}

sub tortona {
    return _italian_location("Tortona");
}

sub tortoreto {
    return _italian_location("Tortoreto");
}

sub tortoreto_lido {
    return _italian_location("Tortoreto Lido");
}

sub tramin {
    return _italian_location("Tramin");
}

sub trani {
    return _italian_location("Trani");
}

sub tre_cime_di_lavaredo {
    return _italian_location("Tre Cime di Lavaredo");
}

sub trento {
    return _italian_location("Trento");
}

sub trescore {
    return _italian_location("Trescore Balneario");
}

sub trescore_balneario {
    return _italian_location("Trescore Balneario");
}

sub treviglio {
    return _italian_location("Treviglio");
}

sub treviso {
    return _italian_location("Treviso");
}

sub trieste {
    return _italian_location("Trieste");
}

sub tropea {
    return _italian_location("Tropea");
}

sub turbigo {
    return _italian_location("Turbigo");
}

sub turin {
    return _italian_location("Turin");
}

# U
sub udine {
    return _italian_location("Udine");
}

sub uliveto_terme {
    return _italian_location("Uliveto Terme");
}

sub urbania {
    return _italian_location("Urbania");
}

sub urbino {
    return _italian_location("Urbino");
}

sub urtijei {
    return _italian_location("Urtijei");
}

# V
sub vajolet_towers {
    return _italian_location("Vajolet Towers");
}

sub val_martello {
    return _italian_location("Val Martello");
}

sub valdaora {
    return _italian_location("Valdaora");
}

sub valdengo {
    return _italian_location("Valdengo");
}

sub valdobbiadene {
    return _italian_location("Valdobbiadene");
}

sub valenza {
    return _italian_location("Valenza");
}

sub valico_del_vetriolo {
    return _italian_location("Valico del Vetriolo");
}

sub vallombrosa {
    return _italian_location("Vallombrosa");
}

sub valmontone {
    return _italian_location("Valmontone");
}

sub valnontey_di_cogne {
    return _italian_location("Valnontey di Cogne");
}

sub varazze {
    return _italian_location("Varazze");
}

sub varese {
    return _italian_location("Varese");
}

sub varzi {
    return _italian_location("Varzi");
}

sub vasto {
    return _italian_location("Vasto");
}

sub vedelago {
    return _italian_location("Vedelago");
}

sub veneria_reale {
    return _italian_location("Veneria Reale");
}

sub venezia {
    return _italian_location("Venezia");
}

sub venice {
    return _italian_location("Venice");
}

sub verbania {
    return _italian_location("Verbania");
}

sub vercelli {
    return _italian_location("Vercelli");
}

sub verona {
    return _italian_location("Verona");
}

sub verres {
    return _italian_location("Verres");
}

sub vestone {
    return _italian_location("Vestone");
}

sub viareggio {
    return _italian_location("Viareggio");
}

sub vibo_valentia {
    return _italian_location("Vibo Valentia");
}

sub vicenza {
    return _italian_location("Vicenza");
}

sub vicenza_monte_berico {
    return _italian_location("Vicenza (Monte Berico)");
}

sub vieste {
    return _italian_location("Vieste");
}

sub vigevano {
    return _italian_location("Vigevano");
}

sub viggiano {
    return _italian_location("Viggiano");
}

sub vigo_di_fassa {
    return _italian_location("Vigo di Fassa");
}

sub villa_di_tirano {
    return _italian_location("Villa di Tirano");
}

sub villa_san_giovanni {
    return _italian_location("Villa San Giovanni");
}

sub villafranca {
    return _italian_location("Villafranca");
}

sub villafranca_tirrena {
    return _italian_location("Villafranca Tirrena");
}

sub villapiana_lido {
    return _italian_location("Villapiana Lido");
}

sub vinci {
    return _italian_location("Vinci");
}

sub viterbo {
    return _italian_location("Viterbo");
}

sub vittorio_veneto {
    return _italian_location("Vittorio Veneto");
}

sub voghera {
    return _italian_location("Voghera");
}

# Z
sub zingonia {
    return _italian_location("Zingonia");
}

sub zoldo_alto {
    return _italian_location("Zoldo Alto");
}

sub _italian_location {
    my ( $name ) = @_;
    return ParcoursDB::Location->new( name => $name, country => $italy );
}

1;
