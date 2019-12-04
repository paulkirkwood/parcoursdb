module Mountains.Dolomites where

import Countries.Italy (alpeDiPampeago,alpeDiSiusi,planDeCorones,sanMartinoDiCastrozza)
import ParcoursDB.Col
import ParcoursDB.Country (Country(Italy)) 

dolomatianCol :: String -> Int -> Col
dolomatianCol name height = Col name Italy height Nothing Nothing Nothing

-- A
anterselva :: Col
anterselva = dolomatianCol "Anterselva" 1635

antholz :: Col
antholz = alias anterselva "Antholz"

alpeDiPampeago :: Col
alpeDiPampeago = colFromLocation Countries.Italy.alpeDiPampeago

alpeDiSiusi :: Col
alpeDiSiusi = colFromLocation Countries.Italy.alpeDiSiusi

-- C
cimaCampo :: Col
cimaCampo = dolomatianCol "Cima Campo" 1425

croceD'Aune :: Col
croceD'Aune = dolomatianCol "Croce d'Aune" 1015

-- E
elvas :: Col
elvas = dolomatianCol "Elva" 824

-- G
monteGrappa :: Col
monteGrappa = dolomatianCol "Monte Grappa" 1745

-- L
lamon :: Col
lamon = dolomatianCol "Lamon" 594

-- M
monteAvena :: Col
monteAvena = dolomatianCol "Monte Avena" 1225

-- P
passoManghen :: Col
passoManghen = dolomatianCol "Passo Manghen" 2047

passoRolle :: Col
passoRolle = dolomatianCol "Passo Rolle" 1980

passoDiSanBoldo :: Col
passoDiSanBoldo = dolomatianCol "Passo di San Boldo" 701

passoPordoi :: Col
passoPordoi = dolomatianCol "Passo Pordoi" 2239

pieveDiAlpago :: Col
pieveDiAlpago = dolomatianCol "Pieve di Alpago" 691

planDeCorones :: Col
planDeCorones = colFromLocation Countries.Italy.planDeCorones

-- S
sanMartinoDiCastrozza :: Col
sanMartinoDiCastrozza = colFromLocation Countries.Italy.sanMartinoDiCastrozza

-- T
torricelle :: Col
torricelle = dolomatianCol "Torricelle" 277

terento :: Col
terento = dolomatianCol "Terento" 1244

treCimeDiLavaredo :: Col
treCimeDiLavaredo = dolomatianCol "Tre Cime di Lavaredo" 2333

-- Z
monteZoncolan :: Col
monteZoncolan = dolomatianCol "Monte Zoncolan" 1730
