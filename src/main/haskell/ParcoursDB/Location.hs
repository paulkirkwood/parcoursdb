module ParcoursDB.Location where

import Data.Ord
import ParcoursDB.Country

data Location = Location
  { name    :: String
  , country :: Country
  , elevation :: Maybe Int
  } deriving (Show)

instance Eq Location where
  (Location n1 c1 e1) == (Location n2 c2 e2) = n1 == n2 && c1 == c2 && e1 == e2

instance Ord Location where
  compare loc1 loc2 =
    if countryComparison == EQ then
      if elevationComparison == EQ then
        nameComparison
      else
        elevationComparison
    else
      countryComparison
    where
      countryComparison   = (country loc1) `compare` (country loc1)
      elevationComparison = (elevation loc1) `compare` (elevation loc2)
      nameComparison      = (name loc1) `compare` (name loc2)

commune :: Location -> String -> Location
commune (Location n c e) s = Location (n ++ "/" ++ s) c e

description :: Location -> String
description (Location n c _) = n ++ ", " ++ show c

vicinity :: Location -> String -> Location
vicinity (Location n c e) s = Location (n ++ " (" ++ s ++ ")") c e

qualifiedLocation :: Location -> Country -> String
qualifiedLocation loc c =
  let locationCountry = country(loc)
  in if locationCountry == c
     then ParcoursDB.Location.name loc
     else ParcoursDB.Location.name loc ++ " (" ++ show locationCountry ++ ")"
