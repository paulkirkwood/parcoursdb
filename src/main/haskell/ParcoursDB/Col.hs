module ParcoursDB.Col where

import ParcoursDB.Country
import ParcoursDB.Location hiding (name,country)

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
               , height          :: Int
               , length          :: Maybe Float
               , averageGradient :: Maybe Float
               , maximumGradient :: Maybe Float
               }
  deriving (Read,Show)

alias :: Col -> String -> Col
alias c@(Col n country h l aG mG) newName = Col newName country h l aG mG

clone :: Col -> String -> Col
clone c@(Col n country h l aG mG) newName = Col (newName ++ " (" ++ n ++ ")" ) country h l aG mG

jointFinish :: Col -> Location -> Col
jointFinish c@(Col colName country h length aG mG) l@(Location locName locCountry) =
  Col (colName ++ " - " ++ locName ) country h length aG mG

dualNameCol :: Col -> Col -> Col
dualNameCol c1@(Col n1 c h l aG mG) c2@(Col n2 _ _ _ _ _) = Col (n1 ++ "/" ++ n2) c h l aG mG

qualifiedCol :: Col -> Country -> String
qualifiedCol col raceCountry =
  let colCountry = country(col)
  in if colCountry == raceCountry then
       ParcoursDB.Col.name col
     else
       ParcoursDB.Col.name col ++ " (" ++ show colCountry ++ ")"

vicinity :: Col -> String -> Col
vicinity (Col n c h l aG mG) s = Col (n ++ " (" ++ s ++ ")" ) c h l aG mG

instance Eq Col where
  (Col n1 c1 h1 _ _ _) == (Col n2 c2 h2 _ _ _) = n1 == n2 && c1 == c2 && h1 == h2 

instance Ord Col where
  compare col1 col2 =
    if countryComparison == EQ then
      if heightComparison == EQ then
        nameComparison
      else
        heightComparison
    else
      countryComparison
    where
      countryComparison = (country col2) `compare` (country col2)
      heightComparison  = (height col1) `compare` (height col2)
      nameComparison    = (name col1) `compare` (name col2)

data IndexableCol = IndexableCol { km  :: Float
                                 , col :: Col
                                 , category :: ColCategory
                                 } deriving (Read,Show)

instance Eq IndexableCol where
  (IndexableCol km1 col1 cat1) == (IndexableCol km2 col2 cat2) = km1 == km2 && col1 == col2 && cat1 == cat2

instance Ord IndexableCol where
  compare iCol1 iCol2 =
    if kilometreComparison == EQ then
      if categoryComparison == EQ then
        colComparison
      else
        categoryComparison
    else
      kilometreComparison
    where
      kilometreComparison = (km iCol1) `compare` (km iCol2)
      categoryComparison  = (category iCol1) `compare` (category iCol2)
      colComparison       = (col iCol1) `compare` (col iCol2)
