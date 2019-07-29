module Countries.Germany
(dusseldorf
,freiburg
,koblenz
,saarbrucken
,pforzheim
,karlsruhe
)where

import ParcoursDB.Country
import ParcoursDB.Location

germanLocation :: String -> Location
germanLocation location = Location location Germany

dusseldorf :: Location
dusseldorf = germanLocation "Dusseldorf"

freiburg :: Location
freiburg = germanLocation "Freiburg"

koblenz :: Location
koblenz = germanLocation "Koblenz"

saarbrucken :: Location
saarbrucken = germanLocation "Saarbrücken"

pforzheim :: Location
pforzheim = germanLocation "Pforzheim"

karlsruhe :: Location
karlsruhe = germanLocation "Karlsruhe"
