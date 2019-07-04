-- file StartFinish.hs
module StartFinish
(StartFinish(..)
,matchEditionStart
,matchEditionFinish
) where

import ParcoursDB.Location

data StartFinish = StartFinish { years        :: [Int]
                               , actualStart  :: Location
                               , actualFinish :: Location
                               }

matchEditionStart :: Int -> [StartFinish] -> Location
matchEditionStart year [x] = actualStart x
matchEditionStart year (x:xs)
  | year `elem` years x = actualStart x
  | otherwise           = matchEditionStart year xs

matchEditionFinish :: Int -> [StartFinish] -> Location
matchEditionFinish year [x] = actualFinish x
matchEditionFinish year (x:xs)
  | year `elem` years x = actualFinish x
  | otherwise           = matchEditionFinish year xs
