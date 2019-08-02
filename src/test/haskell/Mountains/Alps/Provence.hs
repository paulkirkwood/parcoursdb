module Mountains.Alps.Provence
( montVentoux
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France)) 

montVentoux :: Col
montVentoux = Col "Mont Ventoux" France 1912 (Just 21.4) (Just 7.6) (Just 12)
