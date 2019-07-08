-- file Classics.AmstelGoldRace.hs
module Classics.AmstelGoldRace
(amstelGoldRace2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

amstelGoldRace2018 :: Classic
amstelGoldRace2018 =
  evalState amstelGoldRace2018' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2018 4 15) 263 []))

amstelGoldRace2018' :: State ClassicState Classic
amstelGoldRace2018' = do
  edition <- build
  return edition
