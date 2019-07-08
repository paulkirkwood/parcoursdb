-- file Classics.E3Harelbeke.hs
module Classics.E3Harelbeke
(e3Harelbeke2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

e3Harelbeke2018 :: Classic
e3Harelbeke2018 =
  evalState e3Harelbeke2018' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2018 3 23) 200 []))

e3Harelbeke2018' :: State ClassicState Classic
e3Harelbeke2018' = do
  edition <- build
  return edition
