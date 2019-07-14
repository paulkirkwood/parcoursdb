-- file Classics.AmstelGoldRace.hs
module Classics.AmstelGoldRace
(amstelGoldRace2017
,amstelGoldRace2018
,amstelGoldRaceEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

amstelGoldRaceEditions :: [Classic]
amstelGoldRaceEditions = [ amstelGoldRace2017
                         , amstelGoldRace2018
                         ]

amstelGoldRace2017 :: Classic
amstelGoldRace2017 =
  evalState amstelGoldRace2017' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2017 4 16) 263 []))

amstelGoldRace2017' :: State ClassicState Classic
amstelGoldRace2017' = do
  edition <- build
  return edition

amstelGoldRace2018 :: Classic
amstelGoldRace2018 =
  evalState amstelGoldRace2018' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2018 4 15) 263 []))

amstelGoldRace2018' :: State ClassicState Classic
amstelGoldRace2018' = do
  edition <- build
  return edition
