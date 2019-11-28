module Mountains.SierraNevada where

import Countries.Spain (sierraNevada)
import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

altoDeHazaLlana :: Col
altoDeHazaLlana = Col "Alto de Haza Llana" Spain 1680 Nothing Nothing Nothing

altoHoyaDeLaMora :: Col
altoHoyaDeLaMora = Col "Alto de la Hoya" Spain 921 Nothing Nothing Nothing

sierraNevada :: Col
sierraNevada = colFromLocation Countries.Spain.sierraNevada
