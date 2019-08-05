module Mountains.Asturias where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

asturianCol :: String -> Int -> Col
asturianCol name height = Col name Spain height Nothing Nothing Nothing

altoDeL'Angliru  :: Col
altoDeL'Angliru  = Col "Alto de l'Angliru" Spain 1573 (Just 12.5) (Just 10.13) (Just 23.6)

lagosDeCovadonga :: Col
lagosDeCovadonga = asturianCol "Lagos de Covadonga" 1094
