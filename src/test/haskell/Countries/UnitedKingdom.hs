module Countries.UnitedKingdom
(
brighton
,cambridge
,canterbury
,dover
,harrogate
,leeds
,london
,plymouth
,portsmouth
,sheffield
,york
)
where

import ParcoursDB.Country
import ParcoursDB.Location

britishLocation :: String -> Location
britishLocation loc = Location loc UnitedKingdom

brighton :: Location
brighton   = britishLocation "Brighton"

cambridge :: Location
cambridge  = britishLocation "Cambridge"

canterbury :: Location
canterbury = britishLocation "Canterbury"

dover :: Location
dover      = britishLocation "Dover"

harrogate :: Location
harrogate  = britishLocation "Harrogate"

leeds :: Location
leeds = britishLocation "Leeds"

london :: Location
london = britishLocation "London"

plymouth :: Location
plymouth = britishLocation "Plymouth"

portsmouth :: Location
portsmouth = britishLocation "Portsmouth"

sheffield :: Location
sheffield = britishLocation "Sheffield"

york :: Location
york = britishLocation "York"
