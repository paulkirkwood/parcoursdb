module Countries.Ireland
(cork
,dublin
,enniscorthy
)where

import ParcoursDB.Country
import ParcoursDB.Location

irishLocation :: String -> Location
irishLocation loc = Location loc Ireland

cork :: Location
cork = irishLocation "Cork"

dublin :: Location
dublin = irishLocation "Dublin"

enniscorthy :: Location
enniscorthy = irishLocation "Enniscorthy"
