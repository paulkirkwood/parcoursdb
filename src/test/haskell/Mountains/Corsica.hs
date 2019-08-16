module Mountains.Corsica
(colDeMarsolino
,colDeVizzavona
)
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(France))

corsicanCol :: String -> Int -> Col
corsicanCol name height = Col name France height Nothing Nothing Nothing

colDeMarsolino :: Col
colDeMarsolino = corsicanCol "Col de Marsolino" 443

colDeVizzavona :: Col
colDeVizzavona = corsicanCol "Col de Vizzavona" 1120
