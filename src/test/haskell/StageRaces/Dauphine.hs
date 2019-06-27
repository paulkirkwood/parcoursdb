-- file StageRaces.Dauphine.hs
module StageRaces.Dauphine
(dauphine2018
) where

import Control.Monad.State
import Countries.France
import Data.Time
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

name :: String
name = "Criterium du Dauphine"

dauphine2018 :: StageRace
dauphine2018 = evalState dauphine2018' (ParcoursDB.State.StageRace.init StageRaces.Dauphine.name France (fromGregorian 2018 6 3))

dauphine2018' :: State StageRaceState StageRace
dauphine2018' = do
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
