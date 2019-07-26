module Countries.Slovenia
(bled
,kranj
,ljubljana
)
where

import ParcoursDB.Country
import ParcoursDB.Location

slovenianLocation :: String -> Location
slovenianLocation loc = Location loc Slovenia

bled :: Location
bled = slovenianLocation "Bled"

kranj :: Location
kranj = slovenianLocation "Kranj"

ljubljana :: Location
ljubljana = slovenianLocation "Ljubljana"
