module ParcoursDB.State.TourOfFlanders where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Berg
import ParcoursDB.Classic
import ParcoursDB.Pave

data TourOfFlandersState = TourOfFlandersState { sDate     :: Day
                                               , sDistance :: Float
                                               , sPave     :: Set.Set IndexablePave
                                               , sBergs    :: Set.Set IndexableBerg
                                               , sSector   :: Int
                                               }

init :: Day -> Float -> TourOfFlandersState
init dt dist = TourOfFlandersState { sDate = dt, sDistance = dist, sPave = Set.empty , sSector = 1, sBergs = Set.empty }

pave :: String -> Float -> Float -> State TourOfFlandersState ()
pave name length km
  | length < 0 = error "length must be greater than zero"
  | km < 0     = error "km must be greater than zero"
  | otherwise  = pave' (Pave name length ZeroStar) km

pave' :: Pave -> Float -> State TourOfFlandersState ()
pave' p km = do
  currentState <- get
  let xs = sPave currentState
  let current = sSector currentState
  let pave = IndexablePave km current p
  let cobbles = sPave currentState
  put (currentState { sSector = current + 1, sPave = Set.insert pave $ cobbles })

cobbledBerg :: String -> Float -> Float -> State TourOfFlandersState ()
cobbledBerg name length km = addBerg name Cobbles length km

asphaltBerg :: String -> Float -> Float -> State TourOfFlandersState ()
asphaltBerg name length km = addBerg name Asphalt length km

addBerg :: String -> Pavement -> Float -> Float -> State TourOfFlandersState ()
addBerg name pavement length km = do
  currentState <- get
  let bergs = sBergs currentState
  let berg  = Berg name pavement length
  let indexableBerg = IndexableBerg km berg
  put (currentState { sBergs = (Set.insert indexableBerg bergs) } )
  
build :: State TourOfFlandersState Classic
build = do
  currentState <- get
  let date     = sDate currentState
  let distance = sDistance currentState
  let pave     = Set.toList (sPave currentState)
  let bergs    = Set.toList (sBergs currentState)
  let sortedBergs = Data.List.sort bergs
  let sortedPave  = Data.List.sort pave
  let edition  = TourOfFlanders date distance sortedPave sortedBergs
  return edition
