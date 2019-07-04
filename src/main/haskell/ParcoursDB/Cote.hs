module ParcoursDB.Cote where

import Text.Printf

data Cote = Cote String Int
  deriving (Read,Show)

instance Eq Cote where
  (Cote n1 h1) == (Cote n2 h2) = n1 == n2 && h1 == h2

instance Ord Cote where
  compare (Cote n1 h1) (Cote n2 h2) = if n1 == n2 then compare h1 h2 else compare h1 h2

name :: Cote -> String
name (Cote n _) = n

height :: Cote -> Int
height (Cote _ h) = h

data IndexableCote = IndexableCote { km :: Float
                                   , col :: Cote
                                   } deriving (Read,Show)

instance Eq IndexableCote where
  (IndexableCote km1 col1) == (IndexableCote km2 col2) = km1 == km2 && col1 == col2

instance Ord IndexableCote where
  compare (IndexableCote km1 col1) (IndexableCote km2 col2) = if km1 == km2 then compare col1 col2 else compare km1 km2

description :: IndexableCote -> Float -> String
description (IndexableCote km col) raceDistance =
  let distanceFromFinish = raceDistance - km
      colName = ParcoursDB.Cote.name col
      colHeight = ParcoursDB.Cote.height col
  in printf "%.1f km, %s, %dm" distanceFromFinish colName colHeight
