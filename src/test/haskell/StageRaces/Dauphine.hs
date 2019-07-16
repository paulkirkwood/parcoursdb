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
  -- Prologue
  prologue' valence 6.6

  -- Stage 1
  roadStage valence saintJust 179
  c2' 9 "Cote de Leyrisse" 582
  c3' 46 "Col de Desaignes" 704 
  c3' 54 "Cote de Saint-Agreve" 1052
  c4' 89.5 "Cote de Terriere" 837
  c4' 139 "Cote de la Croix de Martet" 563
  c4' 163 "Cote du Barrage de Grangent" 494
  c4' 175 "Cote du Barrage de Grangent" 494

  -- Stage 2
  roadStage montbrison belleville 181
  c3' 87.5 "Col de Cambuse" 711
  c3' 108 "Col de la Croix de Marchanpt" 688
  c4' 121.5 "Cote de Regnie Durette" 318
  c3' 136.5 "Col de Crie" 613
  c3' 151 "Col du Fut d'Avenas" 740

  -- Stage 3
  teamTimeTrial pontDeVaux louhans 35

  -- Stage 4
  roadStage chazey vercors 181
  c4' 102 "Col de Toutes Aures" 620
  hc' 143.5 "Col du Mont Noir" 1421
  c2' 181 "Lans-en-Vercors" 1409

  -- Stage 5
  roadStage grenoble valmorel 130
  c2' 4 "Cote de Naysord" 756
  c2' 19.5 "Col des Mouilles" 1041
  hc' 130 "Valmorel" 1369

  -- Stage 6
  roadStage frontenex laRosiereEspaceSanBernardo 110
  hc' 27.5 "Monte de Bisanne" 1723
  hc' 59.5 "Col du Pre" 1748
  c2' 72 "Cormet de Roselend" 1968
  c1' 110 "La Rosiere" 1855

  -- Stage 7
  roadStage moutiers saintGervais 136
  c1' 43 "Cormet de Roselend" 1968
  c3' 64.5 "Cote de la route des Villes" 1078
  c1' 88.5 "Col des Saisies" 1663
  c1' 126.5 "Cote des Amerands" 888
  c1' 136 "Montee du Bettex" 1372

  race <- build
  return race
