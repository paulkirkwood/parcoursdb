-- file StageRaces.Vuelta.hs
module StageRaces.Vuelta
(vuelta2017
,vuelta2018
,vueltaEditions
)where

import Control.Monad.State
import Countries.Andorra
import Countries.France
import Countries.Spain
import Data.Time
import Mountains.Asturias
import Mountains.Cantabrian
import Mountains.Pyrenees
import Mountains.SierraDeLosFilabres
import Mountains.SierraNevada
import Mountains.SierraSurDeJaen
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.NonConsecutiveStageRace hiding (roadStage,teamTimeTrial)
import ParcoursDB.State.StageRace

vueltaEditions :: [StageRace]
vueltaEditions = [ vuelta2017
                 , vuelta2018
                 ]

vuelta2017 :: StageRace
vuelta2017 = evalState vuelta2017' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2017 8 19))

vuelta2017' :: State StageRaceState StageRace
vuelta2017' = do
  -- Stage 1
  outAndBackTeamTimeTrial nimes 13.7

  -- Stage 2
  plainStage nimes gruissan 203.4

  -- Stage 3
  plainStage prades andorraLaVella 158.5

  -- Stage 4
  plainStage escaldesEngordany tarragona 198.2

  -- Stage 5
  plainStage benicassim alcossebre 175.7

  -- Stage 6
  plainStage villareal sagunto 204.4

  -- Stage 7
  plainStage lliria cuenca 207

  -- Stage 8
  plainStage hellin xorretDeCati 199.5

  -- Stage 9
  plainStage orihuela benitachell 174

  restDay (Left alicante)

  -- Stage 10
  plainStage caravacaDeLaCruz elPozo 164.8

  -- Stage 11
  mountainStage (Left lorca) 187.5
  addCol 187.5 calarAltoObservatory C1

  -- Stage 12
  plainStage motril antequera 160.1

  -- Stage 13
  plainStage coin tomares 198.4

  -- Stage 14
  mountainStage (Left ecija) 175
  addCol 175 sierraDeLaPandera C1

  -- Stage 15
  mountainStage (Left alcalaLaReal) 129.4
  addCol 129.4 altoHoyaDeLaMora HC

  restDay (Left logrono)

  -- Stage 16
  individualTimeTrial circuitoDeNavarra logrono 40.2

  -- Stage 17
  mountainStage (Left villadiego) 180.5
  addCol 180.5 altoDeLosMachucos HC

  -- Stage 18
  plainStage suances santoToriboDeLiebana 169

  -- Stage 19
  plainStage caso gijon 149.7

  -- Stage 20
  mountainStage (Left corveraDeAsturias) 117.5
  addCol 117.5 altoDeL'Angliru HC

  -- Stage 21
  plainStage arroyomolinos madrid 117.7

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2018 :: StageRace
vuelta2018 = evalState vuelta2018' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2018 8 25))

vuelta2018' :: State StageRaceState StageRace
vuelta2018' = do
  -- Stage 1
  outAndBackIndividualTimeTrial malaga 8

  -- Stage 2
  plainStage marbella caminitoDelRaty 163.9

  -- Stage 3
  plainStage mijas alhaurinDeLaTorre 182.5

  -- Stage 4
  plainStage velezMalaga alfacar 162

  -- Stage 5
  plainStage granada roquetasDeMar 188

  -- Stage 6
  plainStage huercalOvera sanJavier 153

  -- Stage 7
  plainStage puertoLumbreras pozoAlcon 182

  -- Stage 8
  plainStage linares almaden 195.5

  -- Stage 9
  plainStage talaveraDeLaReina laCovatilla 195

  restDay (Left salamanca)

  -- Stage 10
  plainStage salamanca fermosella 172.5

  -- Stage 11
  plainStage mombuey ribeiraSacra 208.8

  -- Stage 12
  plainStage mondonedo puntaDeEstacaDeBars 177.5

  -- Stage 13
  plainStage candas laCamperona 175.5

  -- Stage 14
  plainStage cistierna lesPraeresDeNava 167

  -- Stage 15
  mountainStage (Left riberaDeArriba) 185.5
  addCol 185.5 lagosDeCovadonga HC

  restDay (Left santander)

  -- Stage 16
  individualTimeTrial santillanaDelMar torrelavega 32.7

  -- Stage 17
  plainStage getxo oiz 166.4

  -- Stage 18
  plainStage ejeaDeLosCabelleros lleida 180.5

  -- Stage 19
  plainStage lleida naturlandia 157

  -- Stage 20
  mountainStage (Left escaldesEngordany) 105.8
  addCol 105.8 collDeLaGallina C1

  -- Stage 21
  plainStage alcorcon madrid 112.3

  edition <- ParcoursDB.State.StageRace.build
  return edition
