module ParcoursDB.Location where

import Data.Ord
import ParcoursDB.Country

data Location = Location
  { name    :: String
  , country :: Country
  } deriving (Show)

instance Eq Location where
  (Location a b) == (Location c d) = a == c && b == d

instance Ord Location where
  compare (Location a b) (Location c d) = if a == c then compare b d else compare a c

commune :: Location -> String -> Location
commune (Location n c) s = Location (n ++ "/" ++ s) c 

description :: Location -> String
description (Location n c) = n ++ ", " ++ show c

vicinity :: Location -> String -> Location
vicinity (Location n c) s = Location (n ++ " (" ++ s ++ ")") c

qualifiedLocation :: Location -> Country -> String
qualifiedLocation loc c =
  let locationCountry = country(loc)
  in if locationCountry == c
     then ParcoursDB.Location.name loc
     else ParcoursDB.Location.name loc ++ " (" ++ show locationCountry ++ ")"
