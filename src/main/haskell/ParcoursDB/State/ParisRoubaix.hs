module ParcoursDB.State.ParisRoubaix where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave

data ParisRoubaixState = ParisRoubaixState { sDate                  :: Day
                                           , sDistance              :: Float
                                           , sPave                  :: Set.Set IndexablePave
                                           , sSector                :: Int
                                           , sMultiplePavePerSector :: Bool
                                           }

init :: Day -> Float -> ParisRoubaixState
init dt dist = ParisRoubaixState { sDate = dt
                                 , sDistance = dist
                                 , sPave = Set.empty
                                 , sSector = -1
                                 , sMultiplePavePerSector = False
                                 }

addPave :: Pave -> Float -> State ParisRoubaixState ()
addPave p@(Pave n l r) km
  | km < 0 = error "km must be greater than zero"
  | l < 0 = error "length must be greater than zero"
  | r == ZeroStar = error "Paris-Roubaix does not have unrated cobbles"
  | otherwise = addPave'' p km False

addPave' :: Pave -> Float -> Bool -> State ParisRoubaixState ()
addPave' p@(Pave n l r) km multiplePavePerSector
  | km < 0 = error "km must be greater than zero"
  | l < 0 = error "length must be greater than zero"
  | r == ZeroStar = error "Paris-Roubaix does not have unrated cobbles"
  | otherwise = addPave'' p km multiplePavePerSector

addPave'' :: Pave -> Float -> Bool -> State ParisRoubaixState ()
addPave'' p km multiplePavePerSector = do
  currentState <- get
  let current = sSector currentState
  let next = if multiplePavePerSector then current else current - 1
  let pave = IndexablePave km current p
  let cobbles = sPave currentState
  put (currentState { sSector = next, sPave = Set.insert pave $ cobbles })

addMultiplePave :: (Pave,Float) -> (Pave,Float) -> State ParisRoubaixState ()
addMultiplePave (p1,km1) (p2,km2) = do
  addPave' p1 km1 True
  addPave' p2 km2 False

build :: State ParisRoubaixState Classic
build = do
  currentState <- get
  let dt   = sDate currentState
  let dist = sDistance currentState
  let set  = sPave currentState
  let pave = Set.toList set
  let sortedPave = Data.List.sort pave
  -- Renumber the sector so that they countdown towards the finish
  let numberOfSectors = Data.List.length $ unique $ map(\p -> sector p) sortedPave
  let countdown = map(\p -> p { sector = (sector p) + numberOfSectors + 1 } ) sortedPave
  let edition = ParisRoubaix dt dist countdown
  return edition

unique :: [Int] -> [Int]
unique xs = [x | (x,y) <- zip xs [0..], x `notElem` (take y xs)]
