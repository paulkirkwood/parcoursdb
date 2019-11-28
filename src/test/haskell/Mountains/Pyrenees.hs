module Mountains.Pyrenees where

import Countries.France (cauterets,guzetNeige,laMongie,luzArdiden)
import Countries.Spain (cerler,formigal)
import Data.Maybe
import ParcoursDB.Col
import ParcoursDB.Country (Country(Andorra,France,Spain))
import ParcoursDB.Location

andorranCol :: String -> Int -> Col
andorranCol name height = Col name Andorra height Nothing Nothing Nothing

frenchPyreneanCol :: String -> Int -> Col
frenchPyreneanCol name height = Col name France height Nothing Nothing Nothing

-- A
colD'Agnes :: Col
colD'Agnes = frenchPyreneanCol "Col d'Agnes" 1570

coteD'Anos :: Col
coteD'Anos = Col "Cote d'Anos" France 304  (Just 2.1)  (Just 4.6) Nothing

arcalis :: Col
arcalis = andorranCol "Andorra-Arcalis" 2240

colDesAres :: Col
colDesAres = frenchPyreneanCol "Col des Ares" 797

colD'Aspin :: Col
colD'Aspin = Col "Col d'Aspin" France 1490 (Just 12)   (Just 6.5) Nothing

colD'Aubisque :: Col
colD'Aubisque = Col "Col d'Aubisque" France 1709 (Just 16.6) (Just 4.9) Nothing

aussieres :: Col
aussieres = frenchPyreneanCol "Aussières" 1057

ax3Domaines :: Col
ax3Domaines = frenchPyreneanCol "Ax 3 Domaines" 1372

-- B
colDeBagargui :: Col
colDeBagargui = frenchPyreneanCol "Col de Bagargui" 1327

colDeBeixalis :: Col
colDeBeixalis = frenchPyreneanCol "Col de Beixalis" 1796

colDeBonaiga :: Col
colDeBonaiga = frenchPyreneanCol "Col de Bonaiga" 2072

colDeBorderes :: Col
colDeBorderes = Col "Col de Bordères" France 1156 (Just 8.6) (Just 5.8) Nothing

colDeBurdincurutcheta :: Col
colDeBurdincurutcheta = frenchPyreneanCol "Col de Burdincurutcheta" 1135

puertoDelCanto :: Col
puertoDelCanto = frenchPyreneanCol "Puerto del Canto" 1725

-- C
cerler :: Col
cerler = colFromLocation Countries.Spain.cerler

coteDeCapvernLesBains :: Col
coteDeCapvernLesBains = Col "Cote de Capvern-les-Bains" France 604 (Just 3.4) (Just 5.1) Nothing

cauterets :: Col
cauterets = colFromLocation Countries.France.cauterets

colDuChioula :: Col
colDuChioula = frenchPyreneanCol "Col du Chioula" 1450

colDeLaCore :: Col
colDeLaCore = frenchPyreneanCol "Col de la Core" 1395

-- E
portD'Envalira :: Col
portD'Envalira = frenchPyreneanCol "Port d'Envalira" 2407

-- F
fontRomeu :: Col
fontRomeu = frenchPyreneanCol "Font-Romeu" 1800

formigal :: Col
formigal = colFromLocation Countries.Spain.formigal

coteDeFanjeaux :: Col
coteDeFanjeaux = Col "Cote de Fanjeaux" France 348 (Just 2.4) (Just 4.9) Nothing

-- G
collDeLaGallina :: Col
collDeLaGallina = andorranCol "Coll de la Gallina" 1580

grauRoig :: Col
grauRoig = andorranCol "Grau Roig" 2000

guzetNeige :: Col
guzetNeige = colFromLocation Countries.France.guzetNeige

-- H
hautacam :: Col
hautacam = frenchPyreneanCol "Hautacam" 1560

laHourquetteD'Ancizan :: Col
laHourquetteD'Ancizan = frenchPyreneanCol "La Hourquette d'Ancizan" 1538

-- J
colDeJau :: Col
colDeJau = frenchPyreneanCol "Col de Jau" 1513

-- L
coteDeLoucrup :: Col
coteDeLoucrup = Col "Cote de Loucrup" France 532 (Just 1.8) (Just 7.2) Nothing

laMongie :: Col
laMongie = colFromLocation Countries.France.laMongie

laPierreSaintMartin :: Col
laPierreSaintMartin = frenchPyreneanCol "La Pierre Saint-Martin" 1610

colDeLatrape :: Col
colDeLatrape = frenchPyreneanCol "Col de Latrape" 1110

luzArdiden :: Col
luzArdiden = colFromLocation Countries.France.luzArdiden

-- M
coteDeMadiran :: Col
coteDeMadiran = Col "Cote de Madiran"     France 260 (Just 1.2)  (Just 7)   Nothing

colDeMarieBlanque :: Col
colDeMarieBlanque = frenchPyreneanCol "Col de Marie-Blanque" 1035

colDeMente :: Col
colDeMente = Col "Col de Menté" France 1349 (Just 6.9) (Just 8.1) Nothing

colD'Ordino :: Col
colD'Ordino = andorranCol "Col d'Ordino" 1910

-- P
monteeDePal :: Col
monteeDePal = andorranCol "Montée de Pal" 1870

peyragudes :: Col
peyragudes = Col "Peyragudes" France 1645 (Just 14.9) (Just 6.7) Nothing

colDuPeyresourde :: Col
colDuPeyresourde = frenchPyreneanCol "Col du Peyresourde" 1569

piauEngaly :: Col
piauEngaly = frenchPyreneanCol "Piau-Engaly" 1800

colDeLaPierreSaintMartin :: Col
colDeLaPierreSaintMartin = frenchPyreneanCol "Col de la Pierre-Saint-Martin" 1760

saintLarySoulanPlaDAdet :: Col
saintLarySoulanPlaDAdet = frenchPyreneanCol "Saint-Lary-Soulan Pla d'Adet" 1680

murDePeguere :: Col
murDePeguere = frenchPyreneanCol "Mur de Péguère" 1375

plateauDeBeille :: Col
plateauDeBeille = frenchPyreneanCol "Plateau de Beille" 1780

plateauDeBonascre :: Col
plateauDeBonascre = frenchPyreneanCol "Plateau de Bonascre" 1375

colDePort :: Col
colDePort = frenchPyreneanCol "Col de Port" 1249

portDeBales :: Col
portDeBales = frenchPyreneanCol "Port de Balès" 1755

portDeLarrau :: Col
portDeLarrau = frenchPyreneanCol "Port de Larrau" 1573

portDeLers :: Col
portDeLers = frenchPyreneanCol "Port de Lers" 1516

portDePailheres :: Col
portDePailheres = frenchPyreneanCol "Port de Pailhères" 2001

portDelCanto :: Col
portDelCanto = frenchPyreneanCol "Port de Canto" 1721

colDePortet'Aspet :: Col
colDePortet'Aspet = Col "Col de Portet d'Aspet" France 1069 (Just 5.4) (Just 7.1) Nothing

colDePortet :: Col
colDePortet = Col "Col de Portet" France 2215 (Just 16) (Just 8.7) Nothing

colDuPortillon :: Col
colDuPortillon = Col "Col du Portillon" France 1292 (Just 8.3) (Just 7.1) Nothing

colDuPourtalet :: Col
colDuPourtalet = frenchPyreneanCol "Col du Pourtalet" 1794

coteDePamiers :: Col
coteDePamiers = Col "Cote de Pamiers" France 417 (Just 2.3) (Just 5.8) Nothing

puertoDeBeret :: Col
puertoDeBeret = frenchPyreneanCol "Puerto de Beret" 1860

puymorens :: Col
puymorens = frenchPyreneanCol "Puymorens" 1915

pyrenees2000 :: Col
pyrenees2000 = alias fontRomeu "Pyrénées 2000"

-- S
coteDeSaintSarraille :: Col
coteDeSaintSarraille = frenchPyreneanCol "Côté de Saint-Sarraille" 810

colDuSerraSeca :: Col
colDuSerraSeca = frenchPyreneanCol "Col du Serra-Seca" 1160

colDuSomport :: Col
colDuSomport = frenchPyreneanCol "Col du Somport" 1632

colDeSoudet :: Col
colDeSoudet = frenchPyreneanCol "Col de Soudet" 1540

colDuSoulor :: Col
colDuSoulor = frenchPyreneanCol "Col du Soulor" 1474

superbagneres :: Col
superbagneres = frenchPyreneanCol "Superbagnères" 1804

-- T
colDeTosas :: Col
colDeTosas = frenchPyreneanCol "Col de Tosas" 1865

colDuTourmalet :: Col
colDuTourmalet = Col "Col du Tourmalet" France 2115 (Just 17.1) (Just 7.3) Nothing

-- V
colDeValLouronAzet :: Col
colDeValLouronAzet = Col "Col de Val Louron-Azet" France 1580 (Just 7.4) (Just 8.3) Nothing

valD'AranPlaDeBeret :: Col
valD'AranPlaDeBeret = frenchPyreneanCol "Val d'Aran/Pla-de-Beret" 1860
