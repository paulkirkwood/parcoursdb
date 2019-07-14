-- file Classics.LaFlecheWallonne.hs
module Classics.LaFlecheWallonne
(laFlecheWallonne2017
,laFlecheWallonne2018
,laFlecheWallonneEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

laFlecheWallonneEditions :: [Classic]
laFlecheWallonneEditions = [ laFlecheWallonne2017
                           , laFlecheWallonne2018
                           ]

laFlecheWallonne2017 :: Classic
laFlecheWallonne2017 =
  evalState laFlecheWallonne2017' (ParcoursDB.State.Classic.init (LaFlecheWallonne (fromGregorian 2017 4 19) 197 []))

laFlecheWallonne2017' = do
  edition <- build
  return edition

laFlecheWallonne2018 :: Classic
laFlecheWallonne2018 =
  evalState laFlecheWallonne2018' (ParcoursDB.State.Classic.init (LaFlecheWallonne (fromGregorian 2018 4 18) 197 []))

laFlecheWallonne2018' = do
  edition <- build
  return edition
