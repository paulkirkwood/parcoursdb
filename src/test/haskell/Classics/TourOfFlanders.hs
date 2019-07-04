-- file Classics.TourOfFlanders.hs
module Classics.TourOfFlanders
(
ronde2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.TourOfFlanders

ronde2018 :: Classic
ronde2018 = evalState ronde2018' (ParcoursDB.State.TourOfFlanders.init (fromGregorian 2018 4 1) 267)

ronde2018' :: State TourOfFlandersState Classic
ronde2018' = do
  ParcoursDB.State.TourOfFlanders.pave "Lippenhovestraat" 1.3 87
  ParcoursDB.State.TourOfFlanders.pave "Paddestraat" 2.3 89
  ParcoursDB.State.TourOfFlanders.pave "Holleweg" 0.35 142
  ParcoursDB.State.TourOfFlanders.pave "Haaghoek" 2 148
  ParcoursDB.State.TourOfFlanders.pave "Mariaborrestraat" 2 225
  -- Three ascents of Oude-Kwaremont
  cobbledBerg "Oude-Kwaremont" 2.2 121
  cobbledBerg "Oude-Kwaremont" 2.2 211
  cobbledBerg "Oude-Kwaremont" 2.2 250
  -- Two ascents of Paterberg
  cobbledBerg "Paterberg" 0.36 214
  cobbledBerg "Paterberg" 0.36 253
  -- One ascent of everything else
  asphaltBerg "Kortkeer" 1 132
  asphaltBerg "Edelare" 1 137
  cobbledBerg "Wolvenberg" 1.5 142
  asphaltBerg "Leberg" 0.95 151
  asphaltBerg "Berendries" 0.94 155
  asphaltBerg "Tenbosse" 0.45 160
  asphaltBerg "Muur-Kapelmuur" 0.75 170
  asphaltBerg "Pottelberg" 1.5 189
  asphaltBerg "Kanarieberg" 1 195
  cobbledBerg "Koppenberg" 0.6 221
  asphaltBerg "Steenbeekdries" 0.6 226
  cobbledBerg "Taaienberg" 0.5 229
  cobbledBerg "Kruisberg (Oudestraat)" 0.45 240
  edition <- build
  return edition
