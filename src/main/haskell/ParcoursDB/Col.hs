module ParcoursDB.Col where

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

data Col = Col { name     :: String
               , category :: ColCategory
               , height   :: Int
               , length   :: Float
               }
  deriving (Read,Show)

instance Eq Col where
  (Col n1 c1 h1 l1) == (Col n2 c2 h2 l2) = n1 == n2 && c1 == c2 && h1 == h2 && l1 == l2

instance Ord Col where
  compare col1 col2 = if categoryComparison == EQ then
                        if heightComparison == EQ then
                          if lengthComparison == EQ then
                            nameComparison
                          else lengthComparison
                        else heightComparison
                      else categoryComparison
                      where
                        categoryComparison = (category col1) `compare` (category col2)
                        heightComparison = (height col1) `compare` (height col2)
                        lengthComparison = (ParcoursDB.Col.length col1) `compare` (ParcoursDB.Col.length col2)
                        nameComparison = (name col1) `compare` (name col2)

data IndexableCol = IndexableCol { km  :: Float
                                 , col :: Col
                                 } deriving (Read,Show)

instance Eq IndexableCol where
  (IndexableCol km1 col1) == (IndexableCol km2 col2) = km1 == km2 && col1 == col2

instance Ord IndexableCol where
  compare (IndexableCol km1 col1) (IndexableCol km2 col2) = if km1 == km2 then compare col1 col2 else compare km1 km2
