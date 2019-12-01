-- file StageRaces.Tirreno.hs
module StageRaces.Tirreno
(tirreno2013
,tirreno2014
,tirreno2015
,tirreno2016
,tirrenoAdriaticoEditions
) where

import Control.Monad.State
import Data.Time
import Countries.Italy
import Mountains.Appennines
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

tirrenoAdriaticoEditions :: [StageRace]
tirrenoAdriaticoEditions = [ tirreno2013
                           , tirreno2014
                           , tirreno2015
                           , tirreno2016
                           ]

tirreno2013 :: StageRace
tirreno2013 = evalState tirreno2013' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2013 3 6))

tirreno2013' :: State StageRaceState StageRace
tirreno2013' = do
  prologue sanVincenzo donoratico 16.9
  plainStage sanVincenzo indicatore 232.0
  plainStage indicatore narniScalo 190
  plainStage narniScalo pratiDiTivo 173
  plainStage ortona chieti 230
  criterium portoSant'Elpidio 209
  outAndBackIndividualTimeTrial sanBenedettoDelTronto 9.2
  race <- build
  return race

tirreno2014 :: StageRace
tirreno2014 = evalState tirreno2014' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2014 3 12))

tirreno2014' :: State StageRaceState StageRace
tirreno2014' = do
  prologue donoratico sanVincenzo 18.5
  plainStage sanVincenzo cascina 166
  plainStage cascina arezzo 212
  plainStage indicatore cittareale 244
  plainStage amatrice guardiagrele 192
  plainStage bucchianico portoSant'Elpidio 193
  outAndBackIndividualTimeTrial sanBenedettoDelTronto 9.1
  race <- build
  return race

tirreno2015 :: StageRace
tirreno2015 = evalState tirreno2015' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2015 3 11))

tirreno2015' :: State StageRaceState StageRace
tirreno2015' = do
  outAndBackIndividualTimeTrial lidoDiCamaiore 5.4
  plainStage camaiore cascina 153
  plainStage cascina arezzo 203
  plainStage indicatore castelraimondo 226
  mountainStage (Left esanatoglia) 196.9
  addCol 196.9 Mountains.Appennines.monteTerminillo C1
  plainStage rieti portoSant'Elpidio 210
  outAndBackIndividualTimeTrial sanBenedettoDelTronto 10.1
  race <- build
  return race

tirreno2016 :: StageRace
tirreno2016 = evalState tirreno2016' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2016 3 9))

tirreno2016' :: State StageRaceState StageRace
tirreno2016' = do
  outAndBackTeamTimeTrial lidoDiCamaiore 22.7
  plainStage camaiore pomarance 207
  plainStage castelnuouvoDiValDiCecina montaltoDiCastro 176
  plainStage montaltoDiCastro foligno 216
  plainStage foligno monteSanVicino 178
  plainStage castelraimondo cepagatti 210
  outAndBackIndividualTimeTrial sanBenedettoDelTronto 10.1
  race <- build
  return race
