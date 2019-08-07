module Mountains.Dolomites where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Italy)) 

dolomatianCol :: String -> Int -> Col
dolomatianCol name height = Col name Italy height Nothing Nothing Nothing

-- G
monteGrappa :: Col
monteGrappa = dolomatianCol "Monte Grappa" 1745

-- P
passoPordoi :: Col
passoPordoi = dolomatianCol "Passo Pordoi" 2239

-- Z
monteZoncolan :: Col
monteZoncolan = dolomatianCol "Monte Zoncolan" 1730
