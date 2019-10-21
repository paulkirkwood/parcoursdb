module ParcoursDB.Pave where

import Text.Printf

data PaveRating = ZeroStar
                | OneStar
                | TwoStar
                | ThreeStar
                | FourStar
                | FiveStar
  deriving (Read, Eq, Ord)

instance Show PaveRating where
  show ZeroStar  = ""
  show OneStar   = "*"
  show TwoStar   = "**"
  show ThreeStar = "***"
  show FourStar  = "****"
  show FiveStar  = "*****"

--  pave sectors are rated according to their severity
data Pave = Pave { name :: String, length :: Float, rating :: PaveRating } 
  deriving (Read,Show)

instance Eq Pave where
  (Pave n1 l1 r1) == (Pave n2 l2 r2) = n1 == n2 && l1 == l2 && r1 == r2

instance Ord Pave where
  compare pave1 pave2 =
    if ratingComparison == EQ then
      if lengthComparison == EQ then
        nameComparison
      else
        lengthComparison
    else
      ratingComparison
    where
      ratingComparison = (rating pave1) `compare` (rating pave2)
      lengthComparison = (ParcoursDB.Pave.length pave1) `compare` (ParcoursDB.Pave.length pave2)
      nameComparison   = (ParcoursDB.Pave.name pave1) `compare` (ParcoursDB.Pave.name pave2)

data IndexablePave = IndexablePave { km     :: Float
                                   , sector :: Int
                                   , pave   :: Pave
                                   } deriving (Read,Show)

instance Eq IndexablePave where
  (IndexablePave km1 s1 p1) == (IndexablePave km2 s2 p2) = km1 == km2 && s1 == s2 && p1 == p2

instance Ord IndexablePave where
  compare iP1 iP2 = if kmComparison == EQ then
                      if sectorComparison == EQ then
                         paveComparison
                      else sectorComparison
                    else kmComparison
                    where
                      kmComparison     = (km iP1) `compare` (km iP2)
                      sectorComparison = (sector iP1) `compare` (sector iP2)
                      paveComparison   = (pave iP1) `compare` (pave iP2)

description :: IndexablePave -> Float -> String
description (IndexablePave kM s p) raceDistance
  | rating == ZeroStar = printf "%d,%.1f km,%s,%f km" s distanceToFinish name length
  | otherwise = printf "%d,%.1f km,%s,%f km,%s" s distanceToFinish name length (show rating)
  where
    distanceToFinish = raceDistance - kM
    name = ParcoursDB.Pave.name p
    length = ParcoursDB.Pave.length p
    rating = ParcoursDB.Pave.rating p
