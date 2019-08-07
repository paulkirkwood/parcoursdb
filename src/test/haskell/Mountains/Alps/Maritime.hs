module Mountains.Alps.Maritime
(colD'Espigoulier
,colD'Eze
,colDeBraus
,colDeCalaison
,colDeMacuegne
,colDesQuatreChemins
,colDuCastillon
,colDuColmiane
,colDuTurini
,colSaintRaphael
,coteDeChateauneuf
,coteDeGattieres
,coteDeLaSainteBaume
,coteDeLevens
,coteDePeille
,coteDeVillarsSurVar
,isola2000
,montFaron
,valdebloreLaColmiane
,vasson
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

coteDeLevens :: Col
coteDeLevens = alpesMaritimeCol "Cote de Levens" 477

coteDeChateauneuf :: Col
coteDeChateauneuf = alpesMaritimeCol "Cote de Chateauneuf" 633

colDeCalaison :: Col
colDeCalaison = alpesMaritimeCol "Col de Calaison" 468

coteDePeille :: Col
coteDePeille = alpesMaritimeCol "Cote de Peille" 653

colD'Eze :: Col
colD'Eze = alpesMaritimeCol "Col d'Eze" 508

colDesQuatreChemins :: Col
colDesQuatreChemins = alpesMaritimeCol "Col des Quatre Chemins" 338

coteDeGattieres :: Col
coteDeGattieres = alpesMaritimeCol "Cote de Gattieres" 264

coteDeLaSainteBaume :: Col
coteDeLaSainteBaume = alpesMaritimeCol "Cote de la Sainte-Baume" 1118

colSaintRaphael :: Col
colSaintRaphael = alpesMaritimeCol "Col Saint-Rapael" 833

coteDeVillarsSurVar :: Col
coteDeVillarsSurVar = alpesMaritimeCol "Cote de Villars-sur-Var" 417

valdebloreLaColmiane :: Col
valdebloreLaColmiane = alpesMaritimeCol "Valdeblore La Colmiane" 1500
