module Mountains.MassifCentral where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

massifCentralCol :: String -> Int -> Col
massifCentralCol name height = Col name France height Nothing Nothing Nothing

-- A
aigoual :: Col
aigoual = massifCentralCol "Aigoual" 1560

-- B
baraqueDeBral :: Col
baraqueDeBral = massifCentralCol "Baraque de Bral" 610

laBourboule :: Col
laBourboule = massifCentralCol "La Bourboule" 1180

colDeLaCroixDeBerthel = Col "Col de la Croix de Berthel" France 1088 (Just 9.1) (Just 5.3) Nothing

-- C
causseDuLarzac :: Col
causseDuLarzac = massifCentralCol "Causse du Larzac" 825

cornicheDesCevennes :: Col
cornicheDesCevennes = massifCentralCol "Corniche des Cévennes" 1018

coteDuGrandChataignier = Col "Cote du Grand Chataignier" France 321 (Just 1) (Just 7.4) Nothing

croixDeChaubouret :: Col
croixDeChaubouret = massifCentralCol "Croix de Chaubouret" 1201

colDeLaCroixDeLHommeMort :: Col
colDeLaCroixDeLHommeMort = massifCentralCol "Col de la Croix de l'Homme Mort" 1163

colDeLaCroixMorandOuDeDyane :: Col
colDeLaCroixMorandOuDeDyane = massifCentralCol "Col de la Croix Morand ou de Dyane" 1401

colDeLaCroixdeMontvieux :: Col
colDeLaCroixdeMontvieux = massifCentralCol "Col de la Croix de Montvieux" 811

colDeLaCroixDeMounis :: Col
colDeLaCroixDeMounis = massifCentralCol "Col de la Croix de Mounis" 809

coteDeLaCroixNeuve :: Col
coteDeLaCroixNeuve = Col "Cote de la Croix Neuve" France 1055 (Just 3) (Just 10.2) Nothing

colDeLaCroixSaintRobert :: Col
colDeLaCroixSaintRobert = massifCentralCol "Col de la Crois Saint-Robert" 1451

-- E
colD'Escrinet :: Col
colD'Escrinet = massifCentralCol "Col d'Escrinet" 787

-- F
colDeLaFontasse :: Col
colDeLaFontasse = massifCentralCol "Col de la Fontasse" 537

colDesFourches :: Col
colDesFourches = massifCentralCol "Col des Fourches" 970

-- L
colDeLachamp :: Col
colDeLachamp = massifCentralCol "Col de Lachamp" 1320

coteDeLuzencon :: Col
coteDeLuzencon = Col "Cote de Luzencon" France 538 (Just 3.1) (Just 5.9) Nothing

laLouvesc :: Col
laLouvesc = massifCentralCol "La Louvesc" 1120

causseNoir :: Col
causseNoir = massifCentralCol "Causse Noir" 835

-- M
lesMonedieres :: Col
lesMonedieres = massifCentralCol "Les Monédières" 860 
colDuMinier :: Col
colDuMinier = massifCentralCol "Col du Minier" 1270

montéEDeLaJeante :: Col
montéEDeLaJeante = massifCentralCol "Montée de la Jeante" 958

montiaux :: Col
montiaux = massifCentralCol "Montiaux" 1030

montsalvy :: Col
montsalvy = massifCentralCol "Montsalvy" 780

colDeLaMoreno :: Col
colDeLaMoreno = massifCentralCol "Col de la Moreno" 1065

-- N
cirqueDeNavacelles :: Col
cirqueDeNavacelles = massifCentralCol "Cirque de Navacelles" 600

-- O
cretDeL'Oeillon :: Col
cretDeL'Oeillon = massifCentralCol "Crêt de l'Oeillon" 1210

-- P
colDuPerthus :: Col
colDuPerthus = massifCentralCol "Col du Perthus" 1309

colDesPradeaux :: Col
colDesPradeaux = massifCentralCol "Col des Pradeaux" 1196

colDuPontSansEau :: Col
colDuPontSansEau = Col "Col du Pont sans Eau" France 1084 (Just 3.3) (Just 6.3) Nothing

colDePratDeBouc :: Col
colDePratDeBouc = massifCentralCol "Col de Prat de Bouc" 1392

picDeNore :: Col
picDeNore = Col "Pic de Nore" France 1205 (Just 12.3) (Just 6.3) Nothing

plombDuCantal :: Col
plombDuCantal = massifCentralCol "Plomb du Cantal" 1383

perjuret :: Col
perjuret = massifCentralCol "Perjuret" 1028

pasDePeyrol :: Col
pasDePeyrol = massifCentralCol "Pas de Peyrol" 1582

puyDeDome :: Col
puyDeDome = massifCentralCol "Puy de Dôme" 1415

-- R
colDeLaRePubliqueOuDuGrandBois :: Col
colDeLaRePubliqueOuDuGrandBois = massifCentralCol "Col de la République ou du Grand Bois" 1161

-- S
coteDeSauveterre :: Col
coteDeSauveterre = massifCentralCol "Côte de Sauveterre" 1104

colDeSerereyde :: Col
colDeSerereyde = massifCentralCol "Col de Serereyde" 1290

colDeSie :: Col
colDeSie = Col "Col de Sie" France 928 (Just 10.2) (Just 4.9) Nothing

sucDeMontivernoux :: Col
sucDeMontivernoux = massifCentralCol "Suc de Montivernoux" 2010

rocheVendeix :: Col
rocheVendeix = massifCentralCol "Roche Vendeix" 1139

saintAnastaise :: Col
saintAnastaise = massifCentralCol "Saint-Anastaise" 1160

superBesse :: Col
superBesse = massifCentralCol "Super Besse" 1275

leLioran :: Col
leLioran = massifCentralCol "Le Lioran" 1326

colDesTriezeVents :: Col
colDesTriezeVents = massifCentralCol "Col des Trieze Vents" 600

coteDesVignes :: Col
coteDesVignes = massifCentralCol "Côte des Vignes" 860

monteeDeNavesD'Aubrac :: Col
monteeDeNavesD'Aubrac = massifCentralCol "Montée de Naves d'Aubrac" 1058

colDePeyraTaillade :: Col
colDePeyraTaillade = massifCentralCol "Col de Peyra Taillade" 1190
