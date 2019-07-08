-- file Classics.GentWevelgem.hs
module Classics.GentWevelgem
(gentWevelgem2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

gentWevelgem2018 :: Classic
gentWevelgem2018 =
  evalState gentWevelgem2018' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2018 3 25) 230 []))

gentWevelgem2018' :: State ClassicState Classic
gentWevelgem2018' = do
  edition <- build
  return edition
