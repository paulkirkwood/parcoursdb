module ParcoursDB.Berg where

data Pavement = Pavement | Cobbles
                         | Asphalt

data Berg = Berg { name     :: String
                 , pavement :: Pavement
                 , length   :: Float
                 }
