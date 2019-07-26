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
cork = irishLocation "Cork" Ireland

dublin :: Location
dublin = irishLocation "Dublin" Ireland

enniscorthy :: Location
enniscorthy = irishLocation "Enniscorthy" Ireland
