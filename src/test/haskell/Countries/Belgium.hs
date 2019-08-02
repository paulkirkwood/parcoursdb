module Countries.Belgium where

import ParcoursDB.Country
import ParcoursDB.Location

belgianLocation :: String -> Location
belgianLocation name = Location name Belgium

-- A
ans     = Location "Ans" Belgium
antwerp = Location "Antwerp" Belgium
arlon   = Location "Arlon" Belgium

-- B
bastogne :: Location
bastogne = belgianLocation "Bastogne"

beauraing  = Location "Beauraing" Belgium
beringen   = Location "Beringen" Belgium
beveren    = Location "Beveren"  Belgium

bornem :: Location
bornem = belgianLocation "Bornem"

brasschaat = Location "Brasschaat" Belgium
brussels   = Location "Brussels"  Belgium

-- C
charleroi       = Location "Charleroi" Belgium
circuitZolder   = Location "Circuit Zolder" Belgium

-- D
dinant          = Location "Dinant" Belgium

-- E
esneux  = Location "Esneux" Belgium
evergem = Location "Evergem" Belgium

-- F
forest          = Location "Forest" Belgium

-- G
gentbrugge      = Location "Gentbrugge" Belgium
ghent           = Location "Ghent" Belgium

-- H
harelbeke = Location "Harelbeke" Belgium
hasselt   = Location "Hasselt" Belgium
herentals = Location "Herentals" Belgium
hotton    = Location "Hotton" Belgium
huy       = Location "Huy" Belgium

-- J
jambes = Location "Jambes" Belgium

-- K
kuurne = Location "Kuurne" Belgium

-- L
leuven :: Location
leuven = belgianLocation "Leuven"

liege   = Location "Liège" Belgium
lokeren = Location "Lokeren" Belgium

-- M
marcheEnFamenne = Location "Marche-en-Famenne" Belgium
marcinelle      = Location "Marcinelle" Belgium
mariakerke      = Location "Mariakerke" Belgium
meerbeke        = Location "Meerbeke" Belgium

molenbeek :: Location
molenbeek = belgianLocation "Molenbeek"

mons            = Location "Mons" Belgium
mouscron        = Location "Mouscron" Belgium

-- N
namur = Location "Namur" Belgium

-- O
oudenaarde = Location "Oudenaarde" Belgium

-- P
perwez = Location "Perwez" Belgium

-- R
rochefort = Location "Rochefort" Belgium
rocourt   = Location "Rocourt" Belgium

-- S
seraing           = Location "Seraing" Belgium
sintNiklaas       = Location "Sint-Niklaas" Belgium
sintPietersWoluwe = Location "Sint-Pieters-Woluwe" Belgium
spa               = Location "Spa" Belgium

-- T
tournai         = Location "Tournai" Belgium

-- V
verviers        = Location "Verviers" Belgium
vise            = Location "Vise" Belgium

-- W
wanze    = Location "Wanze" Belgium
waregem  = Location "Waregem" Belgium
waterloo = Location "Waterloo" Belgium
wetteren = Location "Wetteren" Belgium

-- Y
ypres           = Location "Ypres" Belgium
