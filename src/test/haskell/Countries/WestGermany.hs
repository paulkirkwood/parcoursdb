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

cologne :: Location
cologne = Location "Cologne" WestGermany Nothing

felsberg :: Location
felsberg = Location "Felsberg" WestGermany Nothing

saarlouis :: Location
saarlouis = Location "Saarlouis" WestGermany Nothing

freiburg :: Location
freiburg  = Location "Freiburg" WestGermany Nothing

frankfurt :: Location
frankfurt = Location "Frankfurt" WestGermany Nothing

wiesbaden :: Location
wiesbaden = Location "Wiesbaden" WestGermany Nothing

westBerlin :: Location
westBerlin = Location "West Berlin" WestGermany Nothing

karlsruhe :: Location
karlsruhe = Location "Karlsruhe" WestGermany Nothing

stuttgart :: Location
stuttgart = Location "Stuttgart" WestGermany Nothing

pforzheim :: Location
pforzheim  = Location "Pforzheim" WestGermany Nothing
