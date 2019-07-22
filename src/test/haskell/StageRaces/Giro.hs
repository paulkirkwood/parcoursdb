-- file StageRaces.Giro.hs
module StageRaces.Giro
(giro1980
,giro1981
,giro1987
,giro2016
,giro2017
,giro2018
,giroEditions
)where

import Control.Monad.State
import Countries.Israel
import Countries.Italy
import Countries.Netherlands
import Data.Time
import Mountains.Alpes
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

giroEditions :: [StageRace]
giroEditions = [ giro1980
               , giro1981
               , giro1987
               , giro2016
               , giro2017
               , giro2018
               ]

giro1980 :: StageRace
giro1980 = evalState giro1980' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1980 5 15))

giro1980' :: State StageRaceState StageRace
giro1980' = do
  prologue' genoa 7
  roadStage (Left genoa) (Just imperia) 123
  roadStage (Left imperia) (Just turin) 179
  roadStage (Left turin) (Just parma) 243
  roadStage (Left parma) (Just marinaDiPisa) 193
  individualTimeTrial pontedera (Just pisa) 36
  transferDay
  roadStage (Left rioMarina) (Just portoferraio) 126
  roadStage (Left castigilioneDellaPescaia) (Just orvieto) 200
  roadStage (Left orvieto) (Just fiuggi) 216
  roadStage (Left fiuggi) (Just sorrento) 247
  roadStage (Left sorrento) (Just palinuro) 177
  roadStage (Left palinuro) (Just campotenese) 145
  roadStage (Left villapianaLido) (Just campiSalentina) 203
  roadStage (Left campiSalentina) (Just barletta) 220
  roadStage (Left foggia) (Just roccaraso) 186
  roadStage (Left roccaraso) (Just termamo) 194
  roadStage (Left giulianova) (Just gatteoAMare) 229
  roadStage (Left gatteoAMare) (Just sirmione) 237
  roadStage (Left sirmione) (Just zoldoAlto) 239
  roadStage (Left longarone) (Just cles) 241
  roadStage (Left cles) (Just sondrio) 221
  individualTimeTrial saronno (Just turbigo) 50
  criterium milan 114
  race <- build
  return race

giro1981 :: StageRace
giro1981 = evalState giro1981' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1981 5 13))

giro1981' :: State StageRaceState StageRace
giro1981' = do
  prologue' trieste 6.6
  enableSplitStages
  roadStage (Left trieste) (Just bibione) 100
  teamTimeTrial lignanoSabbiadoro bibione 15
  disableSplitStages
  roadStage (Left bibione) (Just ferrara) 211
  roadStage (Left bologna) (Just recanati) 255
  transferDay
  roadStage (Left recanati) (Just lanciano) 214
  roadStage (Left marinaDiSanVito) (Just rodiGarganico) 180
  roadStage (Left rodiGarganico) (Just bari) 225
  roadStage (Left bari) (Just potenza) 143
  roadStage (Left salaConsilina) (Just cosenza) 202
  roadStage (Left cosenza) (Just reggioCalabria) 231
  transferDay
  roadStage (Left rome) (Just cascia) 166
  roadStage (Left cascia) (Just arezzo) 199
  roadStage (Left arezzo) (Just livorno) 224
  individualTimeTrial empoli (Just montecatiniTerme) 35
  roadStage (Left montecatiniTerme) (Just salsomaggioreTerme) 224
  roadStage (Left salsomaggioreTerme) (Just pavia) 198
  roadStage (Left milan) (Just mantua) 178
  roadStage (Left mantua) (Just borno) 215
  roadStage (Left borno) (Just dimaro) 127
  transferDay
  roadStage (Left dimaro) (Just sanVigilloDiMarebbe) 208
  roadStage (Left sanVigilloDiMarebbe) (Just treCimeDiLavaredo) 100
  roadStage (Left auronzoDiCadore) (Just arzignano) 197
  individualTimeTrial soave (Just verona) 42
  race <- build
  return race

giro1987 :: StageRace
giro1987 = evalState giro1987' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1987 5 21))

giro1987' :: State StageRaceState StageRace
giro1987' = do
  prologue' sanRemo 4
  enableSplitStages
  roadStage (Left sanRemo) (Just sanRomolo) 31
  individualTimeTrial poggio (Just sanRemo) 8
  disableSplitStages
  roadStage (Left imperia) (Just borgo) 242
  teamTimeTrial lerici camaiore 43
  roadStage (Left camaiore) (Just montalcino) 203
  roadStage (Left montalcino) (Just terni) 208
  roadStage (Left terni) (Just monteTerminillo) 134
  roadStage (Left rieti) (Just roccaraso) 205
  roadStage (Left roccaraso) (Just sanGiorgio) 168
  roadStage (Left sanGiorgio) (Just bari) 257
  roadStage (Left bari) (Just termoli) 210
  transferDay
  roadStage (Left giulianova) (Just Countries.Italy.osimo) 245
  roadStage (Left Countries.Italy.osimo) (Just bellaria) 197
  let sanMarino = Location "San Marino" SanMarino
  individualTimeTrial rimini (Just sanMarino) 46
  roadStage (Left sanMarino) (Just lidoDiJesolo) 260
  roadStage (Left lidoDiJesolo) (Just sappada) 224
  roadStage (Left sappada) (Just canazei) 211
  roadStage (Left canazei) (Just rivaDelGarda) 206
  roadStage (Left rivaDelGarda) (Just trescore) 213
  roadStage (Left trescore) (Just madesimo) 160
  roadStage (Left madesimo) (Just como) 156
  roadStage (Left como) (Just pila) 252
  individualTimeTrial aosta (Just saintVincent) 32
  race <- build
  return race

giro2016 :: StageRace
giro2016 = evalState giro2016' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2016 5 6))

giro2016' :: State StageRaceState StageRace
giro2016' = do
  individualTimeTrial' apeldoorn 9.8
  roadStage (Left arnhem) (Just nijmegen) 190
  roadStage (Left nijmegen) (Just arnhem) 190
  transferDay
  roadStage (Left catanzaro) (Just praiaAMare) 200
  roadStage (Left praiaAMare) (Just benevento) 233
  let aremogna = Location "Roccaraso (Aremogna)" Italy
  roadStage (Left ponte) (Just aremogna) 157
  roadStage (Left sulmona) (Just foligno) 211
  roadStage (Left foligno) (Just arezzo) 186
  let chianti = Location "Chianti Classico Stage" Italy
  individualTimeTrial' chianti 40.5
  transferDay
  roadStage (Left campiBisenzio) (Just sestola) 219
  roadStage (Left modena) (Just asolo) 227
  roadStage (Left noale) (Just bibione) 182
  roadStage (Left palmanova) (Just cividaleDelFruili) 170
  let farra = Location "Alpago (Farra)" Italy
  roadStage (Left farra) (Just corvara) 210
  let seiseralm = Location "Alpe di Siusi/Seiseralm" Italy
  individualTimeTrial castelrotto (Just seiseralm) 10.8
  transferDay
  roadStage (Left bressanone) (Just andalo) 132
  roadStage (Left molveno) (Just cassanoDAdda) 196
  roadStage (Left muggio) (Just pinerolo) 244
  roadStage (Left pinerolo) (Just risoul) 162
  roadStage (Left guillestre) (Just santAnnaDiVinadio) 134
  roadStage (Left cuneo) (Just torino) 163
  race <- build
  return race

giro2017 :: StageRace
giro2017 = evalState giro2017' (ParcoursDB.State.StageRace.init (Giro [])(fromGregorian 2017 5 5))

giro2017' :: State StageRaceState StageRace
giro2017' = do
  roadStage (Left alghero) (Just olbia) 206
  roadStage (Left olbia) (Just tortoli) 221
  roadStage (Left tortoli) (Just cagliari) 148
  transferDay
  roadStage (Left cefalu) (Just etna) 181
  roadStage (Left pedara) (Just messina) 159
  roadStage (Left reggioCalabria) (Just termeLuigiane) 217
  let alberobello = Location "Alberobello (Valle D'Itria)" Italy
  roadStage (Left castrovillari) (Just alberobello) 224
  roadStage (Left molfetta) (Just peschici) 189
  roadStage (Left monteneroDiBisaccia) (Just blockhaus) 149
  transferDay
  individualTimeTrial foligno (Just montefalco) 39.8
  let firenze = Location "Firenze (Ponte a Ema)" Italy
  roadStage (Left firenze) (Just bagnoDiRomagna) 161
  roadStage (Left forli) (Just reggioEmilia) 234
  roadStage (Left reggioEmilia) (Just tortona) 167
  let oropa = Location "Oropa (Biella)" Italy
  roadStage (Left castellania) (Just oropa) 131
  roadStage (Left valdengo) (Just bergamo) 199
  transferDay
  roadStage (Left rovetta) (Just bormio) 222
  let canazei = Location "Canazei (Val di Fassa)" Italy
  roadStage (Left tirano) (Just canazei) 219
  let moena = Location "Moena (Val di Fassa)" Italy
  let ortisei = Location "Ortisei/St. Ulrich (Val Gardena)" Italy
  roadStage (Left moena) (Just ortisei) 137
  let sanCandido = Location "San Candido/Innichen" Italy
  let piancavallo = Location "Piancavallo (Monte Jafferau)" Italy
  roadStage (Left sanCandido) (Just piancavallo) 191
  roadStage (Left pordenone) (Just asiago) 190
  individualTimeTrial monza (Just milan) 29.3
  race <- build
  return race

giro2018 :: StageRace
giro2018 = evalState giro2018' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2018 5 4))

giro2018' :: State StageRaceState StageRace
giro2018' = do
  -- Stage 1
  individualTimeTrial' jerusalem 9.7

  -- Stage 2
  roadStage (Left haifa) (Just telAviv) 167
  c4' 91 "Zikhrow Ya'Aqov" Israel 162

  -- Stage 3
  roadStage (Left beersheba) (Just eilat) 229
  c4' 127.8 "Faran River" Israel 322

  transferDay

  -- Stage 4
  roadStage (Left catania) (Just caltagirone) 202
  c4' 86.4 "Pietre Calde" Italy 779
  c4' 154.5 "Vizzini" Italy 595

  -- Stage 5
  let santaNinfa = Location "Santa Ninfa (Valle del Belice)" Italy
  roadStage (Left agrigento) (Just santaNinfa) 153
  c4' 90.7 "Santa Margherita di Belice" Italy 430
  c4' 111.8 "Partanna" Italy 405

  -- Stage 6
  roadStage (Left caltanissetta) Nothing 169
  c1' 169 "Mount Etna" Italy 1736

  -- Stage 7
  roadStage (Left pizzo) (Just praiaAMare) 159

  -- Stage 8
  roadStage (Left praiaAMare) Nothing 209
  c2' 209 "Montevergine Di Mercogliano" Italy 1260

  -- Stage 9
  let granSasso = Location "Gran Sasso d'Italia (Campo Imperatore)" Italy
  roadStage (Left pescoSannita) (Just granSasso) 225
  c2' 108.1 "Roccaraso" Italy 1252
  c2' 192.9 "Calascio" Italy 1190

  transferDay

  -- Stage 10
  roadStage (Left penne) (Just gualdoTadino) 244
  c2' 21.8 "Forte Delia Creta" Italy 1254
  c3' 61.2 "Bruzzolana" Italy 523
  c4' 213.5 "Annifo" Italy 895

  -- Stage 11
  let osimo = Col "Osimo" Italy C4 265 Nothing Nothing Nothing
  roadStage (Left assisi) Nothing 156
  c3' 41.7 "Passo Cornello" Italy 814
  c3' 97.5 "Valico di Pietra Rossa" Italy 674
  addCol 156 osimo

  -- Stage 12
  roadStage (Right osimo) (Just imola) 214
  c4' 206.6 "Tre Monti" Italy 252

  -- Stage 13
  roadStage (Left ferrara) (Just nervesaDellaBattaglia) 180
  c4' 160.7 "Montello" Italy 242

  -- Stage 14
  roadStage (Left sanVitoAlTagliamento) Nothing 186
  c3' 43.3 "Monte di Ragogna" Italy 494
  c3' 106 "Avaglio" Italy 738
  c2' 142.5 "Passo Duron" Italy 1609
  c3' 165.8 "Sella Valcalda Ravascletto" Italy 958
  c1' 186 "Monte Zoncolan" Italy 1730

  -- Stage 15
  roadStage (Left tolmezzo) (Just sappada) 176
  c3' 48.4 "Passo della Mauria" Italy 1301
  c2' 110.6 "Passo Tre Croci" Italy 1805
  c2' 146.9 "Passo di Sant'Antonio" Italy 1470
  c2' 160.6 "Costalissoio (Bosco dei Giavi)" Italy 1300

  transferDay

  -- Stage 16
  individualTimeTrial trento (Just rovereto) 34.2

  -- Stage 17
  roadStage (Left rivaDelGarda) (Just iseo) 149.5
  c3' 71.5 "Lodrino" Italy 736

  -- Stage 18
  roadStage (Left abbiategrasso) Nothing 196
  c1' 196 "Prato Nevoso" Italy 1607

  -- Stage 19
  roadStage (Left venariaReale) Nothing 185
  c2' 48.9 "Colle del Lys" Italy 1311
  c1' 110.7 "Colle delle Finestre" Italy 2178
  c3' 138.4 "Sestriere" Italy 2035
  addCol 184 (ParcoursDB.Col.clone monteJafferau "Bardonecchia")

  -- Stage 20
  roadStage (Left susa) Nothing 214
  c1' 146.5 "Col Tsecore (Col du Mont-Tseuc)" Italy 1623
  c1' 185.8 "Col de Saint-Pantaleon" Italy 1664
  c1' 214 "Cervinia" Italy 2001

  -- Stage 21
  criterium rome 115

  race <- build
  return race
