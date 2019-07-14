-- file Classics.GrandPrixDePlouay.hs
module Classics.GrandPrixDePlouay
(grandPrixDePlouay2017
,grandPrixDePlouay2018
,grandPrixDePlouayEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

grandPrixDePlouayEditions :: [Classic]
grandPrixDePlouayEditions = [ grandPrixDePlouay2017
                            , grandPrixDePlouay2018
                            ]

grandPrixDePlouay2017 :: Classic
grandPrixDePlouay2017 =
  evalState grandPrixDePlouay2017' (ParcoursDB.State.Classic.init (GrandPrixDePlouay (fromGregorian 2017 8 27) 248.1))

grandPrixDePlouay2017' = do
  edition <- build
  return edition

grandPrixDePlouay2018 :: Classic
grandPrixDePlouay2018 =
  evalState grandPrixDePlouay2018' (ParcoursDB.State.Classic.init (GrandPrixDePlouay (fromGregorian 2018 8 26) 263))

grandPrixDePlouay2018' :: State ClassicState Classic
grandPrixDePlouay2018' = do
  edition <- build
  return edition
