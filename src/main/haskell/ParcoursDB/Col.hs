module ParcoursDB.Col where

import ParcoursDB.Country

data ColCategory = HC
                 | C4
                 | C3
                 | C2
                 | C1
                 | UC
  deriving (Read, Eq, Ord)

instance Show ColCategory where
  show HC = "HC"
  show C4 = "C.4"
  show C3 = "C.3"
  show C2 = "C.2"
  show C1 = "C.1"
  show UC = "Uncategorised"

data Col = Col { name            :: String
               , country         :: Country
               , category        :: ColCategory
               , height          :: Int
               , length          :: Maybe Float
               , averageGradient :: Maybe Float
               , maximumGradient :: Maybe Float
               }
  deriving (Read,Show)

clone :: Col -> String -> Col
clone c@(Col n country category h l aG mG) newName = Col (newName ++ " (" ++ n ++ ")" ) country category h l aG mG

instance Eq Col where
  (Col n1 c1 cat1 h1 _ _ _) == (Col n2 c2 cat2 h2 _ _ _) = n1 == n2 && c1 == c2 && cat1 == cat2 && h1 == h2 

instance Ord Col where
  compare col1 col2 =
    if countryComparison == EQ then
      if categoryComparison == EQ then
        if heightComparison == EQ then
          nameComparison
        else
          heightComparison
      else
        categoryComparison
    else
      countryComparison
    where
      categoryComparison = (category col1) `compare` (category col2)
      countryComparison  = (country col2) `compare` (country col2)
      heightComparison   = (height col1) `compare` (height col2)
      nameComparison     = (name col1) `compare` (name col2)

data IndexableCol = IndexableCol { km  :: Float
                                 , col :: Col
                                 } deriving (Read,Show)

instance Eq IndexableCol where
  (IndexableCol km1 col1) == (IndexableCol km2 col2) = km1 == km2 && col1 == col2

instance Ord IndexableCol where
  compare (IndexableCol km1 col1) (IndexableCol km2 col2) = if km1 == km2 then compare col1 col2 else compare km1 km2
