-- file Classics.MilanoSanRemo.hs
module Classics.MilanoSanRemo
(milanoSanRemo2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

milanoSanRemo2018 :: Classic
milanoSanRemo2018 =
  evalState milanoSanRemo2018' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2018 3 17) 294 [] ))

milanoSanRemo2018' = do
  cote 142.2 "Passo del Turchino" 532
  cote 239.5 "Capo Mele" 67
  cote 247.4 "Capo Cervo" 61
  cote 252.6 "Capo Berta" 130
  cote 269.5 "Cipressa" 239
  cote 285.6 "Poggio" 160
  edition <- build
  return edition
