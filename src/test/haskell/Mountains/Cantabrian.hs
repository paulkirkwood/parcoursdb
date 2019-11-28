module Mountains.Cantabrian where

import Countries.Spain (altoCampoo)
import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

cantabrianCol :: String -> Int -> Col
cantabrianCol name height = Col name Spain height Nothing Nothing Nothing

altoCampoo :: Col
altoCampoo = colFromLocation Countries.Spain.altoCampoo

altoDeLosMachucos :: Col
altoDeLosMachucos = cantabrianCol "Alto de Los Machucos" 921
