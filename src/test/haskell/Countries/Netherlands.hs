module Countries.Netherlands
(arnhem
,apeldoorn
,breda
,elsloo
,groningen
,heerlen
,helmond
,leiden
,maastricht
,meerssen
,middleburg
,nijmegen
,rotterdam
,sHertogenbosch
,sintWillebrord
,utrecht
,valkenburg
,zeeland
)
where

import ParcoursDB.Country
import ParcoursDB.Location

dutchLocation :: String -> Location
dutchLocation loc = Location loc Netherlands

-- A
arnhem :: Location
arnhem    = dutchLocation "Arnhem"

apeldoorn :: Location
apeldoorn = dutchLocation "Apeldoorn"

-- B
breda :: Location
breda = dutchLocation "Breda"

-- E
elsloo :: Location
elsloo = dutchLocation "Elsloo"

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

-- Z
zeeland :: Location
zeeland = dutchLocation "Zeeland"
