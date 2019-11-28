module Countries.Belgium
(ans
,antwerp
,arlon
,bastogne
,beauraing
,beringen
,beveren
,bornem
,brasschaat
,bruges
,brussels
,charleroi
,circuitZolder
,dinant
,esneux
,evergem
,forest
,gentbrugge
,ghent
,harelbeke
,hasselt
,herentals
,hotton
,huy
,jambes
,kuurne
,leuven
,liege
,lokeren
,marcheEnFamenne
,marcinelle
,mariakerke
,meerbeke
,molenbeek
,mons
,mouscron
,namur
,oudenaarde
,perwez
,rochefort
,rocourt
,seraing
,sintNiklaas
,sintPietersWoluwe
,spa
,tournai
,verviers
,vise
,wanze
,waregem
,waterloo
,wetteren
,wevelgem
,ypres
)
where

import ParcoursDB.Country
import ParcoursDB.Location

belgianLocation :: String -> Location
belgianLocation name = Location name Belgium Nothing

-- A
ans :: Location
ans = belgianLocation "Ans"

antwerp :: Location
antwerp = belgianLocation "Antwerp"

arlon :: Location
arlon = belgianLocation "Arlon"

-- B
bastogne :: Location
bastogne = belgianLocation "Bastogne"

beauraing :: Location
beauraing = belgianLocation "Beauraing"

beringen :: Location
beringen = belgianLocation "Beringen"

beveren :: Location
beveren = belgianLocation "Beveren"

bornem :: Location
bornem = belgianLocation "Bornem"

brasschaat :: Location
brasschaat = belgianLocation "Brasschaat"

bruges :: Location
bruges = belgianLocation "Bruges"

brussels :: Location
brussels = belgianLocation "Brussels"

-- C
charleroi :: Location
charleroi = belgianLocation "Charleroi"

circuitZolder :: Location
circuitZolder = belgianLocation "Circuit Zolder"

-- D
dinant :: Location
dinant = belgianLocation "Dinant"

-- E
esneux :: Location
esneux  = belgianLocation "Esneux"

evergem :: Location
evergem = belgianLocation "Evergem"

-- F
forest :: Location
forest = belgianLocation "Forest"

-- G
gentbrugge :: Location
gentbrugge = belgianLocation "Gentbrugge"

ghent :: Location
ghent = belgianLocation "Ghent"

-- H
harelbeke :: Location
harelbeke = belgianLocation "Harelbeke"

hasselt :: Location
hasselt = belgianLocation "Hasselt"

herentals :: Location
herentals = belgianLocation "Herentals"

hotton :: Location
hotton = belgianLocation "Hotton"

huy :: Location
huy = belgianLocation "Huy"

-- J
jambes :: Location
jambes = belgianLocation "Jambes"

-- K
kuurne :: Location
kuurne = belgianLocation "Kuurne"

-- L
leuven :: Location
leuven = belgianLocation "Leuven"

liege :: Location
liege = belgianLocation "Liège"

lokeren :: Location
lokeren = belgianLocation "Lokeren"

-- M
marcheEnFamenne :: Location
marcheEnFamenne = belgianLocation "Marche-en-Famenne"

marcinelle :: Location
marcinelle = belgianLocation "Marcinelle"

mariakerke :: Location
mariakerke = belgianLocation "Mariakerke"

meerbeke :: Location
meerbeke = belgianLocation "Meerbeke"

molenbeek :: Location
molenbeek = belgianLocation "Molenbeek"

mons :: Location
mons = belgianLocation "Mons"

mouscron :: Location
mouscron = belgianLocation "Mouscron"

-- N
namur :: Location
namur = belgianLocation "Namur"

-- O
oudenaarde :: Location
oudenaarde = belgianLocation "Oudenaarde"

-- P
perwez :: Location
perwez = belgianLocation "Perwez"

-- R
rochefort :: Location
rochefort = belgianLocation "Rochefort"

rocourt :: Location
rocourt = belgianLocation "Rocourt"

-- S
seraing :: Location
seraing = belgianLocation "Seraing"

sintNiklaas :: Location
sintNiklaas = belgianLocation "Sint-Niklaas"

sintPietersWoluwe :: Location
sintPietersWoluwe = belgianLocation "Sint-Pieters-Woluwe"

spa :: Location
spa = belgianLocation "Spa"

-- T
tournai :: Location
tournai = belgianLocation "Tournai"

-- V
verviers :: Location
verviers = belgianLocation "Verviers"

vise :: Location
vise = belgianLocation "Vise"

-- W
wanze :: Location
wanze = belgianLocation "Wanze"

waregem :: Location
waregem  = belgianLocation "Waregem"

waterloo :: Location
waterloo = belgianLocation "Waterloo"

wetteren :: Location
wetteren = belgianLocation "Wetteren"

wevelgem :: Location
wevelgem = belgianLocation "Wevelgem"

-- Y
ypres :: Location
ypres = belgianLocation "Ypres"
