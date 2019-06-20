module ParcoursDB.Col where

data Col = HC { name :: String, height :: Float, length :: Float }
         | C1 { name :: String, height :: Float, length :: Float }
         | C2 { name :: String, height :: Float, length :: Float }
         | C3 { name :: String, height :: Float, length :: Float }
         | C4 { name :: String, height :: Float, length :: Float }
         | UC { name :: String, height :: Float, length :: Float }
    deriving (Eq,Show)

category :: Col -> String
category (HC _ _ _) = "HC"
category (C1 _ _ _) = "C.1"
category (C2 _ _ _) = "C.2"
category (C3 _ _ _) = "C.3"
category (C4 _ _ _) = "C.4"
category (UC _ _ _) = "Uncategorised"
