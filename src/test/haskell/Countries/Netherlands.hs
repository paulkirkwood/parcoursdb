module Countries.Netherlands
(arnhem
,amsterdam
,apeldoorn
,assen
,bergEnTerblijt
,breda
,elsloo
,emmen
,groningen
,heerlen
,helmond
,leiden
,maastricht
,meerssen
,middleburg
,nijmegen
,rotterdam
,scheveningen
,sHertogenbosch
,sintWillebrord
,utrecht
,valkenburg
,venlo
,zeeland
,zutphen
)
where

import ParcoursDB.Country
import ParcoursDB.Location

dutchLocation :: String -> Location
dutchLocation loc = Location loc Netherlands Nothing

-- A
arnhem :: Location
arnhem = dutchLocation "Arnhem"

amsterdam :: Location
amsterdam = dutchLocation "Amsterdam"

apeldoorn :: Location
apeldoorn = dutchLocation "Apeldoorn"

assen :: Location
assen = dutchLocation "Assen"

-- B
bergEnTerblijt :: Location
bergEnTerblijt = dutchLocation "Berg en Terblijt"

breda :: Location
breda = dutchLocation "Breda"

-- E
elsloo :: Location
elsloo = dutchLocation "Elsloo"

emmen :: Location
emmen = dutchLocation "Emmen"

-- G
groningen :: Location
groningen = dutchLocation "Groningen"

-- H
heerlen :: Location
heerlen = dutchLocation "Heerlen"

helmond :: Location
helmond = dutchLocation "Helmond"

-- L
leiden :: Location
leiden = dutchLocation "Leiden"

-- M
maastricht :: Location
maastricht = dutchLocation "Maastricht"

meerssen :: Location
meerssen = dutchLocation "Meerssen"

middleburg :: Location
middleburg = dutchLocation "Middleburg"

-- N
nijmegen :: Location
nijmegen = dutchLocation "Nijmegen"

-- R
rotterdam :: Location
rotterdam = dutchLocation "Rotterdam"

-- S
scheveningen :: Location
scheveningen = dutchLocation "Scheveningen"

sHertogenbosch :: Location
sHertogenbosch = dutchLocation "'s-Hertogenbosch"

sintWillebrord :: Location
sintWillebrord = dutchLocation "Sint Willebrord"

-- U
utrecht :: Location
utrecht = dutchLocation "Utrecht"

-- V
valkenburg :: Location
valkenburg = dutchLocation "Valkenburg"

venlo :: Location
venlo = dutchLocation "Venlo"

-- Z
zeeland :: Location
zeeland = dutchLocation "Zeeland"

zutphen :: Location
zutphen = dutchLocation "Zutphen"
