module ParcoursDB.State.ParisRoubaix where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave

data ParisRoubaixState = ParisRoubaixState { sDate                  :: Day
                                           , sDistance              :: Float
                                           , sPave                  :: [Pave]
                                           , sID                    :: Int
                                           , sMultiplePavePerSector :: Bool
                                           }

init :: Day -> Float -> ParisRoubaixState
init dt dist = ParisRoubaixState { sDate = dt, sDistance = dist, sPave = [], sID = -1, sMultiplePavePerSector = False }

fiveStarPave :: String -> Float -> Float -> State ParisRoubaixState ()
fiveStarPave name length km = addPave (Pave name length FiveStar) km

fourStarPave :: String -> Float -> Float -> State ParisRoubaixState ()
fourStarPave name length km = addPave (Pave name length FourStar) km

threeStarPave :: String -> Float -> Float -> State ParisRoubaixState ()
threeStarPave name length km = addPave (Pave name length ThreeStar) km

twoStarPave :: String -> Float -> Float -> State ParisRoubaixState ()
twoStarPave name length km = addPave (Pave name length TwoStar) km

oneStarPave :: String -> Float -> Float -> State ParisRoubaixState ()
oneStarPave name length km = addPave (Pave name length OneStar) km

addPave :: Pave -> Float -> State ParisRoubaixState ()
addPave pave km = do
  currentState <- get
  let xs = sPave currentState
  let flag = sMultiplePavePerSector currentState
  let current = sID currentState
  let nextID = if flag then current else current - 1
  put (currentState { sID = nextID, sPave = (xs ++ [pave]) } )

enableMultiplePavePerSector :: State ParisRoubaixState ()
enableMultiplePavePerSector = do
  currentState <- get
  put (currentState { sMultiplePavePerSector = True } )

disableMultiplePavePerSector :: State ParisRoubaixState ()
disableMultiplePavePerSector = do
  currentState <- get
  put (currentState { sMultiplePavePerSector = False } )

build :: State ParisRoubaixState Classic
build = do
  currentState <- get
  let dt   = sDate currentState
  let dist = sDistance currentState
  let xs   = sPave currentState
  let edition = ParisRoubaix dt dist xs
  return edition
