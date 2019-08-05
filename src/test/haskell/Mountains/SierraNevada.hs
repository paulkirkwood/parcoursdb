module Mountains.SierraNevada where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

sierraNevadaCol :: String -> Int -> Col
sierraNevadaCol name height = Col name Spain height Nothing Nothing Nothing

altoHoyaDeLaMora :: Col
altoHoyaDeLaMora = sierraNevadaCol "Alto de la Hoya" 921
