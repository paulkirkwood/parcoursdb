-- file StageRaces.Dauphine.hs
module StageRaces.Dauphine
(dauphine2009
,dauphine2018
,dauphineEditions
) where

import Control.Monad.State
import Countries.France
import Data.Time
import Mountains.Alps
import Mountains.Alps.Provence (montVentoux)
import Mountains.MassifCentral
import ParcoursDB.Col
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
  outAndBackIndividualTimeTrial nancy 12.1
  plainStage nancy dijon 228
  plainStage tournus saintÉtienne 182
  individualTimeTrial bourgLesValence valence 42.4
  mountainStage (Left valence) 154
  addCol 154 montVentoux HC
  plainStage gap briancon 106
  plainStage briancon saintFrancoisLongchamp 157
  plainStage faverges grenoble 146
  race <- build
  return race

dauphine2018 :: StageRace
dauphine2018 = evalState dauphine2018' (ParcoursDB.State.StageRace.init (Dauphine []) (fromGregorian 2018 6 3))

dauphine2018' :: State StageRaceState StageRace
dauphine2018' = do
  -- Prologue
  outAndBackPrologue valence 6.6

  -- Stage 1
  plainStage valence saintJust 179
  c2' 9 "Cote de Leyrisse" France 582
  c3' 46 "Col de Desaignes" France 704 
  c3' 54 "Cote de Saint-Agreve" France 1052
  c4' 89.5 "Cote de Terriere" France 837
  c4' 139 "Cote de la Croix de Martet" France 563
  c4' 163 "Cote du Barrage de Grangent" France 494
  c4' 175 "Cote du Barrage de Grangent" France 494

  -- Stage 2
  plainStage montbrison belleville 181
  c3' 87.5 "Col de Cambuse" France 711
  c3' 108 "Col de la Croix de Marchanpt" France 688
  c4' 121.5 "Cote de Regnie Durette" France 318
  c3' 136.5 "Col de Crie" France 613
  c3' 151 "Col du Fut d'Avenas" France 740

  -- Stage 3
  teamTimeTrial pontDeVaux louhans 35

  -- Stage 4
  mountainStage (Left chazey) 181
  c4' 102 "Col de Toutes Aures" France 620
  hc' 143.5 "Col du Mont Noir" France 1421
  addCol 181 Mountains.Alps.lansEnVercors C2

  -- Stage 5
  mountainStage (Left grenoble) 130
  c2' 4 "Cote de Naysord" France 756
  c2' 19.5 "Col des Mouilles" France 1041
  hc' 130 "Valmorel" France 1369

  -- Stage 6
  mountainStage (Left frontenex) 110
  addCol 27.5 monteeDuBisanne HC
  addCol 59.5 colDuPre HC
  addCol 72 cormetDeRoselend C2
  addCol 110 laRosiere C1

  -- Stage 7
  mountainStage (Left moutiers) 136
  addCol 43 cormetDeRoselend C1
  c3' 64.5 "Cote de la route des Villes" France 1078
  addCol 88.5 colDesSaisies C1
  c1' 126.5 "Cote des Amerands" France 888
  addCol 136 saintGervaisMontBlanc C1

  race <- build
  return race
