module Countries.Germany
(cologne
,dusseldorf
,freiburg
,koblenz
,munster
,saarbrucken
,pforzheim
,karlsruhe
)where

import ParcoursDB.Country
import ParcoursDB.Location

germanLocation :: String -> Location
germanLocation location = Location location Germany

cologne :: Location
cologne = germanLocation "Cologne"

dusseldorf :: Location
dusseldorf = germanLocation "Dusseldorf"

freiburg :: Location
freiburg = germanLocation "Freiburg"

koblenz :: Location
koblenz = germanLocation "Koblenz"

munster :: Location
munster = germanLocation "Münster"

saarbrucken :: Location
saarbrucken = germanLocation "Saarbrücken"

pforzheim :: Location
pforzheim = germanLocation "Pforzheim"

karlsruhe :: Location
karlsruhe = germanLocation "Karlsruhe"
