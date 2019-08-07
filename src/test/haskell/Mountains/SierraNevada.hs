module Mountains.SierraNevada where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

sierraNevadaCol :: String -> Int -> Col
sierraNevadaCol name height = Col name Spain height Nothing Nothing Nothing

altoHoyaDeLaMora :: Col
altoHoyaDeLaMora = sierraNevadaCol "Alto de la Hoya" 921

-- Check the heights
altoDeLaCruzDeLaDemanda :: Col
altoDeLaCruzDeLaDemanda = sierraNevadaCol "Alto de la Cruz de la Demanda" 1500

altoDeMorredero :: Col
altoDeMorredero = sierraNevadaCol "Alto de Morredero" 1500

cerler :: Col
cerler = sierraNevadaCol "Cerler" 1500
