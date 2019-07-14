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
  roadStage sanVincenzo indicatore 232.0
  roadStage indicatore narniScalo 190
  roadStage narniScalo pratiDiTivo 173
  roadStage ortona chieti 230
  criterium portoSantElpidio 209
  individualTimeTrial' sanBenedettoDelTronto 9.2
  race <- build
  return race

tirreno2014 :: StageRace
tirreno2014 = evalState tirreno2014' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2014 3 12))

tirreno2014' :: State StageRaceState StageRace
tirreno2014' = do
  prologue donoratico sanVincenzo 18.5
  roadStage sanVincenzo cascina 166
  roadStage cascina arezzo 212
  roadStage indicatore cittareale 244
  roadStage amatrice guardiagrele 192
  roadStage bucchianico portoSantElpidio 193
  individualTimeTrial' sanBenedettoDelTronto 9.1
  race <- build
  return race

tirreno2015 :: StageRace
tirreno2015 = evalState tirreno2015' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2015 3 11))

tirreno2015' :: State StageRaceState StageRace
tirreno2015' = do
  individualTimeTrial' lidoDiCamaiore 5.4
  roadStage camaiore cascina 153
  roadStage cascina arezzo 203
  roadStage indicatore castelraimondo 226
  roadStage esanatoglia monteTerminillo 196.9
  roadStage rieti portoSantElpidio 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race

tirreno2016 :: StageRace
tirreno2016 = evalState tirreno2016' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2016 3 9))

tirreno2016' :: State StageRaceState StageRace
tirreno2016' = do
  teamTimeTrial' lidoDiCamaiore 22.7
  roadStage camaiore pomarance 207
  roadStage castelnuouvoDiValDiCecina montaltoDiCastro 176
  roadStage montaltoDiCastro foligno 216
  roadStage foligno monteSanVicino 178
  roadStage castelraimondo cepagatti 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race
