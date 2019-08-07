module Countries.Andorra
(andorra
,andorraLaVella
,envalira
,estacioDePal
,estacioD'EsquiD'OrdinoArcalis
,escaldesEngordany
,naturlandia
,pal)
where

import ParcoursDB.Country
import ParcoursDB.Location

andorranLocation :: String -> Location
andorranLocation location = Location location Andorra

andorra :: Location
andorra = andorranLocation "Andorra"

andorraLaVella :: Location
andorraLaVella = andorranLocation "Andorra la Vella"

envalira :: Location
envalira = andorranLocation "Envalira"

estacioDePal :: Location
estacioDePal = andorranLocation "Estacio de Pal"

estacioD'EsquiD'OrdinoArcalis :: Location
estacioD'EsquiD'OrdinoArcalis = andorranLocation "Estacio d'Esqui d'Ordino-Alcalis"

escaldesEngordany :: Location
escaldesEngordany = andorranLocation "Escaldes-Engordany"

naturlandia :: Location
naturlandia = andorranLocation "Naturlandia"

pal :: Location
pal = andorranLocation "Pal"
