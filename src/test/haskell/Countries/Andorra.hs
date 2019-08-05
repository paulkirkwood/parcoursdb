module Countries.Andorra
(andorra
,andorraLaVella
,escaldesEngordany
,naturlandia
,pal)
where

import ParcoursDB.Country
import ParcoursDB.Location

andorranLocation :: String -> Location
andorranLocation location = Location location Andorra

andorra :: Location
andorra = andorranLocation "Andorra"

andorraLaVella :: Location
andorraLaVella = andorranLocation "Andorra la Vella"

escaldesEngordany :: Location
escaldesEngordany = andorranLocation "Escaldes-Engordany"

naturlandia :: Location
naturlandia = andorranLocation "Naturlandia"

pal :: Location
pal = andorranLocation "Pal"
