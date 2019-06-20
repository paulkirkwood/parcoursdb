-- file Editions.Giro.hs
module Editions.Giro where

import Control.Monad.State
import Israel
import Italy
import Netherlands
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.StageRace
import ParcoursDB.StageRaceState

giro1980 :: State StageRaceState StageRace
giro1980 = do
  prologue' genoa 7
  roadStage genoa imperia 123
  roadStage imperia turin 179
  roadStage turin parma 243
  roadStage parma marinaDiPisa 193
  individualTimeTrial pontedera pisa 36
  transferDay
  roadStage rioMarina portoferraio 126
  roadStage castigilioneDellaPescaia orvieto 200
  roadStage orvieto fiuggi 216
  roadStage fiuggi sorrento 247
  roadStage sorrento palinuro 177
  roadStage palinuro campotenese 145
  roadStage villapianaLido campiSalentina 203
  roadStage campiSalentina barletta 220
  roadStage foggia roccaraso 186
  roadStage roccaraso termamo 194
  roadStage giulianova gatteoAMare 229
  roadStage gatteoAMare sirmione 237
  roadStage sirmione zoldoAlto 239
  roadStage longarone cles 241
  roadStage cles sondrio 221
  individualTimeTrial saronno turbigo 50
  criterium milan 114
  race <- build
  return race

giro1981 :: State StageRaceState StageRace
giro1981 = do
  prologue' trieste 6.6
  enableSplitStages
  roadStage trieste bibione 100
  teamTimeTrial lignanoSabbiadoro bibione 15
  disableSplitStages
  roadStage bibione ferrara 211
  roadStage bologna recanati 255
  transferDay
  roadStage recanati lanciano 214
  roadStage marinaDiSanVito rodiGarganico 180
  roadStage rodiGarganico bari 225
  roadStage bari potenza 143
  roadStage salaConsilina cosenza 202
  roadStage cosenza reggioCalabria 231
  transferDay
  roadStage rome cascia 166
  roadStage cascia arezzo 199
  roadStage arezzo livorno 224
  individualTimeTrial empoli montecatiniTerme 35
  roadStage montecatiniTerme salsomaggioreTerme 224
  roadStage salsomaggioreTerme pavia 198
  roadStage milan mantua 178
  roadStage mantua borno 215
  roadStage borno dimaro 127
  transferDay
  roadStage dimaro sanVigilloDiMarebbe 208
  roadStage sanVigilloDiMarebbe treCimeDiLavaredo 100
  roadStage auronzoDiCadore arzignano 197
  individualTimeTrial soave verona 42
  race <- build
  return race

giro1987 :: State StageRaceState StageRace
giro1987 = do
  prologue' sanRemo 4
  enableSplitStages
  roadStage sanRemo sanRomolo 31
  individualTimeTrial poggio sanRemo 8
  disableSplitStages
  roadStage imperia borgo 242
  teamTimeTrial lerici camaiore 43
  roadStage camaiore montalcino 203
  roadStage montalcino terni 208
  roadStage terni monteTerminillo 134
  roadStage rieti roccaraso 205
  roadStage roccaraso sanGiorgio 168
  roadStage sanGiorgio bari 257
  roadStage bari termoli 210
  transferDay
  roadStage giulianova osimo 245
  roadStage osimo bellaria 197
  let sanMarino = Location "San Marino" SanMarino
  individualTimeTrial rimini sanMarino 46
  roadStage sanMarino lidoDiJesolo 260
  roadStage lidoDiJesolo sappada 224
  roadStage sappada canazei 211
  roadStage canazei rivaDelGarda 206
  roadStage rivaDelGarda trescore 213
  roadStage trescore madesimo 160
  roadStage madesimo como 156
  roadStage como pila 252
  individualTimeTrial aosta saintVincent 32
  race <- build
  return race

giro2016 :: State StageRaceState StageRace
giro2016 = do
  individualTimeTrial' apeldoorn 9.8
  roadStage arnhem nijmegen 190
  roadStage nijmegen arnhem 190
  transferDay
  roadStage catanzaro prairaAMare 200
  let aremogna = Location "Roccaraso (Aremogna)" Italy
  roadStage ponte aremogna 157
  roadStage sulmona foligno 211
  roadStage foligno arezzo 186
  let chianti = Location "Chianti Classico Stage" Italy
  individualTimeTrial' ( Location "Chianti Classico Stage" Italy) 40.5
  transferDay
  roadStage campiBisenzio sestola 219
  roadStage modena asolo 227
  roadStage noale bibione 182
  let farra = Location "Alpago (Farra)" Italy
  roadStage farra corvara 210
  let seiseralm = Location "Alpe di Siusi/Seiseralm" Italy
  individualTimeTrial castelrotto seiseralm 10.8
  transferDay
  roadStage bressanone andalo 132
  roadStage molveno cassanoDAdda 196
  roadStage muggio pinerolo 244
  roadStage pinerolo risoul 162
  roadStage guillestre santAnnaDiVinadio 134
  roadStage cuneo torino 163
  race <- build
  return race

giro2017 :: State StageRaceState StageRace
giro2017 = do
  roadStage alghero olbia 206
  roadStage olbia tortoli 221
  roadStage tortoli cagliari 148
  transferDay
  roadStage cefalu etna 181
  roadStage pedara messina 159
  roadStage reggioCalabria termeLuigiane 217
  let alberobello = Location "Alberobello (Valle D'Itria)" Italy
  roadStage castrovillari alberobello 224
  roadStage molfetta peschici 189
  roadStage monteneroDiBisaccia blockhaus 149
  transferDay
  individualTimeTrial foligno montefalco 39.8
  let firenze = Location "Firenze (Ponte a Ema)" Italy
  roadStage firenze bagnoDiRomagna 161
  roadStage forli reggioEmilia 234
  roadStage reggioEmilia tortona 167
  let oropa = Location "Oropa (Biella)" Italy
  roadStage castellania oropa 131
  roadStage valdengo bergamo 199
  transferDay
  roadStage rovetta bormio 222
  let canazei = Location "Canazei (Val di Fassa)" Italy
  roadStage tirano canazei 219
  let moena = Location "Moena (Val di Fassa)" Italy
  let ortisei = Location "Ortisei/St. Ulrich (Val Gardena)" Italy
  roadStage moena ortisei 137
  let sanCandido = Location "San Candido/Innichen" Italy
  let piancavallo = Location "Piancavallo (Monte Jafferau)" Italy
  roadStage sanCandido piancavallo 191
  roadStage pordenone asiago 190
  individualTimeTrial monza milan 29.3
  race <- build
  return race

giro2018 :: State StageRaceState StageRace
giro2018 = do
  individualTimeTrial' jerusalem 9.7
  roadStage haifa telAviv 167
  roadStage beersheba eilat 229
  transferDay
  roadStage catania caltagirone 202
  let santaNinfa = Location "Santa Ninfa (Valle del Belice)" Italy
  roadStage agrigento santaNinfa 153
  roadStage caltanissetta mountEtna 169
  roadStage pizzo prairaAMare 159
  roadStage prairaAMare montevergineDiMercogliano 209
  let granSasso = Location "Gran Sasso d'Italia (Campo Imperatore)" Italy
  roadStage pescoSannita granSasso 225
  transferDay
  roadStage penne gualdoTadino 244
  roadStage assisi osimo 156
  roadStage osimo imola 214
  roadStage ferrara nervesaDellaBattaglia 180
  roadStage sanVitoAlTagliamento monteZoncolan 186
  roadStage tolmezzo sappada 176
  transferDay
  individualTimeTrial trento rovereto 34.2
  roadStage rivaDelGarda iseo 149.5
  roadStage abbiategrasso pratoNevoso 196
  roadStage venariaReale bardonecchia 185
  roadStage susa cervinia 214
  criterium rome 115
  race <- build
  return race
