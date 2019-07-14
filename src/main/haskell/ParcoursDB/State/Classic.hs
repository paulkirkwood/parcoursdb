module ParcoursDB.State.Classic where

import Control.Monad.State
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Berg
import ParcoursDB.Cote
import ParcoursDB.Gravel
import ParcoursDB.Pave

data ClassicState = ClassicState { cClassic      :: Classic
                                 , cBergs        :: Set.Set IndexableBerg
                                 , cCotes        :: Set.Set IndexableCote
                                 , cGravel       :: Set.Set IndexableGravel
                                 , cPave         :: Set.Set IndexablePave
                                 , cPaveSector   :: Int
                                 , cGravelSector :: Int
                                 }

init :: Classic -> ClassicState
init agr@(AmstelGoldRace date distance _)       = init' agr
init e3@(E3Harelbeke date distance _)           = init' e3
init gw@(GentWevelgem date distance _)          = init' gw
init gpp@(GrandPrixDePlouay date distance)      = init' gpp
init kbk@(KuurneBrusselsKuurne date distance _) = init' kbk
init lfw@(LaFlecheWallonne date distance _)     = init' lfw
init lbl@(LiegeBastogneLiege date distance _)   = init' lbl
init msr@(MilanoSanRemo date distance _)        = init' msr
init ohv@(OmloopHetVolk date distance _ _)      = init' ohv
init pr@(ParisRoubaix date distance _)          = init'' pr
init pt@(ParisTours date distance _ _)          = init' pt
init ronde@(TourOfFlanders date distance _ _)   = init' ronde
init gdl@(TourOfLombardy date distance _)       = init' gdl

init' :: Classic -> ClassicState
init' classic = ClassicState { cClassic      = classic
                             , cBergs        = Set.empty
                             , cCotes        = Set.empty
                             , cGravel       = Set.empty
                             , cPave         = Set.empty
                             , cPaveSector   = 1
                             , cGravelSector = -1
                             }
      
init'' :: Classic -> ClassicState
init'' classic = ClassicState { cClassic      = classic
                             , cBergs        = Set.empty
                             , cCotes        = Set.empty
                             , cGravel       = Set.empty
                             , cPave         = Set.empty
                             , cPaveSector   = -1
                             , cGravelSector = -1
                             }
      
cobbledBerg :: String -> Float -> Float -> State ClassicState ()
cobbledBerg name length km
  | length < 0 = error "length must be greater than zero"
  | km < 0 = error "km must be greater than zero"
  | otherwise = ParcoursDB.State.Classic.berg name Cobbles length km

asphaltBerg :: String -> Float -> Float -> State ClassicState ()
asphaltBerg name length km
  | length < 0 = error "length must be greater than zero"
  | km < 0 = error "km must be greater than zero"
  | otherwise = ParcoursDB.State.Classic.berg name Asphalt length km

berg :: String -> Pavement -> Float -> Float -> State ClassicState ()
berg name pavement length km = do
  currentState <- get
  let bergs = cBergs currentState
  let berg  = Berg name pavement length
  let indexableBerg = IndexableBerg km berg
  put (currentState { cBergs = (Set.insert indexableBerg bergs) } )

cote :: Float-> String -> Int -> State ClassicState ()
cote km n h
  | km < 0 = error "km must be greater than zero"
  | h < 0 = error "Height must be greater than zero"
  | otherwise = cote' km n h

cote' :: Float-> String -> Int -> State ClassicState ()
cote' km n h = do
  currentState <- get
  let cote = IndexableCote km (Cote n h)
  let cotes = cCotes currentState
  put (currentState { cCotes = Set.insert cote $ cotes })

gravel :: Float -> String -> Float -> State ClassicState ()
gravel km n l
  | km < 0    = error "km must be greater than zero"
  | l < 0     = error "length must be greater than zero"
  | otherwise = gravel' km n l

gravel' :: Float-> String -> Float -> State ClassicState ()
gravel' km n l = do
  currentState <- get
  let current = cGravelSector currentState
  let gravel = IndexableGravel km current (Gravel n l)
  let gravelSectors = cGravel currentState
  put (currentState { cGravelSector = current - 1, cGravel = Set.insert gravel $ gravelSectors })

fiveStarPavé :: String -> Float -> Float -> State ClassicState ()
fiveStarPavé name length km = pavé name length km FiveStar

fourStarPavé :: String -> Float -> Float -> State ClassicState ()
fourStarPavé name length km = pavé name length km FourStar

threeStarPavé :: String -> Float -> Float -> State ClassicState ()
threeStarPavé name length km = pavé name length km ThreeStar

twoStarPavé :: String -> Float -> Float -> State ClassicState ()
twoStarPavé name length km = pavé name length km TwoStar

oneStarPavé :: String -> Float -> Float -> State ClassicState ()
oneStarPavé name length km = pavé name length km OneStar

pavé :: String -> Float -> Float -> PaveRating -> State ClassicState ()
pavé name length km rating
  | length < 0 = error "length must be greater than zero"
  | km < 0     = error "km must be greater than zero"
  | otherwise  = pavé' (Pave name length rating) km False

pavé' :: Pave -> Float -> Bool -> State ClassicState ()
pavé' p km multiplePavePerSector = do
  currentState <- get
  let current = cPaveSector currentState
  allowMultiplePavePerSector <- isParisRoubaix
  let next = if allowMultiplePavePerSector == True then
               if multiplePavePerSector == True then
                 current
               else
                 current - 1
             else
               current + 1
  let pave    = IndexablePave km current p
  let cobbles = cPave currentState
  put (currentState { cPaveSector = next, cPave = Set.insert pave $ cobbles })

addMultiplePavé :: (Pave,Float) -> (Pave,Float) -> State ClassicState ()
addMultiplePavé (p1,km1) (p2,km2) = do
  pavé' p1 km1 True
  pavé' p2 km2 False

build :: State ClassicState Classic
build = do
  currentState <- get
  let classic = cClassic currentState
  edition <- build' classic
  return edition

build' :: Classic -> State ClassicState Classic
build' (AmstelGoldRace date distance _) = do
  currentState <- get
  let cotes       = Set.toList (cCotes currentState)
  let sortedCotes = Data.List.sort cotes
  let edition     = AmstelGoldRace date distance sortedCotes
  return edition
build' (E3Harelbeke date distance _) = do
  currentState <- get
  let bergs       = Set.toList (cBergs currentState)
  let sortedBergs = Data.List.sort bergs
  let edition     = E3Harelbeke date distance sortedBergs
  return edition
build' (GentWevelgem date distance _) = do
  currentState <- get
  let bergs       = Set.toList (cBergs currentState)
  let sortedBergs = Data.List.sort bergs
  let edition     = GentWevelgem date distance sortedBergs
  return edition
build' (GrandPrixDePlouay date distance) = do
  currentState <- get
  let edition     = GrandPrixDePlouay date distance
  return edition
build' (LaFlecheWallonne date distance _) = do
  currentState <- get
  let cotes       = Set.toList (cCotes currentState)
  let sortedCotes = Data.List.sort cotes
  let edition     = LaFlecheWallonne date distance sortedCotes
  return edition
build' (LiegeBastogneLiege date distance _) = do
  currentState <- get
  let cotes       = Set.toList (cCotes currentState)
  let sortedCotes = Data.List.sort cotes
  let edition     = LiegeBastogneLiege date distance sortedCotes
  return edition
build' (KuurneBrusselsKuurne date distance _) = do
  currentState <- get
  let bergs       = Set.toList (cBergs currentState)
  let sortedBergs = Data.List.sort bergs
  let edition = KuurneBrusselsKuurne date distance sortedBergs
  return edition
build' (MilanoSanRemo date distance _) = do
  currentState <- get
  let cotes       = Set.toList (cCotes currentState)
  let sortedCotes = Data.List.sort cotes
  let edition     = MilanoSanRemo date distance sortedCotes
  return edition
build' (OmloopHetVolk date distance _ _) = do
  currentState <- get
  let bergs       = Set.toList (cBergs currentState)
  let pave        = Set.toList (cPave currentState)
  let sortedBergs = Data.List.sort bergs
  let sortedPave  = Data.List.sort pave
  let edition     = OmloopHetVolk date distance sortedPave sortedBergs
  return edition
build' (ParisRoubaix date distance _) = do
  currentState <- get
  let pave            = Set.toList (cPave currentState)
  let sorted          = Data.List.sort pave
  let numberOfSectors = Data.List.length $ unique $ map(\p -> ParcoursDB.Pave.sector p) sorted
  let countdown       = map(\p -> p { ParcoursDB.Pave.sector = (ParcoursDB.Pave.sector p) + numberOfSectors + 1 } ) sorted
  let edition         = ParisRoubaix date distance countdown
  return edition
build' (ParisTours date distance _ _) = do
  currentState <- get
  let cotes           = Set.toList (cCotes currentState)
  let sortedCotes     = Data.List.sort cotes
  let gravel          = Set.toList (cGravel currentState)
  let sortedGravel    = Data.List.sort gravel
  let numberOfSectors = Data.List.length gravel
  let countdown       = map(\p -> p { ParcoursDB.Gravel.sector = (ParcoursDB.Gravel.sector p) + numberOfSectors + 1 } ) sortedGravel
  let edition         = ParisTours date distance sortedCotes countdown
  return edition
build' (TourOfFlanders date distance _ _) = do
  currentState <- get
  let bergs       = Set.toList (cBergs currentState)
  let pave        = Set.toList (cPave currentState)
  let sortedBergs = Data.List.sort bergs
  let sortedPave  = Data.List.sort pave
  let edition     = TourOfFlanders date distance sortedPave sortedBergs
  return edition
build' (TourOfLombardy date distance _) = do
  currentState <- get
  let cotes       = Set.toList (cCotes currentState)
  let sortedCotes = Data.List.sort cotes
  let edition     = TourOfLombardy date distance sortedCotes
  return edition

unique :: [Int] -> [Int]
unique xs = [x | (x,y) <- zip xs [0..], x `notElem` (take y xs)]

isParisRoubaix :: State ClassicState Bool
isParisRoubaix = do
  currentState <- get
  flag <- isParisRoubaix' (cClassic currentState)
  return flag

isParisRoubaix' :: Classic -> State ClassicState Bool
isParisRoubaix' (ParisRoubaix _ _ _) = do
  return True
isParisRoubaix' _ = do
  return False
