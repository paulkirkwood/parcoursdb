-- file StageRaces.ParisNice.hs
module StageRaces.ParisNice
(parisNice2018
,parisNiceEditions
) where

import Control.Monad.State
import Countries.France
import Data.Time
import Mountains.Alps
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

parisNiceEditions :: [StageRace]
parisNiceEditions = [ parisNice2018
                    ]

parisNice2018 :: StageRace
parisNice2018 =
  evalState parisNice2018' (ParcoursDB.State.StageRace.init (ParisNice []) (fromGregorian 2018 3 4))

parisNice2018' :: State StageRaceState StageRace
parisNice2018' = do
  -- Stage 1
  plainStage chatou meudon 134.5
  c3' 79 "Cote des Tournants" France 172
  c3' 85.5 "Cote de Meridon" France 160
  c3' 134.5 "Cote de Meridon" France 160

  -- Stage 2
  plainStage orsonville vierzon 187.5

  -- Stage 3
  plainStage bourges chatelGuyon 210
  c3' 123 "Cote de la Bosse" France 702
  c3' 143.5 "Cote des Boulards" France 564
  c3' 187.5 "Cote des Charbonnieres" France 716

  -- Stage 4
  individualTimeTrial laFouillouse saintÉTienne 18.4

  -- Stage 5
  plainStage salonDeProvence sisteron 165
  c2' 49 "Cote du Pointu" France 500
  c1' 76.5 "Col de Lagarde-d'Apt" France 1097
  c3' 106 "Col du Negron" France 1242
  c3' 152 "Cote de la Marquise" France 569

  -- Stage 6
  plainStage sisteron vence 198
  c2' 101 "Col de Luens" France 1062
  c2' 121 "Col Bas" France 1024
  c2' 149 "Cote de Cipieres" France 744
  c2' 159.5 "Cote de Gourdon" France 732
  c1' 189.5 "Cote de la Colle sur Loup" France 273

  -- Stage 7
  mountainStage (Left nice) 175
  c2' 10 "Cote de Gattieres" France 264
  c1' 84.5 "Cote de la Sainte-Baume" France 1118
  c2' 108 "Col Saint-Raphael" France 833
  c2' 134.5 "Cote de Villars-sur-Var" France 417
  c1' 175 "Valdeblore La Colmiane" France 1500

  -- Stage 8
  criterium nice 110
  c2' 20.5 "Cote de Levens" France 477
  c1' 36.5 "Cote de Chateauneuf" France 633
  c2' 51 "Col de Calaison" France 468
  c1' 67.5 "Cote de Peille" France 653
  c1' 83.5 "Col d'Eze" France 508
  c2' 101 "Col des Quatre Chemins" France 338

  race <- build
  return race
