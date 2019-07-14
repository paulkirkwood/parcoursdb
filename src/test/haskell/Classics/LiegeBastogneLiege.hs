-- file Classics.LiegeBastogneLiege.hs
module Classics.LiegeBastogneLiege
(liegeBastogneLiege2017
,liegeBastogneLiege2018
,liegeBastogneLiegeEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

liegeBastogneLiegeEditions = [ liegeBastogneLiege2017
                             , liegeBastogneLiege2018
                             ]

liegeBastogneLiege2017 :: Classic
liegeBastogneLiege2017 =
  evalState liegeBastogneLiege2017' (ParcoursDB.State.Classic.init (LiegeBastogneLiege (fromGregorian 2017 4 23) 258 []))

liegeBastogneLiege2017' = do
  edition <- build
  return edition

liegeBastogneLiege2018 :: Classic
liegeBastogneLiege2018 =
  evalState liegeBastogneLiege2018' (ParcoursDB.State.Classic.init (LiegeBastogneLiege (fromGregorian 2018 4 22) 258 []))

liegeBastogneLiege2018' = do
--        km  Name                          Height
  cote    72 "Cote de Bonnerue"             493
  cote   109 "Cote de Saint-Roch"           456
  cote   152 "Cote de Mont-le-Soie"         558
  cote   168 "Cote de Pont"                 443
  cote   172 "Cote de Bellevaux"            421
  cote   180 "Cote de la Ferme Libert"      502
  cote   198 "Cote du Rosier"               565
  cote   211 "Col du Maquisard"             367
  cote 222.5 "Cote de la Redoute"           314
  cote   239 "Cote de la Roche-aux-Faucons" 225
  cote 252.5 "Cote de Saint-Nicolas"        175
  edition <- build
  return edition
