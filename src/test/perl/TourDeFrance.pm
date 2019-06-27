package TourDeFrance;

use Moose;

use DateTime;
use File::Slurp;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::StageRace::Builder;

my $name = "Le Tour de France";

my $andorra                = ParcoursDB::Country->new( name => "Andorra" );
my $belgium                = ParcoursDB::Country->new( name => "Belgium" );
my $france                 = ParcoursDB::Country->new( name => "France" );
my $germany                = ParcoursDB::Country->new( name => "Germany" );
my $ireland                = ParcoursDB::Country->new( name => "Ireland" );
my $italy                  = ParcoursDB::Country->new( name => "Italy" );
my $luxembourg             = ParcoursDB::Country->new( name => "Luxembourg" );
my $principality_of_monaco = ParcoursDB::Country->new( name => "Monaco" );
my $netherlands            = ParcoursDB::Country->new( name => "Netherlands" );
my $spain                  = ParcoursDB::Country->new( name => "Spain" );
my $switzerland            = ParcoursDB::Country->new( name => "Switzerland" );
my $uk                     = ParcoursDB::Country->new( name => "United Kingdom" );
my $west_germany           = ParcoursDB::Country->new( name => "West Germany" );

#
# Belgian towns and cities
#
my $forest          = ParcoursDB::Location->new( name => "Forest", country => $belgium );
my $marcheEnFamenne = ParcoursDB::Location->new( name => "Marche-en-Famenne", country => $belgium );
my $dinant          = ParcoursDB::Location->new( name => "Dinant", country => $belgium );
my $brussels        = ParcoursDB::Location->new( name => "Brussels", country => $belgium );
my $rochefort       = ParcoursDB::Location->new( name => "Rochefort", country => $belgium );
my $spa             = ParcoursDB::Location->new( name => "Spa", country => $belgium );
my $liege           = ParcoursDB::Location->new( name => "Liege", country => $belgium );
my $circuitZolder   = ParcoursDB::Location->new( name => "Circuit Zolder", country => $belgium );
my $hasselt         = ParcoursDB::Location->new( name => "Hasselt", country => $belgium );
my $beringen        = ParcoursDB::Location->new( name => "Beringen", country => $belgium );
my $beauraing       = ParcoursDB::Location->new( name => "Beauraing", country => $belgium );
my $mouscron        = ParcoursDB::Location->new( name => "Mouscron", country => $belgium );
my $charleroi       = ParcoursDB::Location->new( name => "Charleroi", country => $belgium );
my $huy             = ParcoursDB::Location->new( name => "Huy", country => $belgium );
my $seraing         = ParcoursDB::Location->new( name => "Seraing", country => $belgium );
my $antwerp         = ParcoursDB::Location->new( name => "Antwerp", country => $belgium );
my $namur           = ParcoursDB::Location->new( name => "Namur", country => $belgium );
my $waterloo        = ParcoursDB::Location->new( name => "Waterloo", country => $belgium );
my $ghent           = ParcoursDB::Location->new( name => "Ghent", country => $belgium );
my $waregem         = ParcoursDB::Location->new( name => "Waregem", country => $belgium );
my $wanze           = ParcoursDB::Location->new( name => "Wanze", country => $belgium );
my $vise            = ParcoursDB::Location->new( name => "Vise", country => $belgium );
my $tournai         = ParcoursDB::Location->new( name => "Tournai", country => $belgium );
my $ypres           = ParcoursDB::Location->new( name => "Ypres", country => $belgium );

#
# Dutch locations
#
my $leiden         = ParcoursDB::Location->new( name => "Leiden", country => $netherlands );
my $sintWillebrord = ParcoursDB::Location->new( name => "Sint Willebrord", country => $netherlands );
my $valkenburg     = ParcoursDB::Location->new( name => "Valkenburg", country => $netherlands );
my $hertogenbosch  = ParcoursDB::Location->new( name => "'s-Hertogenbosch", country => $netherlands );
my $rotterdam      = ParcoursDB::Location->new( name => "Rotterdam", country => $netherlands );
my $utrecht        = ParcoursDB::Location->new( name => "Utrecht", country => $netherlands );
my $zeeland        = ParcoursDB::Location->new( name => "Zeeland", country => $netherlands );

#
# Andorran towns
#
my $arcalis  = ParcoursDB::Location->new( name => "Andorra-Arcalis", country => $andorra );
my $pal      = ParcoursDB::Location->new( name => "Pal", country => $andorra );
my $escaldes = ParcoursDB::Location->new( name => "Escaldes-Engordany", country => $andorra );

#
# Spanish towns and cities
#
my $sanSebastian = ParcoursDB::Location->new( name => "San Sebastian", country => $spain );
my $pamplona     = ParcoursDB::Location->new( name => "Pamplona", country => $spain );
my $hendaye      = ParcoursDB::Location->new( name => "Hendaye", country => $spain );
my $girona       = ParcoursDB::Location->new( name => "Girona", country => $spain );
my $barcelona    = ParcoursDB::Location->new( name => "Barcelona", country => $spain );
my $vielha       = ParcoursDB::Location->new( name => "Vielha Val d'Aran", country => $spain );
my $jaca         = ParcoursDB::Location->new( name => "Jaca", country => $spain );

#
# West German locations
#
my $felsberg             = ParcoursDB::Location->new( name => "Felsberg", country => $west_germany );
my $saarlouis            = ParcoursDB::Location->new( name => "Saarlouis", country => $west_germany );
my $freiburgWestGermany  = ParcoursDB::Location->new( name => "Freiburg", country => $west_germany );
my $frankfurt            = ParcoursDB::Location->new( name => "Frankfurt", country => $west_germany );
my $wiesbaden            = ParcoursDB::Location->new( name => "Wiesbaden", country => $west_germany );
my $westBerlin           = ParcoursDB::Location->new( name => "West Berlin", country => $west_germany );
my $karlsruheWestGermany = ParcoursDB::Location->new( name => "Karlsruhe", country => $west_germany );
my $stuttgart            = ParcoursDB::Location->new( name => "Stuttgart", country => $west_germany );
my $pforzheimWestGermany = ParcoursDB::Location->new( name => "Pforzheim", country => $west_germany );

#
# Unified German locations
#
my $freiburg     = ParcoursDB::Location->new( name => "Freiburg", country => $germany );
my $koblenz      = ParcoursDB::Location->new( name => "Koblenz", country => $germany );
my $saarbrucken  = ParcoursDB::Location->new( name => "Saarbrucken", country => $germany );
my $pforzheim    = ParcoursDB::Location->new( name => "Pforzheim", country => $germany );
my $karlsruhe    = ParcoursDB::Location->new( name => "Karlsruhe", country => $germany );

#
# Swiss towns and cities
#
my $basel        = ParcoursDB::Location->new( name => "Basel", country => $switzerland );
my $bern         = ParcoursDB::Location->new( name => "Bern", country => $switzerland );
my $mohin        = ParcoursDB::Location->new( name => "Mohin", country => $switzerland );
my $cransMontana = ParcoursDB::Location->new( name => "Crans-Montana", country => $switzerland );
my $geneva       = ParcoursDB::Location->new( name => "Geneva", country => $switzerland );
my $fribourg     = ParcoursDB::Location->new( name => "Fribourg", country => $switzerland );
my $neuchatel    = ParcoursDB::Location->new( name => "Neuchatel", country => $switzerland );
my $laChaux      = ParcoursDB::Location->new( name => "La Chaux-de-Fonds", country => $switzerland );
my $lausanne     = ParcoursDB::Location->new( name => "Lausanne", country => $switzerland );
my $verbier      = ParcoursDB::Location->new( name => "Verbier", country => $switzerland );
my $martigny     = ParcoursDB::Location->new( name => "Martigny", country => $switzerland );
my $finhaut      = ParcoursDB::Location->new( name => "Finhaut-Emosson", country => $switzerland );

#
# English towns and cities
#
my $dover      = ParcoursDB::Location->new( name => "Dover", country => $uk );
my $brighton   = ParcoursDB::Location->new( name => "Brighton", country => $uk );
my $portsmouth = ParcoursDB::Location->new( name => "Portsmouth", country => $uk );
my $london     = ParcoursDB::Location->new( name => "London", country => $uk );
my $canterbury = ParcoursDB::Location->new( name => "Canterbury", country => $uk );
my $leeds      = ParcoursDB::Location->new( name => "Leeds", country => $uk );
my $harrogate  = ParcoursDB::Location->new( name => "Harrogate", country => $uk );
my $york       = ParcoursDB::Location->new( name => "York", country => $uk );
my $sheffield  = ParcoursDB::Location->new( name => "Sheffield", country => $uk );
my $cambridge  = ParcoursDB::Location->new( name => "Cambridge", country => $uk );

#
# Irish locations
#
my $cork        = ParcoursDB::Location->new( name => "Cork", country => $ireland );
my $dublin      = ParcoursDB::Location->new( name => "Dublin", country => $ireland );
my $enniscorthy = ParcoursDB::Location->new( name => "Enniscorthy", country => $ireland );

#
# Italian towns
#
my $sestriere   = ParcoursDB::Location->new( name => "Sestriere", country => $italy );
my $turin       = ParcoursDB::Location->new( name => "Turin", country => $italy );
my $pratoNevoso = ParcoursDB::Location->new( name => "Prato Nevoso", country => $italy );
my $cuneo       = ParcoursDB::Location->new( name => "Cuneo", country => $italy );
my $pinerolo    = ParcoursDB::Location->new( name => "Pinerolo", country => $italy );

#
# Luxembourg locations
#
my $luxembourgCity = ParcoursDB::Location->new( name => "Luxembourg City", country => $luxembourg );
my $eschSurAlzette = ParcoursDB::Location->new( name => "Esch-sur-Alzette", country => $luxembourg );

my $monaco = ParcoursDB::Location->new( name => "Monaco", country => $principality_of_monaco );

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _1970 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => $france,
        date    => DateTime->new( year => 1970, month => 6, day => 26 ),
        name    => $name,
    );

    $builder->prologue(start => "Limoges", distance => 7.4);
    $builder->road_stage(start => "Limoges", finish => "La Rochelle", distance => 224.0);
    $builder->road_stage(start => "La Rochelle", finish => "Angers", distance => 200.0);
    $builder->enable_split_stages;
    $builder->team_time_trial(start => "Angers", finish => "Angers", distance => 10.7);
    $builder->road_stage(start => "Angers", finish => "Rennes", distance => 140.0);
    $builder->disable_split_stages;
    $builder->road_stage(start => "Rennes", finish => "Lisieux", distance => 229.0);
    $builder->enable_split_stages;
    $builder->road_stage(start => "Lisieux", finish => "Rouen", distance => 94.5);
    $builder->road_stage(start => "Rouen", finish => "Amiens", distance => 223.0);
    $builder->disable_split_stages;
    $builder->road_stage(start => "Amiens", finish => "Valanciennes", distance => 135.5);
    $builder->enable_split_stages;
    $builder->road_stage(start => "Valanciennes", finish => $forest, distance => 120.0);
    $builder->individual_time_trial( start => $forest, distance => 7.2);
    $builder->disable_split_stages;
    $builder->road_stage(start => "Ciney", finish => $felsberg, distance => 232.5);
    $builder->road_stage(start => $saarlouis, finish => "Mulhouse", distance => 269.5);
    $builder->road_stage(start => "Belfort", finish => "Divonne-les-Bains", distance => 241.0);
    $builder->enable_split_stages;
    $builder->individual_time_trial(start => "Divonne-les-Bains", finish => "Divonne-les-Bains", distance => 8.8);
    $builder->road_stage(start => "Divonne-les-Bains", finish => "Thonon-les-Bains", distance => 139.5);
    $builder->disable_split_stages;
    $builder->road_stage(start => "Divonne-les-Bains", finish => "Grenoble", distance => 194.0);
    $builder->road_stage(start => "Grenoble", finish => "Gap", distance => 194.5);
    $builder->road_stage(start => "Gap", finish => "Mont Ventoux", distance => 170.0);
    $builder->road_stage(start => "Carpentras", finish => "Montpellier", distance => 140.5);
    $builder->road_stage(start => "Montpellier", finish => "Toulouse", distance => 160.0);
    $builder->road_stage(start => "Toulouse", finish => "Saint-Gaudens", distance => 190.0);
    $builder->road_stage(start => "Saint-Gaudens", finish => "La Mongie", distance => 135.5);
    $builder->road_stage(start => "Bagneres-de-Bigorre", finish => "Mourenx", distance => 185.5);
    $builder->enable_split_stages;
    $builder->road_stage(start => "Mourenx", finish => "Bordeaux", distance => 223.5);
    $builder->individual_time_trial(start => "Bordeaux", finish => "Bordeaux", distance => 8.2);
    $builder->disable_split_stages;
    $builder->road_stage(start => "Ruffex", finish => "Tours", distance => 191.5);
    $builder->road_stage(start => "Tours", finish => "Versailles", distance => 238.5);
    $builder->individual_time_trial(start => "Versailles", finish => "Paris", distance => 54.0);

    return $builder->build;
}

sub _2016 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => $france,
        date    => DateTime->new( year => 2016, month => 7, day => 2 ),
        name    => $name,
    );

    $builder->road_stage(start => "Mont Saint-Michel", finish => "Utah Beach (Sainte-Marie-du-Mont)", distance => 188.0);
    $builder->road_stage(start => "Saint-Lo", finish => "Cherbourg-en-Cotentin", distance => 183.0);
    $builder->road_stage(start => "Granville", finish => "Angers", distance => 223.5);
    $builder->road_stage(start => "Saumur", finish => "Limoges", distance => 237.5);
    $builder->road_stage(start => "Limoges", finish => "Le Lioran", distance => 216.0);
    $builder->road_stage(start => "Arpajon-sur-Cere", finish => "Montauban", distance => 190.5);
    $builder->road_stage(start => "L'Isle-Jourdain", finish => "Lac de Payolle", distance => 162.5);
    $builder->road_stage(start => "Pau", finish => "Bagneres-du-Luchon", distance => 184.0);
    $builder->road_stage(start => $vielha, finish => $arcalis, distance => 184.5);
    $builder->rest_day( location => $arcalis );
    $builder->road_stage(start => $escaldes, finish => "Revel", distance => 197.0);
    $builder->road_stage(start => "Carcassonne", finish => "Montpellier", distance => 162.5);
    $builder->road_stage(start => "Montpellier", finish => "Chalet Reynard (Mont Ventoux)", distance => 178.0);
    $builder->individual_time_trial(start => "Bourg-Saint-Andeol", finish => "La Caverne du Pont-d'Arc", distance => 37.5);
    $builder->road_stage(start => "Montelimar", finish => "Villar-les-Dombes (Parc des Oiseaux)", distance => 208.5);
    $builder->road_stage(start => "Bourg-en-Bresse", finish => "Culoz", distance => 160.0);
    $builder->road_stage(start => "Moirans-en-Montagne", finish => $bern, distance => 209.0);
    $builder->rest_day( location => $bern );
    $builder->road_stage(start => $bern, finish => $finhaut, distance => 184.5);
    $builder->individual_time_trial(start => "Sallanches", finish => "Megeve", distance => 17.0);
    $builder->road_stage(start => "Abbeville", finish => "Saint Gervais-les-Bains", distance => 146.0);
    $builder->road_stage(start => "Megeve", finish => "Morzine", distance => 146.5);
    $builder->road_stage(start => "Chantilly", finish => "Paris", distance => 113.0);
    return $builder->build;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => $france,
        date    => DateTime->new( year => 2018, month => 7, day => 7 ),
        name    => $name,
    );

    $builder->c4(name => "Cote de Vix", height => 30, distance => 0.7, summit_km => 173, average_gradient => 4.2);
    $builder->road_stage( start => "Noirmoutier-en-l'Îe", finish => "Fontenay-le-Comte", distance => 201);

    $builder->c4(name => "Cote de Pouzauges", height => 202, distance => 1, summit_km => 28, average_gradient => 3.9);
    $builder->road_stage( start => "Mouilleron-Saint-Germain", finish => "La Roche-sur-Yon", distance => 182.5);

    $builder->team_time_trial( start => "Cholet", distance => 35.5);

    $builder->c4(name => "Cote de Saint-Jean-la-Poterie", height => 79, distance => 0.8, summit_km => 135.5, average_gradient => 7.8);
    $builder->road_stage( start => "La Baule", finish => "Sarzeau", distance => 195 );

    $builder->c4(name => "Cote de Kaliforn", height => 209, distance => 1.7, summit_km => 106, average_gradient => 7.1);
    $builder->c4(name => "Cote de Trimen", height => 223, distance => 1.6, summit_km => 113, average_gradient => 5.6);
    $builder->c3(name => "Cote de la Roche du Feu", height => 221, distance => 1.9, summit_km => 140.5, average_gradient => 6.6);
    $builder->c3(name => "Cote de Menez Quelerc'h", height => 210, distance => 3, summit_km => 159.5, average_gradient => 6.2);
    $builder->c3(name => "Cote de la montagne de Locranan",
                 height => 233,
                 distance => 2.2,
                 summit_km => 184.5,
                 average_gradient => 5.9);
    $builder->road_stage( start => "Lorient", finish => "Quimper", distance => 204.5);

    $builder->c3(name => "Cote de Ploudiry", summit_km => 44, height => 128, distance => 1.5, average_gradient => 7);
    $builder->c4(name => "Cote de Roc'h Trevezel", summit_km => 68.5, height => 340, distance => 2.5, average_gradient => 3.5);
    $builder->c3(name => "Mur-de-Bretagne", height => 293, summit_km => 165, distance => 2, average_gradient => 6.9);
    $builder->c3(name => "Mur-de-Bretagne", height => 293, summit_km => 181, distance => 2, average_gradient => 6.9);
    $builder->road_stage( start => "Brest", finish => "Mûr-de-Bretagne", distance => 181);

    $builder->c4(name => "Cote du Buisson de Perseigne", summit_km => 120, height => 235, distance => 1.5, average_gradient => 6.9);
    $builder->road_stage( start => "Fougres", finish => "Chartres", distance => 231);

    $builder->c4(name => "Cote de Pacy-sur-Eure", summit_km => 35, height => 135, distance => 2, average_gradient => 4.3);
    $builder->c4(name => "Cote de Feuquerolles", height => 134, summit_km => 71.5, distance => 2.3, average_gradient => 4.3);
    $builder->road_stage( start => "Dreux", finish => "Amiens", distance => 181 );

    $builder->road_stage( start => "Arras", finish => "Roubaix", distance => 156.5);

    $builder->rest_day( location => "Annecy" );

    $builder->c4(name => "Col de Bluffy", summit_km => 19, height => 622, distance => 1.5, average_gradient => 5.6);
    $builder->c1(name => "Col de la Croix Fry", summit_km => 43, height => 1477, distance => 11.3, average_gradient => 7);
    $builder->hc(name => "Montee du plateau des Glieres", summit_km => 68.5, height => 1390, distance => 6, average_gradient => 11.2);
    $builder->c1(name => "Col de Romme", height => 1297, distance => 8.8, summit_km => 130, average_gradient => 8.9);
    $builder->c1(name => "Col de la Colombiere", height => 1618, distance => 7.5, summit_km => 144, average_gradient => 8.5);
    $builder->road_stage( start => "Annecy", finish => "Le Grand-Bornard", distance => 158.5);

    $builder->hc(name => "Montee de Bisanne", summit_km => 26, height => 1723, distance => 12.4, average_gradient => 8.2);
    $builder->hc(name => "Col du Pre", height => 1748, summit_km => 57.5, distance => 12.6, average_gradient => 7.7);
    $builder->c2(name => "Cormet de Roselend", height => 1968, summit_km => 70, distance => 5.7, average_gradient => 6.5);
    $builder->c1(name => "La Rosiere", height => 1855, distance => 17.6, summit_km => 108.5, average_gradient => 5.8);
    $builder->road_stage( start => "Albertville", finish => "La Rosiere", distance => 108.5);

    $builder->hc(name => "Col de la Madeleine", summit_km => 53.5, height => 2000, distance => 25.3, average_gradient => 6.2);
    $builder->c2(name => "Lacets de Montvernier", summit_km => 83, height => 782, distance => 3.4, average_gradient => 8.2);
    $builder->hc(name => "Col de la Croix de Fer", height => 2067, summit_km => 121, distance => 29, average_gradient => 5.2);
    $builder->hc(name => "Alpe d'Huez", height => 1850, distance => 13.8, summit_km => 175.5, average_gradient => 8.1);
    $builder->road_stage( start => "Bourg-Saint-Maurice", finish => "L'Alpe d'Huez", distance => 175.5);

    $builder->c3(name => "Cote de Brie", summit_km => 32.5, height => 450, distance => 2.4, average_gradient => 6.9);
    $builder->c4(name => "Cote de Sainte-Eulalie", summit_km => 109.5, height => 298, distance => 1.5, average_gradient => 4.9);
    $builder->road_stage( start => "Le Bourg-d'Oisans", finish => "Valence", distance => 169.5);

    $builder->c4(name => "Cote du Grand Chataignier", summit_km => 81, height => 321, distance => 1, average_gradient => 7.4);
    $builder->c2(name => "Col de la Croix de Berthel", summit_km => 129, height => 1088, distance => 9.1, average_gradient => 5.3);
    $builder->c3(name => "Col du Pont sans Eau", height => 1084, summit_km => 142, distance => 3.3, average_gradient => 6.3);
    $builder->c2(name => "Cote de la Croix Neuve", height => 1055, distance => 3, summit_km => 186.5, average_gradient => 10.2);
    $builder->road_stage( start => "Saint-Paul-Trois-Chateaux", finish => "Mende", distance => 188);

    $builder->c3(name => "Cote de Luzencon", summit_km => 9, height => 538, distance => 3.1, average_gradient => 5.9);
    $builder->c2(name => "Col de Sie", summit_km => 64.5, height => 928, distance => 10.2, average_gradient => 4.9);
    $builder->c1(name => "Pic de Nore", height => 1205, summit_km => 140, distance => 12.3, average_gradient => 6.3);
    $builder->road_stage( start => "Millau", finish => "Carcassonne", distance => 181.5);

    $builder->rest_day( location => "Lourdes" );

    $builder->c4(name => "Cote de Fanjeaux", summit_km => 25, height => 348, distance => 2.4, average_gradient => 4.9);
    $builder->c4(name => "Cote de Pamiers", height => 417, summit_km => 72, distance => 2.3, average_gradient => 5.8);
    $builder->c2(name => "Col de Portet d'Aspet", height => 1069, summit_km => 155.5, distance => 5.4, average_gradient => 7.1);
    $builder->c1(name => "Col de Mente", height => 1349, summit_km => 171, distance => 6.9, average_gradient => 8.1);
    $builder->c1(name => "Col du Portillon", height => 1292, summit_km => 208, distance => 8.3, average_gradient => 7.1);
    $builder->road_stage( start => "Carcassonne", finish => "Bagneres-de-Luchon", distance => 218);

    $builder->c1(name => "Monte de Peyragudes", height => 1645, distance => 14.9, summit_km => 15, average_gradient => 6.7);
    $builder->c1(name => "Col de Val Louron-Azet", height => 1580, summit_km => 37, distance => 7.4, average_gradient => 8.3);
    $builder->hc(name => "Col du Portet", height => 2215, distance => 16, summit_km => 65, average_gradient => 8.7);
    $builder->road_stage( start => "Bagneres-de-Luchon", finish => "Saint-Lary-Soulan (Col de Portet)", distance => 65);

    $builder->c4(name => "Cote de Madiran", summit_km => 53.5, height => 260, distance => 1.2, average_gradient => 7);
    $builder->c4(name => "Cote d'Anos", height => 304, summit_km => 152.5, distance => 2.1, average_gradient => 4.6);
    $builder->road_stage( start => "Trie-sur-Basie", finish => "Pau", distance => 171);

    $builder->c4(name => "Cote de Loucrup", summit_km => 7, height => 532, distance => 1.8, average_gradient => 7.2);
    $builder->c4(name => "Cote de Capvern-les-Bains", summit_km => 40, height => 604, distance => 3.4, average_gradient => 5.1);
    $builder->c1(name => "Col d'Aspin", height => 1490, distance => 12, summit_km => 78.5, average_gradient => 6.5);
    $builder->hc(name => "Col du Tourmalet", height => 2115, distance => 17.1, summit_km => 108, average_gradient => 7.3);
    $builder->c2(name => "Col de Borderes", height => 1156, distance => 8.6, summit_km => 159.5, average_gradient => 5.8);
    $builder->hc(name => "Col d'Aubisque", height => 1709, distance => 16.6, summit_km => 180.5, average_gradient => 4.9);
    $builder->road_stage( start => "Lourdes", finish => "Laruns", distance => 200.5);

    $builder->individual_time_trial( start => "Saint-Pee-sur-Nivelle", finish => "Espelette", distance => 31);

    $builder->road_stage( start => "Houilles", finish => "Paris", distance => 116);

    return $builder->build;
}

no Moose;
1;
