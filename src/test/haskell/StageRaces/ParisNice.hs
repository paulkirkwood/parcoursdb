-- file StageRaces.ParisNice.hs
module StageRaces.ParisNice
(parisNice2018
,parisNiceEditions
) where

import Control.Monad.State
import Countries.France
import Data.Time
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
  roadStage chatou meudon 134.5
  c3' 79 "Cote des Tournants" 172
  c3' 85.5 "Cote de Meridon" 160
  c3' 134.5 "Cote de Meridon" 160

  -- Stage 2
  roadStage  orsonville vierzon 187.5

  -- Stage 3
  roadStage bourges chatelGuyon 210
  c3' 123 "Cote de la Bosse" 702
  c3' 143.5 "Cote des Boulards" 564
  c3' 187.5 "Cote des Charbonnieres" 716

  -- Stage 4
  individualTimeTrial laFouillouse saintEtienne 18.4

  -- Stage 5
  roadStage salonDeProvence sisteron 165
  c2' 49 "Cote du Pointu" 500
  c1' 76.5 "Col de Lagarde-d'Apt" 1097
  c3' 106 "Col du Negron" 1242
  c3' 152 "Cote de la Marquise" 569

  -- Stage 6
  roadStage sisteron vence 198
  c2' 101 "Col de Luens" 1062
  c2' 121 "Col Bas" 1024
  c2' 149 "Cote de Cipieres" 744
  c2' 159.5 "Cote de Gourdon" 732
  c1' 189.5 "Cote de la Colle sur Loup" 273

  -- Stage 7
  roadStage nice valdebloreLaColmiane 175
  c2' 10 "Cote de Gattieres" 264
  c1' 84.5 "Cote de la Sainte-Baume" 1118
  c2' 108 "Col Saint-Raphael" 833
  c2' 134.5 "Cote de Villars-sur-Var" 417
  c1' 175 "Valdeblore La Colmiane" 1500

  -- Stage 8
  criterium nice 110
  c2' 20.5 "Cote de Levens" 477
  c1' 36.5 "Cote de Chateauneuf" 633
  c2' 51 "Col de Calaison" 468
  c1' 67.5 "Cote de Peille" 653
  c1' 83.5 "Col d'Eze" 508
  c2' 101 "Col des Quatre Chemins" 338
  race <- build
  return race
