module Countries.Israel
(beersheba
,eilat
,haifa
,jerusalem
,telAviv
)where

import ParcoursDB.Country
import ParcoursDB.Location

israeliLocation :: String -> Location
israeliLocation loc = Location loc Israel

beersheba :: Location
beersheba  = israeliLocation "Beersheba"

eilat :: Location
eilat = israeliLocation "Eilat"

haifa :: Location
haifa = israeliLocation "Haifa"

jerusalem :: Location
jerusalem = israeliLocation "Jerusalem"

telAviv :: Location
telAviv = israeliLocation "Tel Aviv"
