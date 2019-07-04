-- file Classics.TourOfLombardy.hs
module Classics.TourOfLombardy
(
ilLombardia2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.TourOfLombardy

ilLombardia2018 :: Classic
ilLombardia2018 = evalState ilLombardia2018' (ParcoursDB.State.TourOfLombardy.init (fromGregorian 2018 10 13) 241)

ilLombardia2018' :: State TourOfLombardyState Classic
ilLombardia2018' = do
  cote 54.7 "Colle Gallio" 763
  cote 113.9 "Colle Brianza" 533
  cote 180.2 "Madonna del Ghisallo" 754
  cote 193.6 "Colma di Sormano" 1124
  cote 227.4 "Civiglio" 613
  edition <- build
  return edition
