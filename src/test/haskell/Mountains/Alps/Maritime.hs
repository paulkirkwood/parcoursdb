module Mountains.Alps.Maritime
(colDeBraus
,colDuCastillon
,colDuColmiane
,colD'Espigoulier
,isola2000
,montFaron
,colDuTurini
,vasson
,colDeMacuegne
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

alpesMaritimeCol :: String -> Int -> Col
alpesMaritimeCol name height = Col name France height Nothing Nothing Nothing

colDeBraus :: Col
colDeBraus = alpesMaritimeCol "Col de Braus" 1002

colDuCastillon :: Col
colDuCastillon = alpesMaritimeCol "Col du Castillon" 706

colDuColmiane :: Col
colDuColmiane = alpesMaritimeCol "Col du Colmiane" 1500

colD'Espigoulier :: Col
colD'Espigoulier = alpesMaritimeCol "Col d'Espigoulier" 728

isola2000 :: Col
isola2000 = alpesMaritimeCol "Isola 2000" 1900

montFaron :: Col
montFaron = alpesMaritimeCol "Mont Faron" 665

colDuTurini :: Col
colDuTurini = alpesMaritimeCol "Col du Turini" 1607

vasson :: Col
vasson = alpesMaritimeCol "Vasson" 1700

colDeMacuegne :: Col
colDeMacuegne = alpesMaritimeCol "Col de Macuègne" 1068
