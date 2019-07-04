module ParcoursDB.Berg where

import Text.Printf

data Pavement = Pavement | Cobbles
                         | Asphalt
  deriving (Eq,Ord,Read,Show)

data Berg = Berg String Pavement Float
  deriving (Read,Show)

name :: Berg -> String
name (Berg n _ _) = n

pavement :: Berg -> Pavement
pavement (Berg _ p _) = p

length :: Berg -> Float
length (Berg _ _ l) = l

instance Eq Berg where
  (Berg n1 p1 l1) == (Berg n2 p2 l2) = n1 == n2 && p1 == p2 && l1 == l2

instance Ord Berg where
  compare (Berg n1 p1 l1) (Berg n2 p2 l2) = compare l1 l2

data IndexableBerg = IndexableBerg { km   :: Float
                                   , berg :: Berg
                                   } deriving (Read,Show)

instance Eq IndexableBerg where
  (IndexableBerg km1 berg1) == (IndexableBerg km2 berg2) = km1 == km2 && berg1 == berg2

instance Ord IndexableBerg where
  compare (IndexableBerg km1 berg1) (IndexableBerg km2 berg2) = if km1 == km2 then compare berg1 berg2 else compare km1 km2

description :: Int -> Float -> IndexableBerg -> String
description idx raceDistance (IndexableBerg km berg) =
  let distanceFromFinish = raceDistance - km
      bergName = ParcoursDB.Berg.name berg
      bergPavement = ParcoursDB.Berg.pavement berg
      bergLength = ParcoursDB.Berg.length berg
  in printf "%d,%f km,%s,%f km,%s" idx distanceFromFinish bergName bergLength (show bergPavement)
