module Countries.Israel
(beersheba
,eilat
,haifa
,jerusalem
,telAviv
)where

import ParcoursDB.Country
import ParcoursDB.Location

beersheba :: Location
beersheba  = Location "Beersheba" Israel Nothing

eilat :: Location
eilat = Location "Eilat" Israel Nothing

haifa :: Location
haifa = Location "Haifa" Israel Nothing

jerusalem :: Location
jerusalem = Location "Jerusalem" Israel Nothing

telAviv :: Location
telAviv = Location "Tel Aviv" Israel Nothing
