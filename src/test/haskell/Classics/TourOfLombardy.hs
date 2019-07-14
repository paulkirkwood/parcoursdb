-- file Classics.TourOfLombardy.hs
module Classics.TourOfLombardy
(tourOfLombardy2017
,tourOfLombardy2018
,tourOfLombardyEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

tourOfLombardyEditions :: [Classic]
tourOfLombardyEditions = [ tourOfLombardy2017
                         , tourOfLombardy2018
                         ]

tourOfLombardy2017 :: Classic
tourOfLombardy2017 =
  evalState tourOfLombardy2017' (ParcoursDB.State.Classic.init (TourOfLombardy (fromGregorian 2017 10 14) 241 []))

tourOfLombardy2017' = do
  edition <- build
  return edition

tourOfLombardy2018 :: Classic
tourOfLombardy2018 =
  evalState tourOfLombardy2018' (ParcoursDB.State.Classic.init (TourOfLombardy (fromGregorian 2018 10 13) 241 []))

tourOfLombardy2018' = do
  cote 54.7 "Colle Gallio" 763
  cote 113.9 "Colle Brianza" 533
  cote 180.2 "Madonna del Ghisallo" 754
  cote 193.6 "Colma di Sormano" 1124
  cote 227.4 "Civiglio" 613
  edition <- build
  return edition
