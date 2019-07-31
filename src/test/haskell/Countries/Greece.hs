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
athens = greekLocation "Athens"

eleusis :: Location
eleusis = greekLocation "Eleusis"

ioannina :: Location
ioannina = greekLocation "Ioannina"

missolonghi :: Location
missolonghi = greekLocation "Missolonghi"

naupactus :: Location
naupactus = greekLocation "Naupactus"
