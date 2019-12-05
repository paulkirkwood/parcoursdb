module Mountains.Appennines
where

import ParcoursDB.Col
import ParcoursDB.Country (Country(Italy))

appennineCol :: String -> Int -> Col
appennineCol name height = Col name Italy height Nothing Nothing Nothing

blockhaus :: Col
blockhaus = appennineCol "Blockhaus" 1210

coppaCasarinelle :: Col
coppaCasarinelle = appennineCol "Coppa Casarinelle" 678

gabicceMonte :: Col
gabicceMonte = appennineCol "Gabicce Monte" 120

leSvolteDiPopoli :: Col
leSvolteDiPopoli = appennineCol "Le Svolte di Popoli" 746

manciano :: Col
manciano = appennineCol "Manciano" 389

montalbano :: Col
montalbano = appennineCol "Montalbano" 424

monteCarpegna :: Col
monteCarpegna = appennineCol "Monte Carpegna" 1369

monteDellaMattera :: Col
monteDellaMattera = appennineCol "Monte della Mattera" 418

montePetrano :: Col
montePetrano = appennineCol "Monte Petrano" 1105

monteSanVicino :: Col
monteSanVicino = appennineCol "Monte San Vicino" 1214

monteTerminillo :: Col
monteTerminillo = appennineCol "Monte Terminillo" 2217

monteTrebbio :: Col
monteTrebbio = appennineCol "Monte Trebbio" 575

monteluro :: Col
monteluro = appennineCol "Monteluro" 222

mountVesuvius :: Col
mountVesuvius = appennineCol "Mount Vesuvius" 1030

poggioL'Appartita :: Col
poggioL'Appartita = appennineCol "Poggio L'Appartita" 202

sanBaronto :: Col
sanBaronto = appennineCol "San Baranto" 340

sezze :: Col
sezze = appennineCol "Sezze" 248
