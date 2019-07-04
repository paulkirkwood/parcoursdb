module ParcoursDB.State.MilanoSanRemo where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Cote

data MilanoSanRemoState = MilanoSanRemoState { cDate     :: Day
                                             , cDistance :: Float
                                             , cCotes     :: Set.Set IndexableCote
                                             }

init :: Day -> Float -> MilanoSanRemoState
init dt dist
  | dist < 0  = error "Distance must be greater than zero"
  | otherwise = MilanoSanRemoState { cDate = dt, cDistance = dist, cCotes = Set.empty }

cote :: Float-> String -> Int -> State MilanoSanRemoState ()
cote km n h
  | km < 0 = error "km must be greater than zero"
  | h < 0 = error "Height must be greater than zero"
  | otherwise = cote' km n h

cote' :: Float-> String -> Int -> State MilanoSanRemoState ()
cote' km n h = do
  currentState <- get
  let cote = IndexableCote km (Cote n h)
  let cotes = cCotes currentState
  put (currentState { cCotes = Set.insert cote $ cotes })

build :: State MilanoSanRemoState Classic
build = do
  currentState <- get
  let dt          = cDate currentState
  let dist        = cDistance currentState
  let set         = cCotes currentState
  let cotes       = Set.toList set
  let sortedCotes = Data.List.sort cotes 
  let edition     = MilanoSanRemo dt dist sortedCotes
  return edition
