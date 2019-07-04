module ParcoursDB.State.TourOfLombardy where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Cote

data TourOfLombardyState = TourOfLombardyState { cDate     :: Day
                                               , cDistance :: Float
                                               , cCotes     :: Set.Set IndexableCote
                                               }

init :: Day -> Float -> TourOfLombardyState
init dt dist
  | dist < 0  = error "Distance must be greater than zero"
  | otherwise = TourOfLombardyState { cDate = dt, cDistance = dist, cCotes = Set.empty }

cote :: Float-> String -> Int -> State TourOfLombardyState ()
cote km n h
  | km < 0 = error "km must be greater than zero"
  | h < 0 = error "Height must be greater than zero"
  | otherwise = cote' km n h

cote' :: Float-> String -> Int -> State TourOfLombardyState ()
cote' km n h = do
  currentState <- get
  let cote = IndexableCote km (Cote n h)
  let cotes = cCotes currentState
  put (currentState { cCotes = Set.insert cote $ cotes })

build :: State TourOfLombardyState Classic
build = do
  currentState <- get
  let dt          = cDate currentState
  let dist        = cDistance currentState
  let set         = cCotes currentState
  let cotes       = Set.toList set
  let sortedCotes = Data.List.sort cotes 
  let edition     = TourOfLombardy dt dist sortedCotes
  return edition
