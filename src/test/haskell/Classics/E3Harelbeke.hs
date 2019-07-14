-- file Classics.E3Harelbeke.hs
module Classics.E3Harelbeke
(e3Harelbeke2017
,e3Harelbeke2018
,e3HarelbekeEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

e3HarelbekeEditions :: [Classic]
e3HarelbekeEditions = [ e3Harelbeke2017
                      , e3Harelbeke2018
                      ]

e3Harelbeke2017 :: Classic
e3Harelbeke2017 =
  evalState e3Harelbeke2017' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2017 3 24) 200 []))

e3Harelbeke2017' :: State ClassicState Classic
e3Harelbeke2017' = do
  edition <- build
  return edition

e3Harelbeke2018 :: Classic
e3Harelbeke2018 =
  evalState e3Harelbeke2018' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2018 3 23) 200 []))

e3Harelbeke2018' :: State ClassicState Classic
e3Harelbeke2018' = do
  edition <- build
  return edition
