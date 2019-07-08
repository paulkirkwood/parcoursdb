-- file Classics.OmloopHetVolk.hs
module Classics.OmloopHetVolk
(omloopHetVolk1945
,omloopHetVolk1946
,omloopHetVolk2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave
import ParcoursDB.State.Classic

omloopHetVolk1945 :: Classic
omloopHetVolk1945 =
  evalState omloopHetVolk1945' (ParcoursDB.State.Classic.init (OmloopHetVolk (fromGregorian 1945 3 25) 187 [] []))

omloopHetVolk1945' :: State ClassicState Classic
omloopHetVolk1945' = do
  edition <- build
  return edition

omloopHetVolk1946 :: Classic
omloopHetVolk1946 =
  evalState omloopHetVolk1946' (ParcoursDB.State.Classic.init (OmloopHetVolk (fromGregorian 1945 3 17) 225 [] []))

omloopHetVolk1946' :: State ClassicState Classic
omloopHetVolk1946' = do
  edition <- build
  return edition

omloopHetVolk2018 :: Classic
omloopHetVolk2018 =
  evalState omloopHetVolk2018' (ParcoursDB.State.Classic.init (OmloopHetVolk (fromGregorian 2018 2 24) 196 [] []))

omloopHetVolk2018' :: State ClassicState Classic
omloopHetVolk2018' = do
  pavé "Hulsepontweg" 1.8 92.1 ZeroStar
  pavé "Korte Aststraat" 0.2 96.3 ZeroStar
  pavé "Lange Aststraat" 0.5 97.8 ZeroStar
  pavé "Holleweg" 0.2 106.6 ZeroStar
  pavé "Volkegem" 0.05 132.9 ZeroStar
  pavé "Ruiterstraat" 0.8 134.6 ZeroStar
  pavé "Jagerji" 0.8 137.3 ZeroStar
  pavé "Haaghoek" 2 151.4 ZeroStar
  asphaltBerg "Leberg" 0.95 65
  asphaltBerg "Den Ast" 0.45 98
  cobbledBerg "Katternburg" 1 106
  asphaltBerg "Leberg" 0.95 118
  asphaltBerg "Kokkerelle" 1.2 131
  asphaltBerg "Wolvenberg" 0.645 135
  cobbledBerg "Molenberg" 0.463 144
  asphaltBerg "Leberg" 0.95 154
  asphaltBerg "Berendries" 0.94 159
  cobbledBerg "Valkenberg" 0.54 164
  asphaltBerg "Tenbosse" 0.45 170
  cobbledBerg "Muur van Geraardsbergen" 0.475 180
  cobbledBerg "Borberg" 0.98 184
  edition <- build
  return edition
