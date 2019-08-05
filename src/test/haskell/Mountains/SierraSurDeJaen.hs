module Mountains.SierraSurDeJaen where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

sierraSurDeJaenCol :: String -> Int -> Col
sierraSurDeJaenCol name height = Col name Spain height Nothing Nothing Nothing

sierraDeLaPandera :: Col
sierraDeLaPandera = sierraSurDeJaenCol "Sierra de la Pandera" 1872
