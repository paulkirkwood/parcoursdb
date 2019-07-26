module Countries.Spain
(barcelona
,girona
,hendaye
,java
,laSeuD'Urgell
,montjuicCircuit
,pamplona
,sanSebastian
,vielhaValD'Aran
)
where

import ParcoursDB.Country
import ParcoursDB.Location

spanishLocation :: String -> Location
spanishLocation loc = Location loc Spain

barcelona :: Location
barcelona = spanishLocation "Barcelona"

girona :: Location
girona = spanishLocation "Girona"

hendaye :: Location
hendaye = spanishLocation "Hendaye"

jaca :: Location
jaca = spanishLocation "Jaca"

laSeuD'Urgell :: Location
laSeuD'Urgell = spanishLocation "La Seu d'Urgell"

montjuicCircuit :: Location "Montjuic circuit"
montjuicCircuit = spanishLocation "Montjuic circuit"

pamplona :: Location
pamplona = spanishLocation "Pamplona"

sanSebastian :: Location
sanSebastian = spanishLocation "San Sebastian"

vielhaValD'Aran :: Location
vielhaValD'Aran = spanishLocation "Vielha Val d'Aran"
