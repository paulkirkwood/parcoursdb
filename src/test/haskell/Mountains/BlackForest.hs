module Mountains.Jura
(happach
,notschrei
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

blackForestCol :: String -> Int -> Col
blackForestCol name height = Col name France height Nothing Nothing Nothing

happach :: Col
happach = blackForestCol "Happach" 1040

notschrei :: Col
notschrei = blackForestCol "Notschrei" 1120
