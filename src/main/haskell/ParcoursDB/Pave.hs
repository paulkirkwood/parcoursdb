module ParcoursDB.Pave where

data PaveRating = FiveStar
                | FourStar
                | ThreeStar
                | TwoStar
                | OneStar
                | ZeroStar
  deriving (Read, Eq, Ord)

instance Show PaveRating where
  show FiveStar  = "*****"
  show FourStar  = "****"
  show ThreeStar = "***"
  show TwoStar   = "**"
  show OneStar   = "*"
  show ZeroStar  = ""

--  pave sectors are rated according to their severity
data Pave = Pave { name :: String, length :: Float, rating :: PaveRating } 
  deriving (Read,Show)

instance Eq Pave where
  (Pave n1 l1 r1) == (Pave n2 l2 r2) = n1 == n2 && l1 == l2 && r1 == r2

instance Ord Pave where
  compare (Pave n1 l1 r1) (Pave n2 l2 r2) = if r1 == r2 then compare l1 l2 else compare l1 l2
