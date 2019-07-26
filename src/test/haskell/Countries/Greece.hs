module Countries.Greece
(athens
,eleusis
,ioannina
,missolonghi
,naupactus
)where

import ParcoursDB.Country
import ParcoursDB.Location

greekLocation :: String -> Location
greekLocation location = Location location Greece

athens :: Location
athens = greekLocation "Athens" Greece

eleusis :: Location
eleusis = greekLocation "Eleusis" Greece

ioannina :: Location
ioannina = greekLocation "Ioannina" Greece

missolonghi :: Location
missolonghi = greekLocation "Missolonghi" Greece

naupactus :: Location
naupactus = greekLocation "Naupactus" Greece
