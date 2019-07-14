-- file Classics.GentWevelgem.hs
module Classics.GentWevelgem
(gentWevelgem2017
,gentWevelgem2018
,gentWevelgemEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

gentWevelgemEditions :: [Classic]
gentWevelgemEditions = [ gentWevelgem2017
                       , gentWevelgem2018
                       ]

gentWevelgem2017 :: Classic
gentWevelgem2017 =
  evalState gentWevelgem2017' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2017 3 26) 230 []))

gentWevelgem2017' :: State ClassicState Classic
gentWevelgem2017' = do
  edition <- build
  return edition

gentWevelgem2018 :: Classic
gentWevelgem2018 =
  evalState gentWevelgem2018' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2018 3 25) 230 []))

gentWevelgem2018' :: State ClassicState Classic
gentWevelgem2018' = do
  edition <- build
  return edition
