module Countries.Switzerland
(basel
,bern
,cransMontana
,fribourg
,geneva
,laChauxDeFonds
,lausanne
,lenzerheide
,leukerbad
,locarno
,lugano
,martigny
,melide
,mendrisio
,mohin
,monteGeneroso
,neuchatel
,saasFee
,saintMoritz
,sion
,verbier
,zurich
)
where

import ParcoursDB.Country
import ParcoursDB.Location

swissLocation :: String -> Location
swissLocation loc = Location loc Switzerland Nothing

-- B
basel :: Location
basel = swissLocation "Basel"

bern :: Location
bern = swissLocation "Bern"

--C
cransMontana :: Location
cransMontana = Location "Crans-Montana" Switzerland (Just 1670)

-- F
fribourg :: Location
fribourg = swissLocation "Fribourg"

-- G
geneva :: Location
geneva = swissLocation "Geneva"

-- L
laChauxDeFonds :: Location
laChauxDeFonds = swissLocation "La Chaux-de-Fonds"

lausanne :: Location
lausanne = swissLocation "Lausanne"

lenzerheide :: Location
lenzerheide = swissLocation "Lenzerheide"

leukerbad :: Location
leukerbad = swissLocation "Leukerbad"

locarno :: Location
locarno = swissLocation "Locarno"

lugano :: Location
lugano = swissLocation "Lugano"

-- M
martigny :: Location
martigny = swissLocation "Martigny"

melide :: Location
melide = swissLocation "Melide"

mendrisio :: Location
mendrisio = swissLocation "Mendrisio"

mohin :: Location
mohin = swissLocation "Mohin"

monteGeneroso :: Location
monteGeneroso = swissLocation "Monte Generoso"

-- N
neuchatel :: Location
neuchatel = swissLocation "Neuchatel"

-- S
saasFee :: Location
saasFee = swissLocation "Saas Fee"

saintMoritz :: Location
saintMoritz = Location "Saint Moritz" Switzerland (Just 1822)

sion :: Location
sion = swissLocation "Sion"

-- V
verbier :: Location
verbier = Location "Verbier" Switzerland (Just 1468)

-- Z
zurich :: Location
zurich = swissLocation "Zurich"
