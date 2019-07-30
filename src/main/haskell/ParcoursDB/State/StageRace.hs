module ParcoursDB.State.StageRace where

import Control.Monad.State
import Data.Either
import Data.List
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage
import ParcoursDB.StageRace
import Text.Printf

data StageRaceState = StageRaceState { sStageRace       :: StageRace
                                     , sStageDay        :: Day
                                     , sStageNumber      :: Int
                                     , sSplitStageSuffix :: Char
                                     , sIsSplitStage     :: Bool
                                     , sIsMorningStage   :: Bool
                                     , sRaceStages       :: [Stage]
                                     }

init :: StageRace -> Day -> StageRaceState
init tdf@(TourDeFrance _) date         = init' tdf date
init giro@(Giro _) date                = init' giro date
init parisNice@(ParisNice _) date      = init' parisNice date
init tirreno@(TirrenoAdriatico _) date = init' tirreno date
init dauphine@(Dauphine _) date        = init' dauphine date

init' stageRace d = StageRaceState { sStageRace       = stageRace
                                   , sStageDay        = d
                                   , sStageNumber      = 1
                                   , sSplitStageSuffix = 'a'
                                   , sIsSplitStage     = False
                                   , sIsMorningStage   = False
                                   , sRaceStages       = []
                                   }

getStageId :: State StageRaceState String
getStageId = do
  currentState <- get
  let current = sStageNumber currentState
  let suffix  = sSplitStageSuffix currentState
  let isSplit = sIsSplitStage currentState
  let s = if isSplit
            then printf "%d%c" current suffix
            else printf "%d" current
  return s
            
nextStageDay :: State StageRaceState Day
nextStageDay = do
  currentState <- get
  let day     = sStageDay currentState
  let isSplit = sIsSplitStage currentState
  let isAM    = sIsMorningStage currentState
  let next    = if isSplit || isAM then day else addDays 1 day
  return next

nextStageNumber :: State StageRaceState Int
nextStageNumber = do
  currentState <- get
  let current = sStageNumber currentState
  let isSplit = sIsSplitStage currentState
  let next = if isSplit then current else current + 1
  return next

nextSplitStageSuffix :: State StageRaceState Char
nextSplitStageSuffix = do
  currentState <- get
  let current = sSplitStageSuffix currentState
  let isSplit = sIsSplitStage currentState
  let next = if isSplit then succ current else current
  return next

prologue :: Location -> Location -> Float -> State StageRaceState ()
prologue start finish distance = do
  currentState <- get
  let day = sStageDay currentState
  nextDay <- nextStageDay
  let xs = sRaceStages currentState
  let prologue = Prologue day start finish distance
  put (currentState { sStageDay       = nextDay
                    , sIsMorningStage = False
                    , sRaceStages     = (prologue:xs)
                    } )

prologue' :: Location -> Float -> State StageRaceState ()
prologue' start_finish distance = prologue start_finish start_finish distance

roadStage :: Either Location Col -> Maybe Location -> Float -> State StageRaceState ()
roadStage start finish distance = do
  currentState    <- get
  nextDay         <- nextStageDay
  stageId         <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix      <- nextSplitStageSuffix
  let day         = sStageDay currentState
  let xs          = sRaceStages currentState
  let stage       = Road day start finish stageId distance []
  put (currentState { sStageDay         = nextDay
                    , sStageNumber      = nextStageNumber
                    , sSplitStageSuffix = nextSuffix
                    , sIsMorningStage   = False
                    , sRaceStages       = (xs ++ [stage])
                    } )

plainStage :: Location -> Location -> Float -> State StageRaceState ()
plainStage start finish distance = do
  roadStage (Left start) (Just finish) distance

criterium :: Location -> Float -> State StageRaceState ()
criterium start distance = roadStage (Left start) (Just start) distance

mountainStage :: Location -> Location -> Float -> State StageRaceState()
mountainStage start finish distance = roadStage (Left start) (Just finish) distance

summitFinishStage :: Location -> Float -> State StageRaceState ()
summitFinishStage start distance = roadStage (Left start) Nothing distance

teamTimeTrial :: Location -> Location -> Float -> State StageRaceState ()
teamTimeTrial start finish distance = do
  currentState    <- get
  nextDay         <- nextStageDay
  stageId         <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix      <- nextSplitStageSuffix
  let day         = sStageDay currentState
  let xs          = sRaceStages currentState
  let stage       = TeamTimeTrial day start finish stageId distance []
  put (currentState { sStageDay         = nextDay
                    , sStageNumber      = nextStageNumber
                    , sSplitStageSuffix = nextSuffix
                    , sIsMorningStage   = False
                    , sRaceStages       = (xs ++ [stage])
                    } )

teamTimeTrial' :: Location -> Float -> State StageRaceState ()
teamTimeTrial' start_finish distance = teamTimeTrial start_finish start_finish distance

twoManTeamTimeTrial :: Location -> Float -> State StageRaceState ()
twoManTeamTimeTrial start_finish distance = do
  currentState    <- get
  nextDay         <- nextStageDay
  stageId         <- getStageId
  nextStageNumber <- nextStageNumber
  let day         = sStageDay currentState
  let xs          = sRaceStages currentState
  let stage       = TwoManTeamTimeTrial day start_finish start_finish stageId distance []
  put (currentState { sStageDay    = nextDay
                    , sStageNumber = nextStageNumber
                    , sRaceStages  = (xs ++ [stage])
                    } )

individualTimeTrial :: Location -> Location -> Float -> State StageRaceState ()
individualTimeTrial start finish distance = individualTimeTrial' start (Just finish) distance

outAndBackIndividualTimeTrial :: Location -> Float -> State StageRaceState()
outAndBackIndividualTimeTrial start_finish distance = individualTimeTrial' start_finish (Just start_finish) distance

mountainTimeTrial :: Location -> Float -> State StageRaceState ()
mountainTimeTrial start distance = individualTimeTrial' start Nothing distance

individualTimeTrial' :: Location -> Maybe Location -> Float -> State StageRaceState ()
individualTimeTrial' start finish distance = do
  currentState    <- get
  nextDay         <- nextStageDay
  stageId         <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix      <- nextSplitStageSuffix
  let day         = sStageDay currentState
  let xs          = sRaceStages currentState
  let stage       = IndividualTimeTrial day start finish stageId distance []
  put (currentState { sStageDay         = nextDay
                    , sStageNumber      = nextStageNumber
                    , sSplitStageSuffix = nextSuffix
                    , sIsMorningStage   = False
                    , sRaceStages       = (xs ++ [stage])
                    } )

restDay :: Either Location Col -> State StageRaceState ()
restDay loc = do
  currentState <- get
  nextDay      <- nextStageDay
  let day      = sStageDay currentState
  let xs       = sRaceStages currentState
  let stage    = RestDay day (Just loc)
  put (currentState { sStageDay = nextDay, sRaceStages = (xs ++ [stage]) } )

transferDay :: State StageRaceState ()
transferDay = do
  currentState <- get
  nextDay      <- nextStageDay
  let day      = sStageDay currentState
  let xs       = sRaceStages currentState
  let stage    = RestDay day Nothing
  put (currentState { sStageDay   = nextDay
                    , sRaceStages = (xs ++ [stage])
                    } )

enableSplitStages :: State StageRaceState ()
enableSplitStages = do
  currentState <- get
  put (currentState { sIsSplitStage     = True
                    , sSplitStageSuffix = 'a'
                    } )

disableSplitStages :: State StageRaceState ()
disableSplitStages = do
  currentState <- get
  let day = sStageDay currentState
  let nextDay = addDays 1 day
  let current = sStageNumber currentState
  let nextStageNumber = current + 1
  put (currentState { sIsSplitStage = False
                    , sStageDay     = nextDay
                    , sStageNumber  = nextStageNumber
                    } )

enableMorningStage :: State StageRaceState ()
enableMorningStage = do
  currentState <- get
  put (currentState { sIsMorningStage = True })

hc :: Float -> String -> Country -> Int -> Float -> Float -> State StageRaceState ()
hc km name country height length averageGradient
  | km < 0              = error "km must be greater than zero"
  | height < 0          = error "Height must be greater than zero"
  | length < 0          = error "Length must be greater than zero"
  | averageGradient < 0 = error "Average gradient must be greater than zero"
  | otherwise           = addCol km (Col name country HC height (Just length) (Just averageGradient) Nothing)

hc' :: Float -> String -> Country -> Int -> State StageRaceState()
hc' km name country height 
  | km < 0     = error "km must be greater than zero"
  | height < 0 = error "Height must be greater than zero"
  | otherwise  = addCol km (Col name country HC height Nothing Nothing Nothing)

c1 :: Float -> String -> Country -> Int -> Float -> Float -> State StageRaceState ()
c1 km name country height length averageGradient
  | km < 0              = error "km must be greater than zero"
  | height < 0          = error "Height must be greater than zero"
  | length < 0          = error "Length must be greater than zero"
  | averageGradient < 0 = error "Average gradient must be greater than zero"
  | otherwise           = addCol km (Col name country C1 height (Just length) (Just averageGradient) Nothing)

c1' :: Float -> String -> Country -> Int -> State StageRaceState()
c1' km name country height
  | km < 0     = error "km must be greater than zero"
  | height < 0 = error "Height must be greater than zero"
  | otherwise  = addCol km (Col name country C1 height Nothing Nothing Nothing)

c2 :: Float -> String -> Country -> Int -> Float -> Float -> State StageRaceState ()
c2 km name country height length averageGradient
  | km < 0              = error "km must be greater than zero"
  | height < 0          = error "Height must be greater than zero"
  | length < 0          = error "Length must be greater than zero"
  | averageGradient < 0 = error "Average gradient must be greater than zero"
  | otherwise           = addCol km (Col name country C2 height (Just length) (Just averageGradient) Nothing)

c2' :: Float -> String -> Country -> Int -> State StageRaceState ()
c2' km name country height
  | km < 0     = error "km must be greater than zero"
  | height < 0 = error "Height must be greater than zero"
  | otherwise  = addCol km (Col name country C2 height Nothing Nothing Nothing)

c3 :: Float -> String -> Country -> Int -> Float -> Float -> State StageRaceState ()
c3 km name country height length averageGradient
  | km < 0              = error "km must be greater than zero"
  | height < 0          = error "Height must be greater than zero"
  | length < 0          = error "Length must be greater than zero"
  | averageGradient < 0 = error "Average gradient must be greater than zero"
  | otherwise           = addCol km (Col name country C3 height (Just length) (Just averageGradient) Nothing)

c3' :: Float -> String -> Country -> Int -> State StageRaceState ()
c3' km name country height
  | km < 0     = error "km must be greater than zero"
  | height < 0 = error "Height must be greater than zero"
  | otherwise  = addCol km (Col name country C3 height Nothing Nothing Nothing)

c4 :: Float -> String -> Country -> Int -> Float -> Float -> State StageRaceState ()
c4 km name country height length averageGradient
  | km < 0              = error "km must be greater than zero"
  | height < 0          = error "Height must be greater than zero"
  | length < 0          = error "Length must be greater than zero"
  | averageGradient < 0 = error "Average gradient must be greater than zero"
  | otherwise           = addCol km (Col name country C4 height (Just length) (Just averageGradient) Nothing)

c4' :: Float -> String -> Country -> Int -> State StageRaceState ()
c4' km name country height
  | km < 0     = error "km must be greater than zero"
  | height < 0 = error "Height must be greater than zero"
  | otherwise  = addCol km (Col name country C4 height Nothing Nothing Nothing)

addCol :: Float -> Col -> State StageRaceState ()
addCol km c
  | (stageHasCol km) == True = error "There is already a Col at that point in the stage"
  | otherwise = addCol' km c

addCol' :: Float -> Col-> State StageRaceState ()
addCol' km c = do
  currentState <- get
  let stages    = sRaceStages currentState
  let lastStage = last stages
  let col       = IndexableCol km c
  let stage     = addColToStage lastStage col
  put (currentState { sRaceStages = ((Data.List.init stages) ++ [stage]) } )

stageHasCol :: Float -> Bool
stageHasCol km = False

addColToStage :: Stage -> IndexableCol -> Stage
addColToStage (Road d s f i dist cs)                col = Road d s f i dist (cs ++ [col])
addColToStage (TeamTimeTrial d s f i dist cs)       col = TeamTimeTrial d s f i dist (cs ++ [col])
addColToStage (IndividualTimeTrial d s f i dist cs) col = IndividualTimeTrial d s f i dist (cs ++ [col])

build :: State StageRaceState StageRace
build = do
  currentState <- get
  let stageRace = sStageRace currentState
  edition <- build' stageRace
  return edition

build' :: StageRace -> State StageRaceState StageRace
build' (TourDeFrance _) = do
  currentState <- get
  let stages = sRaceStages currentState
  let edition = TourDeFrance stages
  return edition
build' (Giro _) = do
  currentState <- get
  let stages = sRaceStages currentState
  let edition = Giro stages
  return edition
build' (ParisNice _) = do
  currentState <- get
  let stages = sRaceStages currentState
  let edition = ParisNice stages
  return edition
build' (TirrenoAdriatico _) = do
  currentState <- get
  let stages = sRaceStages currentState
  let edition = TirrenoAdriatico stages
  return edition
build' (Dauphine _) = do
  currentState <- get
  let stages = sRaceStages currentState
  let edition = Dauphine stages
  return edition
