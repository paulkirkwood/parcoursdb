-- file Editions.Tirreno.hs
module Editions.Tirreno where

import Control.Monad.State
import Italy
import ParcoursDB.StageRace
import ParcoursDB.StageRaceState

tirreno2013 :: State StageRaceState StageRace
tirreno2013 = do
  prologue sanVincenzo donoratico 16.9
  roadStage sanVincenzo indicatore 232.0
  roadStage indicatore narniScalo 190
  roadStage narniScalo pratiDiTivo 173
  roadStage ortona chieti 230
  criterium portoSantElpidio 209
  individualTimeTrial' sanBenedettoDelTronto 9.2
  race <- build
  return race

tirreno2014 :: State StageRaceState StageRace
tirreno2014 = do
  prologue donoratico sanVincenzo 18.5
  roadStage sanVincenzo cascina 166
  roadStage cascina arezzo 212
  roadStage indicatore cittareale 244
  roadStage amatrice guardiagrele 192
  roadStage bucchianico portoSantElpidio 193
  individualTimeTrial' sanBenedettoDelTronto 9.1
  race <- build
  return race

tirreno2015 :: State StageRaceState StageRace
tirreno2015 = do
  individualTimeTrial' lidoDiCamaiore 5.4
  roadStage camaiore cascina 153
  roadStage cascina arezzo 203
  roadStage indicatore castelraimondo 226
  roadStage esanatoglia monteTerminillo 196.9
  roadStage rieti portoSantElpidio 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race

tirreno2016 :: State StageRaceState StageRace
tirreno2016 = do
  teamTimeTrial' lidoDiCamaiore 22.7
  roadStage camaiore pomarance 207
  roadStage castelnuouvoDiValDiCecina montaltoDiCastro 176
  roadStage montaltoDiCastro foligno 216
  roadStage foligno monteSanVicino 178
  roadStage castelraimondo cepagatti 210
  individualTimeTrial' sanBenedettoDelTronto 10.1
  race <- build
  return race
