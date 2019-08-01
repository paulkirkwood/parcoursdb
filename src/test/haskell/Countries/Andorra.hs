module Countries.Andorra
(andorra
,escaldes
,pal)
where

import ParcoursDB.Country
import ParcoursDB.Location

andorranLocation :: String -> Location
andorranLocation location = Location location Andorra

andorra :: Location
andorra = andorranLocation "Andorra"

escaldes :: Location
escaldes = andorranLocation "Escaldes-Engordany"

pal :: Location
pal = andorranLocation "Pal"
