module Countries.Andorra
(andorra
,arcalis
,escaldes
,pal)
where

import ParcoursDB.Country
import ParcoursDB.Location

andorranLocation :: String -> Location
andorranLocation location = Location location Andorra

andorra :: Location
andorra = andorranLocation "Andorra"

arcalis :: Location
arcalis = andorranLocation "Andorra-Arcalis"

escaldes :: Location
escaldes = andorranLocation "Escaldes-Engordany"

pal :: Location
pal = andorranLocation "Pal"
