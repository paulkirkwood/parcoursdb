module ParcoursDB.Gravel where

import Text.Printf

data Gravel = Gravel { name :: String
                     , length :: Float
                     }
  deriving (Read,Show)

instance Eq Gravel where
  (Gravel n1 l1) == (Gravel n2 l2) = n1 == n2 && l1 == l2

instance Ord Gravel where
  compare g1 g2 = if lengthComparison == EQ then
                    nameComparison
                  else
                    lengthComparison
                  where
                    lengthComparison = (ParcoursDB.Gravel.length g1) `compare` (ParcoursDB.Gravel.length g2)
                    nameComparison   = (ParcoursDB.Gravel.name g1) `compare` (ParcoursDB.Gravel.name g2)

data IndexableGravel = IndexableGravel { km     :: Float
                                       , sector :: Int
                                       , gravel   :: Gravel
                                       } deriving (Read,Show)

instance Eq IndexableGravel where
  (IndexableGravel km1 s1 g1) == (IndexableGravel km2 s2 g2) = km1 == km2 && s1 == s2 && g1 == g2

instance Ord IndexableGravel where
  compare iG1 iG2 = if kmComparison == EQ then
                      if sectorComparison == EQ then
                         gravelComparison
                      else sectorComparison
                    else kmComparison
                    where
                      kmComparison     = (km iG1) `compare` (km iG2)
                      sectorComparison = (sector iG1) `compare` (sector iG2)
                      gravelComparison = (gravel iG1) `compare` (gravel iG2)

description :: IndexableGravel -> Float -> String
description (IndexableGravel kM s p) raceDistance = printf "%d,%.1f km,%s,%f km" s distanceToFinish name length
  where
    distanceToFinish = raceDistance - kM
    name             = ParcoursDB.Gravel.name p
    length           = ParcoursDB.Gravel.length p
