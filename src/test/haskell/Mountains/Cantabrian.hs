module Mountains.Cantabrian where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

cantabrianCol :: String -> Int -> Col
cantabrianCol name height = Col name Spain height Nothing Nothing Nothing

altoDeLosMachucos :: Col
altoDeLosMachucos = cantabrianCol "Alto de Los Machucos" 921
