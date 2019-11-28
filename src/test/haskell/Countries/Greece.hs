module Countries.Greece
(athens
,eleusis
,ioannina
,missolonghi
,naupactus
)where

import ParcoursDB.Country
import ParcoursDB.Location

athens :: Location
athens = Location "Athens" Greece Nothing

eleusis :: Location
eleusis = Location "Eleusis" Greece Nothing

ioannina :: Location
ioannina = Location "Ioannina" Greece Nothing

missolonghi :: Location
missolonghi = Location "Missolonghi" Greece Nothing

naupactus :: Location
naupactus = Location "Naupactus" Greece Nothing
