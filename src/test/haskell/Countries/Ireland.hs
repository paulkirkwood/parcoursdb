module Countries.Ireland
(cork
,dublin
,enniscorthy
)where

import ParcoursDB.Country
import ParcoursDB.Location

cork :: Location
cork = Location "Cork" Ireland Nothing

dublin :: Location
dublin = Location "Dublin" Ireland Nothing

enniscorthy :: Location
enniscorthy = Location "Enniscorthy" Ireland Nothing
