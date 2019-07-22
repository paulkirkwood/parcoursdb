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
  flatStage sanVincenzo indicatore 232.0
  flatStage indicatore narniScalo 190
  flatStage narniScalo pratiDiTivo 173
  flatStage ortona chieti 230
  criterium portoSantElpidio 209
  individualTimeTrial' sanBenedettoDelTronto 9.2
  race <- build
  return race

tirreno2014 :: StageRace
tirreno2014 = evalState tirreno2014' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2014 3 12))

tirreno2014' :: State StageRaceState StageRace
tirreno2014' = do
  prologue donoratico sanVincenzo 18.5
  flatStage sanVincenzo cascina 166
  flatStage cascina arezzo 212
  flatStage indicatore cittareale 244
  flatStage amatrice guardiagrele 192
  flatStage bucchianico portoSantElpidio 193
  individualTimeTrial' sanBenedettoDelTronto 9.1
  race <- build
  return race

tirreno2015 :: StageRace
tirreno2015 = evalState tirreno2015' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2015 3 11))

tirreno2015' :: State StageRaceState StageRace
tirreno2015' = do
  individualTimeTrial' lidoDiCamaiore 5.4
  flatStage camaiore cascina 153
  flatStage cascina arezzo 203
  flatStage indicatore castelraimondo 226
  flatStage esanatoglia monteTerminillo 196.9
  flatStage rieti portoSantElpidio 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race

tirreno2016 :: StageRace
tirreno2016 = evalState tirreno2016' (ParcoursDB.State.StageRace.init (TirrenoAdriatico []) (fromGregorian 2016 3 9))

tirreno2016' :: State StageRaceState StageRace
tirreno2016' = do
  teamTimeTrial' lidoDiCamaiore 22.7
  flatStage camaiore pomarance 207
  flatStage castelnuouvoDiValDiCecina montaltoDiCastro 176
  flatStage montaltoDiCastro foligno 216
  flatStage foligno monteSanVicino 178
  flatStage castelraimondo cepagatti 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race
