-- file Classics.GrandPrixDePlouay.hs
module Classics.GrandPrixDePlouay
(grandPrixDePlouay2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

grandPrixDePlouay2018 :: Classic
grandPrixDePlouay2018 =
  evalState grandPrixDePlouay2018' (ParcoursDB.State.Classic.init (GrandPrixDePlouay (fromGregorian 2018 8 26) 263))

grandPrixDePlouay2018' :: State ClassicState Classic
grandPrixDePlouay2018' = do
  edition <- build
  return edition
