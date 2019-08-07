-- file StageRaces.ParisNice.hs
module StageRaces.ParisNice
(parisNice2018
,parisNiceEditions
) where

import Control.Monad.State
import Countries.France
import Data.Time
import Mountains.Alps
import Mountains.Alps.Maritime
import Mountains.Alps.Provence
import ParcoursDB.Col
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
  addCol 10    coteDeGattieres C2
  addCol 84.5  coteDeLaSainteBaume C2
  addCol 108   colSaintRaphael C2
  addCol 134.5 coteDeVillarsSurVar C2
  addCol 175   valdebloreLaColmiane C1

  -- Stage 8
  criterium nice 110
  addCol 20.5 coteDeLevens C2
  addCol 36.5 coteDeChateauneuf C2
  addCol 51   colDeCalaison C2
  addCol 67.5 coteDePeille C2
  addCol 83.5 colD'Eze C1
  addCol 101  colDesQuatreChemins C2

  race <- build
  return race
