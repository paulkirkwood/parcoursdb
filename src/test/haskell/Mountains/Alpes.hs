module Mountains.Alpes where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France,Italy)) 

-- A
alpeD'Huez = Col "Alpe d'Huez" France HC 1850 (Just 13.8) (Just 8.1) Nothing

-- B
colDeBluffy = Col "Col de Bluffy" France C4 622 (Just 1.5) (Just 5.6) Nothing
coteDeBrie  = Col "Cote de Brie"  France C3 450 (Just 2.4) (Just 6.9) Nothing

-- C
colDeLaColombiere = Col "Col de la Colombiere"   France C1 1618 (Just 7.5) (Just 8.5) Nothing
colDeLaCroixDeFer = Col "Col de la Croix de Fer" France HC 2067 (Just 29) (Just 5.2) Nothing
colDeLaCroixFry   = Col "Col de la Croix Fry"    France C1 1477 (Just 11.3) (Just 7) Nothing
cormetDeRoselend  = Col "Cormet de Roselend"     France C2 1968 (Just 5.7) (Just 6.5) Nothing

-- G
colDuGalibier :: Col
colDuGalibier = Col "Col du Galibier" France HC 2642 Nothing Nothing Nothing

-- I
colD'Izoard :: Col
colD'Izoard = Col "Col d'Izoard" France HC 2360 Nothing Nothing Nothing

-- L
lacetsDeMontvernier = Col "Lacets de Montvernier" France C2 782 (Just 3.4) (Just 8.2) Nothing

-- M
colDeLaMadeleine          = Col "Col de la Madeleine"           France HC 2000 (Just 25.3) (Just 6.2) Nothing
monteeDuBisanne           = Col "Montee de Bisanne"             France HC 1723 (Just 12.4) (Just 8.2) Nothing
monteeDuPlateauDesGlieres = Col "Montee du plateau des Glieres" France HC 1390 (Just 6) (Just 11.2) Nothing
monteJafferau             = Col "Monte Jafferau"                Italy  C1 1908 Nothing Nothing Nothing

-- P
colDuPre = Col "Col du Pre" France HC 1748 (Just 12.6) (Just 7.7) Nothing

-- R
colDeRomme = Col "Col de Romme" France C1 1297 (Just 8.8) (Just 8.9) Nothing
laRosiere  = Col "La Rosiere"   France C1 1855 (Just 17.6) (Just 5.8) Nothing

-- S
coteDeSainteEulalie = Col "Cote de Sainte-Eulalie" France C4 298 (Just 1.5) (Just 4.9) Nothing
