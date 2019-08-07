module Mountains.Alps where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France,Italy,Switzerland)) 

frenchAlpineCol :: String -> Int -> Col
frenchAlpineCol name height = Col name France height Nothing Nothing Nothing

italianAlpineCol :: String -> Int -> Col
italianAlpineCol name height = Col name Italy height Nothing Nothing Nothing

swissAlpineCol :: String -> Int -> Col
swissAlpineCol name height = Col name Switzerland height Nothing Nothing Nothing

-- A
colD'Agnel :: Col
colD'Agnel = frenchAlpineCol "Col d'Agnel" 2744

colD'Allos :: Col
colD'Allos = frenchAlpineCol "Col d'Allos" 2250

alpeD'Huez :: Col
alpeD'Huez = Col "Alpe d'Huez" France 1850 (Just 13.8) (Just 8.1) Nothing

lesArcs :: Col
lesArcs = frenchAlpineCol "Les Arcs" 1700

colDesAravis :: Col
colDesAravis = frenchAlpineCol "Col des Aravis" 1498

avoriaz :: Col
avoriaz = frenchAlpineCol "Avoriaz" 1800

-- B
colBayard :: Col
colBayard = frenchAlpineCol "Col Bayard" 1264

leBettex :: Col
leBettex = frenchAlpineCol "Le Bettex, Saint-Gervais - Mont-Blanc" 1372

monteeDuBisanne :: Col
monteeDuBisanne = Col "Montee de Bisanne" France 1723 (Just 12.4) (Just 8.2) Nothing

colDeBluffy :: Col
colDeBluffy = Col "Col de Bluffy" France 622 (Just 1.5) (Just 5.6) Nothing

coteDeBrie :: Col
coteDeBrie = Col "Cote de Brie"  France 450 (Just 2.4) (Just 6.9) Nothing

-- C
colDeLaCabre :: Col
colDeLaCabre = frenchAlpineCol "Col de la Cabre" 1180

colDeLaCayolle :: Col
colDeLaCayolle = frenchAlpineCol "Col de la Cayolle" 2326

colDeLaChau :: Col
colDeLaChau = frenchAlpineCol "Col de la Chau" 1430

colDuChaussy :: Col
colDuChaussy = frenchAlpineCol "Col du Chaussy" 1533

chamrousse :: Col
chamrousse = frenchAlpineCol "Chamrousse" 1730

colDesChamps :: Col
colDesChamps = frenchAlpineCol "Col des Champs" 2095

colDelLaColleSaintMichel :: Col
colDelLaColleSaintMichel = frenchAlpineCol "Col de la Colle-Saint-Michel" 1431

colDeLaColombiere :: Col
colDeLaColombiere = Col "Col de la Colombiere" France 1618 (Just 7.5) (Just 8.5) Nothing

colDuCoq :: Col
colDuCoq = frenchAlpineCol "Col du Coq" 1430

colDuCorbier :: Col
colDuCorbier = frenchAlpineCol "Col du Corbier" 1325

colDeCordon :: Col
colDeCordon = frenchAlpineCol "Col de Cordon" 975

cormetDeRoselend :: Col
cormetDeRoselend = Col "Cormet de Roselend" France 1968 (Just 5.7) (Just 6.5) Nothing

courchevel :: Col
courchevel = frenchAlpineCol "Courchevel" 2004

cransMontana :: Col
cransMontana = swissAlpineCol "Crans-Montana" 1670

colDeLaCroix :: Col
colDeLaCroix = swissAlpineCol "Col de la Croix" 1778

colleDelMorte :: Col
colleDelMorte = frenchAlpineCol "Colle del Morte" 710

croixDeFer :: Col
croixDeFer = Col "Croix de Fer" France 2067 (Just 29) (Just 5.2) Nothing

colDeLaCroixFry :: Col
colDeLaCroixFry = Col "Col de la Croix Fry" France 1477 (Just 11.3) (Just 7) Nothing

cucheron :: Col
cucheron = frenchAlpineCol "Cucheron" 1139

colDel'Epine :: Col
colDel'Epine = frenchAlpineCol "Col de l’Épine" 947

-- F
finhautEmosson :: Col
finhautEmosson = swissAlpineCol "Finhaut-Emosson" 1960

forclaz :: Col
forclaz = swissAlpineCol "Forclaz" 1527

forclazDeMontmin :: Col
forclazDeMontmin = frenchAlpineCol "Forclaz-de-Montmin" 1150

-- G
colDuGalibier :: Col
colDuGalibier = frenchAlpineCol "Col du Galibier" 2642

colDuGlandon :: Col
colDuGlandon = frenchAlpineCol "Col du Glandon" 1924

grandCucheron :: Col
grandCucheron = frenchAlpineCol "Grand Cucheron" 1188

grandSaintBernard :: Col
grandSaintBernard = frenchAlpineCol "Grand-Saint-Bernard" 2470

colDuGranier :: Col
colDuGranier = frenchAlpineCol "Col du Granier" 1134

colDuGranon :: Col
colDuGranon = frenchAlpineCol "Col du Granon" 2413

-- H
monteeD'Hauteville :: Col
monteeD'Hauteville = frenchAlpineCol "Montée d’Hauteville" 1639

-- I

colDeL'Iseran :: Col
colDeL'Iseran = frenchAlpineCol "Col de l'Iseran" 2770

colD'Izoard :: Col
colD'Izoard = frenchAlpineCol "Col d'Izoard" 2360

-- J
monteJafferau :: Col
monteJafferau = italianAlpineCol "Monte Jafferau" 1980

colDeLaJouxPlane :: Col
colDeLaJouxPlane = frenchAlpineCol "Col de la Joux Plane" 1700

colDeJouxVerte :: Col
colDeJouxVerte = frenchAlpineCol "Col de Joux-Verte" 1760

-- L
lacetsDeMontvernier :: Col
lacetsDeMontvernier = Col "Lacets de Montvernier" France 782 (Just 3.4) (Just 8.2) Nothing

coteDeLaffrey :: Col
coteDeLaffrey = frenchAlpineCol "Côte de Laffrey" 900

colDeLaLombarde :: Col
colDeLaLombarde = frenchAlpineCol "Col de la Lombarde" 2351

laToussuire :: Col
laToussuire = frenchAlpineCol "La Toussuire" 1705

lansEnVercors :: Col
lansEnVercors = frenchAlpineCol "Lans en Vercors" 1410

colDuLautaret :: Col
colDuLautaret = frenchAlpineCol "Col du Lautaret" 2058

lesDeuxAlpes :: Col
lesDeuxAlpes = frenchAlpineCol "Les Deux Alpes" 1644

lesMenuires :: Col
lesMenuires = frenchAlpineCol "Les Menuires" 1809

colDuLuitel :: Col
colDuLuitel = frenchAlpineCol "Luitel" 1262

-- M
colDeLaMadeleine :: Col
colDeLaMadeleine = Col "Col de la Madeleine" France 2000 (Just 25.3) (Just 6.2) Nothing

colDeManse :: Col
colDeManse = frenchAlpineCol "Col de Manse" 1268

meribelLesAllues :: Col
meribelLesAllues = frenchAlpineCol "Méribel-les-Allues" 1750

colDuMollard :: Col
colDuMollard = frenchAlpineCol "Col du Mollard" 1638

colDeLaMorte :: Col
colDeLaMorte = frenchAlpineCol "Col de la Morte" 1368

montCenis :: Col
montCenis = frenchAlpineCol "Mont-Cenis" 2083

montgenevre :: Col
montgenevre = frenchAlpineCol "Montgenèvre" 1860

colDesMosses :: Col
colDesMosses = swissAlpineCol "Col des Mosses" 1448

colDuNoyer :: Col
colDuNoyer = frenchAlpineCol "Col du Noyer" 1664

-- O
orcieresMerlette :: Col
orcieresMerlette = frenchAlpineCol "Orcières-Merlette" 1838

colD'Ornon :: Col
colD'Ornon = frenchAlpineCol "Col d'Ornon" 1371

lesOrres :: Col
lesOrres = frenchAlpineCol "Les Orres" 1496

-- P
colDePalaquit :: Col
colDePalaquit = frenchAlpineCol "Col de Palaquit" 1154

monteeDuPlateauDesGlieres :: Col
monteeDuPlateauDesGlieres = Col "Montee du plateau des Glieres" France 1390 (Just 6) (Just 11.2) Nothing

colDuPre :: Col
colDuPre = Col "Col du Pre" France 1748 (Just 12.6) (Just 7.7) Nothing

pasDeMorgins :: Col
pasDeMorgins = frenchAlpineCol "Pas-de-Morgins" 1369

colDeParmenie :: Col
colDeParmenie = frenchAlpineCol "Col de Parménie" 571

colDePerty :: Col
colDePerty = frenchAlpineCol "Col de Perty" 1303

colDePetitSaintBernard :: Col
colDePetitSaintBernard = frenchAlpineCol "Col de Petit-Saint-Bernard" 2188

laPlagne :: Col
laPlagne = frenchAlpineCol "La Plagne" 1970

colDePlainpalais :: Col
colDePlainpalais = frenchAlpineCol "Col de Plainpalais" 1173

lePleynet :: Col
lePleynet = frenchAlpineCol "Le Pleynet" 1445

colDePorte :: Col
colDePorte = frenchAlpineCol "Col de Porte" 1326

praLoup :: Col
praLoup = frenchAlpineCol "Pra-Loup" 1630

prapoutelLesSeptLaux :: Col
prapoutelLesSeptLaux = frenchAlpineCol "Prapoutel-les-Sept-Laux" 1358

colDesPres :: Col
colDesPres = frenchAlpineCol "Col des Prés" 1135

-- R
ramaz :: Col
ramaz = frenchAlpineCol "Ramaz" 1619

restefond :: Col
restefond = frenchAlpineCol "Restefond, Col de la Bonette" 2802

montRevard :: Col
montRevard = frenchAlpineCol "Mont Revard" 1537

risoul :: Col
risoul = frenchAlpineCol "Risoul" 1855

colDeRomeyere :: Col
colDeRomeyere = frenchAlpineCol "Col de Romeyere" 1074

colDeRomme :: Col
colDeRomme = Col "Col de Romme" France 1297 (Just 8.8) (Just 8.9) Nothing

colDuRousset :: Col
colDuRousset = frenchAlpineCol "Col du Rousset" 1254

laRosiere :: Col
laRosiere = Col "La Rosiere" France 1855 (Just 17.6) (Just 5.8) Nothing

laRuchere :: Col
laRuchere = frenchAlpineCol "La Ruchère" 1160

-- S
coteDeSainteEulalie :: Col
coteDeSainteEulalie = Col "Cote de Sainte-Eulalie" France 298 (Just 1.5) (Just 4.9) Nothing

saintGervaisMontBlanc :: Col
saintGervaisMontBlanc = frenchAlpineCol "Saint-Gervais Mont-Blanc" 970

saintNizier :: Col
saintNizier = frenchAlpineCol "Saint-Nizier" 1180

colDesSaisies :: Col
colDesSaisies = frenchAlpineCol "Col des Saisies" 1633

montSaleve :: Col
montSaleve = frenchAlpineCol "Mont Salève" 1307

colDeSarenne :: Col
colDeSarenne = frenchAlpineCol "Col de Sarenne" 1999

colDuSemnoz :: Col
colDuSemnoz = frenchAlpineCol "Col du Semnoz" 1655

colDeLaSentinelle :: Col
colDeLaSentinelle = frenchAlpineCol "Col de la Sentinelle" 980

passoDelloStelvio :: Col
passoDelloStelvio = italianAlpineCol "Passo dello Stelvio" 2757

sestriere :: Col
sestriere = italianAlpineCol "Sestrière" 2035

colDeTamie :: Col
colDeTamie = frenchAlpineCol "Col de Tamié" 907

colDuTelegraphe :: Col
colDuTelegraphe = frenchAlpineCol "Col du Télégraphe" 1566

colDeTende :: Col
colDeTende = frenchAlpineCol "Col de Tende" 1320

monteeDeTignes :: Col
monteeDeTignes = frenchAlpineCol "Montée de Tignes" 2068

colDeTournoi :: Col
colDeTournoi = frenchAlpineCol "Col de Tourniol" 1145

-- V
valD'Isere :: Col
valD'Isere = frenchAlpineCol "Val d'Isère" 1820

valThorens :: Col
valThorens = frenchAlpineCol "Val Thorens" 2275

colDeVars :: Col
colDeVars = frenchAlpineCol "Col de Vars" 2109

verbier :: Col
verbier = swissAlpineCol "Verbier" 1468

villardDeLans :: Col
villardDeLans = frenchAlpineCol "Villard-de-Lans" 1150
