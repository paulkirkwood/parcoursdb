module Countries.Croatia
(porec
,pula)
where

import ParcoursDB.Country
import ParcoursDB.Location

croatianLocation :: String -> Location
croatianLocation loc = Location loc Croatia

porec :: Location
porec = croatianLocation "Porec"

pula :: Location
pula = croatianLocation "Pula"
