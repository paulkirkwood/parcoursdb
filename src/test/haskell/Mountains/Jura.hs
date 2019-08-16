module Mountains.Jura
(barrageDeVouglans
,cerdon
,colDeLaBiche
,colDeLaCroix
,colDeLaFaucille
,colDuBerthiand
,colDuGrandColombier
,coteDeLamoura
,coteDeViry
,coteDesNeyrolles
,coteDesRousses
,croixDeLaSerra
,lacetsDuGrandColombier
,mollendruz
,montDuChat
,monteeDeLaCombeDeLaisiaLesMolunes
,vueDesAlpes
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

juraCol :: String -> Int -> Col
juraCol name height = Col name France height Nothing Nothing Nothing

barrageDeVouglans :: Col
barrageDeVouglans = juraCol "Barrage de Vouglans" 710

colDuBerthiand :: Col
colDuBerthiand = juraCol "Col du Berthiand" 780

cerdon :: Col
cerdon = juraCol "Cerdon" 595

croixDeLaSerra :: Col
croixDeLaSerra = juraCol "Croix de la Serra" 1049

colDeLaCroix :: Col
colDeLaCroix = juraCol "Col de la Croix" 789

colDeLaFaucille :: Col
colDeLaFaucille = juraCol "Col de la Faucille" 1323

coteDesRousses :: Col
coteDesRousses = juraCol "Côte des Rousses" 1140

colDuGrandColombier :: Col
colDuGrandColombier = juraCol "Col du Grand Colombier" 1501

coteDeLamoura :: Col
coteDeLamoura = juraCol "Côte de Lamoura" 1145

lacetsDuGrandColombier :: Col
lacetsDuGrandColombier = juraCol "Lacets du Grand Colombier" 891

mollendruz :: Col
mollendruz = juraCol "Mollendruz" 1185

montDuChat :: Col
montDuChat = juraCol "Mont du Chat" 1504

vueDesAlpes :: Col
vueDesAlpes = juraCol "Vue des Alpes" 1283

colDeLaBiche :: Col
colDeLaBiche = juraCol "Col de la Biche" 1316

croixDeFamban :: Col
croixDeFamban = alias colDeLaBiche

coteDesNeyrolles :: Col
coteDesNeyrolles = juraCol "Côte des Neyrolles" 825

coteDeViry :: Col
coteDeViry = juraCol "Côte de Viry" 748

monteeDeLaCombeDeLaisiaLesMolunes :: Col
monteeDeLaCombeDeLaisiaLesMolunes = juraCol "Montée de la Combe de Laisia Les Molunes" 1202
