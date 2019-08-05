module Mountains.SierraDeLosFilabres where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

sierraDeLosFilabresCol :: String -> Int -> Col
sierraDeLosFilabresCol name height = Col name Spain height Nothing Nothing Nothing

calarAltoObservatory :: Col
calarAltoObservatory = sierraDeLosFilabresCol "Calar Alto Observatory" 2168
