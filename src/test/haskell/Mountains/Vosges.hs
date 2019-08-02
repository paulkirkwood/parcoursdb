module Mountains.Vosges
(colAmic
,ballonD'Alsace
,ballonDeServance
,colDuBonhomme
,colDuCalvaire
,champDuFeu
,champDuMessin
,chevreres
,colDeLaCharbonniere
,colletDuLinge
,donon
,grandBallon
,grossePierre
,gueberschwihr
,kreuzweg
,oderen
,petitBallon
,platzerwasel
,colDeLaSchluct
,laPlancheDesBellesFilles
,laCroixDesMoinats
,leFirstplan
,leMarkstein
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

vosgesCol :: String -> Int -> Col
vosgesCol name height = Col name France height Nothing Nothing Nothing

colAmic :: Col
colAmic = vosgesCol "Col Amic" 825

ballonD'Alsace :: Col
ballonD'Alsace = vosgesCol "Ballon d'Alsace" 1178

ballonDeServance :: Col
ballonDeServance = vosgesCol "Ballon de Servance" 1175

colDuBonhomme :: Col
colDuBonhomme = vosgesCol "Col du Bonhomme" 950

colDuCalvaire :: Col
colDuCalvaire = vosgesCol "Col du Calvaire" 1144

champDuFeu :: Col
champDuFeu = vosgesCol "Champ du Feu" 1100

champDuMessin :: Col
champDuMessin = vosgesCol "Champ du Messin" 1010

chevreres :: Col
chevreres = vosgesCol "Chevrères" 914

colDeLaCharbonniere :: Col
colDeLaCharbonniere = vosgesCol "Col de la Charbonnière" 960

colletDuLinge :: Col
colletDuLinge = vosgesCol "Collet du Linge" 983

donon :: Col
donon = vosgesCol "Donon" 727

grandBallon :: Col
grandBallon = vosgesCol "Grand Ballon" 1424

grossePierre :: Col
grossePierre = vosgesCol "Grosse Pierre" 923

gueberschwihr :: Col
gueberschwihr = vosgesCol "Gueberschwihr" 559

kreuzweg :: Col
kreuzweg = vosgesCol "Kreuzweg" 708

oderen :: Col
oderen = vosgesCol "Oderen" 884

petitBallon :: Col
petitBallon = vosgesCol "Petit Ballon" 1163

platzerwasel :: Col
platzerwasel = vosgesCol "Platzerwasel" 1193

colDeLaSchluct :: Col
colDeLaSchluct = vosgesCol "Col de la Schluct" 1140

laPlancheDesBellesFilles :: Col
laPlancheDesBellesFilles = vosgesCol "La Planche des Belles Filles" 1035

laCroixDesMoinats :: Col
laCroixDesMoinats = vosgesCol "La Croix des Moinats" 891

leFirstplan :: Col
leFirstplan = vosgesCol "Le Firstplan" 722

leMarkstein :: Col
leMarkstein = vosgesCol "Le Markstein" 1183

