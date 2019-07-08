-- file Classics.KuurneBrusselsKuurne.hs
module Classics.KuurneBrusselsKuurne
(
kbk2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

kbk2018 :: Classic
kbk2018 = evalState kbk2018' (ParcoursDB.State.Classic.init (KuurneBrusselsKuurne (fromGregorian 2018 2 25) 200.1 []))

kbk2018' :: State ClassicState Classic
kbk2018' = do
  edition <- build
  return edition
