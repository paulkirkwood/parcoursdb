module Mountains.Asturias where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

asturianCol :: String -> Int -> Col
asturianCol name height = Col name Spain height Nothing Nothing Nothing

altoDeCotobello :: Col
altoDeCotobello = asturianCol "Alto de Cotobello" 1196

altoDeLaCobertoria :: Col
altoDeLaCobertoria = asturianCol "Alto de la Cobertoria" 1173

altoDeL'Angliru  :: Col
altoDeL'Angliru  = Col "Alto de l'Angliru" Spain 1573 (Just 12.5) (Just 10.13) (Just 23.6)

altoDeMorredero :: Col
altoDeMorredero = asturianCol "Alto de Morredero" 1735

altoDelNaranco :: Col
altoDelNaranco = asturianCol "Alto del Naranco" 634

lagosDeCovadonga :: Col
lagosDeCovadonga = asturianCol "Lagos de Covadonga" 1094
