module Countries.WestGermany
(cologne
,felsberg
,saarlouis
,freiburg
,frankfurt
,wiesbaden
,westBerlin
,karlsruhe
,stuttgart
,pforzheim
)
where

import ParcoursDB.Country
import ParcoursDB.Location

westGermanLocation :: String -> Location
westGermanLocation loc = Location loc WestGermany

cologne :: Location
cologne = westGermanLocation "Cologne"

felsberg :: Location
felsberg = westGermanLocation "Felsberg"

saarlouis :: Location
saarlouis = westGermanLocation "Saarlouis"

freiburg :: Location
freiburg  = westGermanLocation "Freiburg"

frankfurt :: Location
frankfurt = westGermanLocation "Frankfurt"

wiesbaden :: Location
wiesbaden = westGermanLocation "Wiesbaden"

westBerlin :: Location
westBerlin = westGermanLocation "West Berlin"

karlsruhe :: Location
karlsruhe = westGermanLocation "Karlsruhe"

stuttgart :: Location
stuttgart = westGermanLocation "Stuttgart"

pforzheim :: Location
pforzheim  = westGermanLocation "Pforzheim"
