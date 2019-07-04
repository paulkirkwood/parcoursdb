module ParcoursDB.State.ParisTours where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Cote
import ParcoursDB.Gravel

data ParisToursState = ParisToursState { cDate     :: Day
                                       , cDistance :: Float
                                       , cCotes    :: Set.Set IndexableCote
                                       , cGravel   :: Set.Set IndexableGravel
                                       , cSector   :: Int
                                       }

init :: Day -> Float -> ParisToursState
init date distance = ParisToursState { cDate     = date
                                     , cDistance = distance
                                     , cCotes    = Set.empty
                                     , cGravel   = Set.empty
                                     , cSector   = -1
                                     }

gravel :: Float -> String -> Float -> State ParisToursState ()
gravel km n l
  | km < 0    = error "km must be greater than zero"
  | l < 0     = error "length must be greater than zero"
  | otherwise = gravel' km n l

gravel' :: Float -> String -> Float -> State ParisToursState ()
gravel' km n l = do
  currentState <- get
  let current = cSector currentState
  let gravel = IndexableGravel km current (Gravel n l)
  let cheminsDesVignes = cGravel currentState
  put (currentState { cSector = current - 1, cGravel = Set.insert gravel $ cheminsDesVignes })

cote :: Float-> String -> Int -> State ParisToursState ()
cote km n h
  | km < 0 = error "km must be greater than zero"
  | h < 0 = error "Height must be greater than zero"
  | otherwise = cote' km n h

cote' :: Float-> String -> Int -> State ParisToursState ()
cote' km n h = do
  currentState <- get
  let cote = IndexableCote km (Cote n h)
  let cotes = cCotes currentState
  put (currentState { cCotes = Set.insert cote $ cotes })

build :: State ParisToursState Classic
build = do
  currentState <- get
  let cotes           = Set.toList (cCotes currentState)
  let sortedCotes     = Data.List.sort cotes
  let gravel          = Set.toList (cGravel currentState)
  let sortedGravel    = Data.List.sort gravel
  let numberOfSectors = Data.List.length gravel
  let countdown       = map(\p -> p { sector = (sector p) + numberOfSectors + 1 } ) sortedGravel
  let edition         = ParisTours (cDate currentState) (cDistance currentState) sortedCotes countdown
  return edition
