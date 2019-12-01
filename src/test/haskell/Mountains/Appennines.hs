module Mountains.Appennines
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Italy))

appennineCol :: String -> Int -> Col
appennineCol name height = Col name Italy height Nothing Nothing Nothing

montalbano :: Col
montalbano = appennineCol "Montalbano" 424

sanBaronto :: Col
sanBaronto = appennineCol "San Baranto" 340

poggioL'Appartita :: Col
poggioL'Appartita = appennineCol "Poggio L'Appartita" 202

manciano :: Col
manciano = appennineCol "Manciano" 389

sezze :: Col
sezze = appennineCol "Sezze" 248

coppaCasarinelle :: Col
coppaCasarinelle = appennineCol "Coppa Casarinelle" 678

leSvolteDiPopoli :: Col
leSvolteDiPopoli = appennineCol "Le Svolte di Popoli" 746

monteDellaMattera :: Col
monteDellaMattera = appennineCol "Monte della Mattera" 418

monteluro :: Col
monteluro = appennineCol "Monteluro" 222

gabicceMonte :: Col
gabicceMonte = appennineCol "Gabicce Monte" 120

blockhaus :: Col
blockhaus = appennineCol "Blockhaus" 1210

monteTerminillo :: Col
monteTerminillo = appennineCol "Monte Terminillo" 2217
