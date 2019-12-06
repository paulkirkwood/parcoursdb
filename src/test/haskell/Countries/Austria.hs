module Countries.Austria
(innsbruck
,klagenfurt
,lienz
,mayrhofen
,veldenAmWorther
)
where

import ParcoursDB.Country
import ParcoursDB.Location

austrianLocation :: String -> Location
austrianLocation location = Location location Austria Nothing

innsbruck :: Location
innsbruck = austrianLocation "Innsbruck"

klagenfurt :: Location
klagenfurt = austrianLocation "Klagenfurt"

lienz :: Location
lienz = austrianLocation "Lienz"

mayrhofen :: Location
mayrhofen = austrianLocation "Mayrhofen"

veldenAmWorther :: Location
veldenAmWorther = austrianLocation "Velden am Worther"
