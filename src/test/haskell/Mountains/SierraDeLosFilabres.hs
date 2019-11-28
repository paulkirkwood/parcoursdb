module Mountains.SierraDeLosFilabres where

import Countries.Spain (calarAltoObservatory)
import ParcoursDB.Col
import ParcoursDB.Country (Country(Spain))

altoDeVelefique :: Col
altoDeVelefique = Col "Alto de Velefique" Spain 1820 Nothing Nothing Nothing

calarAltoObservatory :: Col
calarAltoObservatory = colFromLocation Countries.Spain.calarAltoObservatory
