module Mountains.MassifCentral where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

massifCentralCol :: String -> Int -> Col
massifCentralCol name height = Col name France height Nothing Nothing Nothing

-- B
colDeLaCroixDeBerthel = Col "Col de la Croix de Berthel" France 1088 (Just 9.1) (Just 5.3) Nothing

-- C
coteDuGrandChataignier = Col "Cote du Grand Chataignier" France 321 (Just 1) (Just 7.4) Nothing

-- L
coteDeLuzencon = Col "Cote de Luzencon" France 538 (Just 3.1) (Just 5.9) Nothing

-- M
montVentoux = Col "Mont Ventoux" France 1912 (Just 21.4) (Just 7.6) (Just 12)

-- N
coteDeLaCroixNeuve = Col "Cote de la Croix Neuve" France 1055 (Just 3) (Just 10.2) Nothing

-- P
picDeNore = Col "Pic de Nore" France 1205 (Just 12.3) (Just 6.3) Nothing

puyDeDome :: Col
puyDeDome = massifCentralCol "Puy de Dôme" 1415

colDuPontSansEau = Col "Col du Pont sans Eau" France 1084 (Just 3.3) (Just 6.3) Nothing

-- S
colDeSie = Col "Col de Sie" France 928 (Just 10.2) (Just 4.9) Nothing
