module Countries.Portugal
(evora
,lisbon
,estoril
,loule
,vilamoura
)
where

import ParcoursDB.Country
import ParcoursDB.Location

portugueseLocation :: String -> Location
portugueseLocation loc = Location loc Portugal

evora :: Location
evora = portugueseLocation "Evora"

estoril :: Location
estoril = portugueseLocation "Estoril"

lisbon :: Location
lisbon = portugueseLocation "Lisbon"

loule :: Location
loule = portugueseLocation "Loule"

vilamoura :: Location
vilamoura = portugueseLocation "Vilamoura"
