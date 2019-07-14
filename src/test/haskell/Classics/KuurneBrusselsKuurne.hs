-- file Classics.KuurneBrusselsKuurne.hs
module Classics.KuurneBrusselsKuurne
(kuurneBrusselsKuurne2017
,kuurneBrusselsKuurne2018
,kuurneBrusselsKuurneEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

kuurneBrusselsKuurneEditions :: [Classic]
kuurneBrusselsKuurneEditions = [ kuurneBrusselsKuurne2017
                               , kuurneBrusselsKuurne2018
                               ]

kuurneBrusselsKuurne2017 :: Classic
kuurneBrusselsKuurne2017 =
  evalState kuurneBrusselsKuurne2017' (ParcoursDB.State.Classic.init (KuurneBrusselsKuurne (fromGregorian 2017 2 26) 200.1 []))

kuurneBrusselsKuurne2017' :: State ClassicState Classic
kuurneBrusselsKuurne2017' = do
  edition <- build
  return edition

kuurneBrusselsKuurne2018 :: Classic
kuurneBrusselsKuurne2018 =
  evalState kuurneBrusselsKuurne2018' (ParcoursDB.State.Classic.init (KuurneBrusselsKuurne (fromGregorian 2018 2 25) 200.1 []))

kuurneBrusselsKuurne2018' :: State ClassicState Classic
kuurneBrusselsKuurne2018' = do
  edition <- build
  return edition
