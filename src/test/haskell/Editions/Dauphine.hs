-- file Editions.Dauphine.hs
module Editions.Dauphine where

import Control.Monad.State
import France
import ParcoursDB.StageRace
import ParcoursDB.StageRaceState

dauphine2018 :: State StageRaceState StageRace
dauphine2018 = do
  prologue' valence 6.6
  roadStage valence saintJust 179
  roadStage montbrison belleville 181
  teamTimeTrial pontDeVaux louhans 35
  roadStage chazey vercors 181
  roadStage grenoble valmorel 130
  roadStage frontenex laRosiereEspaceSanBernardo 110
  roadStage moutiers saintGervais 136
  race <- build
  return race
