-- file StageRaces.Dauphine.hs
module StageRaces.Dauphine
(dauphine2009
,dauphine2018
,dauphineEditions
) where

import Control.Monad.State
import Countries.France
import Data.Time
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

dauphineEditions :: [StageRace]
dauphineEditions = [ dauphine2009
                   , dauphine2018
                   ]

dauphine2009 :: StageRace
dauphine2009 = evalState dauphine2009' (ParcoursDB.State.StageRace.init (Dauphine []) (fromGregorian 2009 6 7))

dauphine2009' = do
  individualTimeTrial' nancy 12.1
  roadStage nancy dijon 228
  roadStage tournus saintEtienne 182
  individualTimeTrial bourgLesValence valence 42.4
  roadStage valence montVentoux 154
  roadStage gap briancon 106
  roadStage briancon saintFrancoisLongchamp 157
  roadStage faverges grenoble 146
  race <- build
  return race

dauphine2018 :: StageRace
dauphine2018 = evalState dauphine2018' (ParcoursDB.State.StageRace.init (Dauphine []) (fromGregorian 2018 6 3))

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
