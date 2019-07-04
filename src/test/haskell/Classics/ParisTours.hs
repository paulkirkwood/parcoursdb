-- file Classics.ParisTours.hs
module Classics.ParisTours
(
parisTours2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic hiding (gravel)
import ParcoursDB.State.ParisTours

parisTours2018 :: Classic
parisTours2018 = evalState parisTours2018' (ParcoursDB.State.ParisTours.init (fromGregorian 2018 10 7) 214.5)

parisTours2018' :: State ParisToursState Classic
parisTours2018' = do
  cote   153.5 "Côte de Nazelles-Négron" 103
  gravel   165 "Château de Valmer" 0.5
  gravel 166.5 "Vallee de Raye" 1.5
  gravel   175 "Grosse Pierre" 2.5
  cote     175 "Côte de Gogueme" 104
  cote   179.5 "Côte de Montfort" 106 
  gravel 179.5 "Montfort" 2
  gravel   184 "Épinettes" 1.2
  cote   185.6 "Côte de Rochère" 92
  gravel 186.5 "Coudraie" 0.9
  gravel 189.5 "Solidarité" 1.5
  cote     192 "Côte de la Vallée Chartier" 95
  gravel   192 "Peu Morier" 1.6
  cote   197.5 "Côte de Vouvray" 91
  gravel 200.5 "Rochecorbon" 0.8
  cote   202.5 "Côte de Rochecorbon" 101
  edition <- build
  return edition
