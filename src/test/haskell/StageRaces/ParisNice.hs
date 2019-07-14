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
  c3 "Cote des Tournants" 172 0.5 79
  c3 "Cote de Meridon" 160 0.75 85.5
  c3 "Cote de Meridon" 160 0.75 134.5
  roadStage chatou meudon 134.5
  roadStage  orsonville vierzon 187.5
  roadStage bourges chatelGuyon 210
  individualTimeTrial laFouillouse saintEtienne 18.4
  roadStage salonDeProvence sisteron 165
  roadStage sisteron vence 198
  roadStage nice valdebloreLaColmiane 175
  criterium nice 110
  race <- build
  return race
