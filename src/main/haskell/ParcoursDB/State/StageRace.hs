module ParcoursDB.State.StageRace where

import Control.Monad.State
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
                                     , stageDay         :: Day
                                     , stageNumber      :: Int
                                     , splitStageSuffix :: Char
                                     , isSplitStage     :: Bool
                                     , isMorningStage   :: Bool
                                     , raceStages       :: [Stage]
                                     , sCols            :: Set.Set IndexableCol
                                     }

init :: StageRace -> Day -> StageRaceState
init tdf@(TourDeFrance _) date         = init' tdf date
init giro@(Giro _) date                = init' giro date
init parisNice@(ParisNice _) date      = init' parisNice date
init tirreno@(TirrenoAdriatico _) date = init' tirreno date
init dauphine@(Dauphine _) date        = init' dauphine date

init' stageRace d = StageRaceState { sStageRace = stageRace
                                   , stageDay         = d
                                   , stageNumber      = 1
                                   , splitStageSuffix = 'a'
                                   , isSplitStage     = False
                                   , isMorningStage   = False
                                   , raceStages       = []
                                   , sCols            = Set.empty
                                   }

getStageId :: State StageRaceState String
getStageId = do
  currentState <- get
  let current = stageNumber currentState
  let suffix  = splitStageSuffix currentState
  let isSplit = isSplitStage currentState
  let s = if isSplit
            then printf "%d%c" current suffix
            else printf "%d" current
  return s
            
nextStageDay :: State StageRaceState Day
nextStageDay = do
  currentState <- get
  let day     = stageDay currentState
  let isSplit = isSplitStage currentState
  let isAM    = isMorningStage currentState
  let next    = if isSplit || isAM then day else addDays 1 day
  return next

nextStageNumber :: State StageRaceState Int
nextStageNumber = do
  currentState <- get
  let current = stageNumber currentState
  let isSplit = isSplitStage currentState
  let next = if isSplit then current else current + 1
  return next

nextSplitStageSuffix :: State StageRaceState Char
nextSplitStageSuffix = do
  currentState <- get
  let current = splitStageSuffix currentState
  let isSplit = isSplitStage currentState
  let next = if isSplit then succ current else current
  return next

prologue :: Location -> Location -> Float -> State StageRaceState ()
prologue start finish distance = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  let xs = raceStages currentState
  let prologue = Prologue start finish day distance
  put (currentState { stageDay = nextDay, raceStages = (prologue:xs) } )

prologue' :: Location -> Float -> State StageRaceState ()
prologue' start_finish distance = prologue start_finish start_finish distance

roadStage :: Location -> Location -> Float -> State StageRaceState ()
roadStage start finish distance = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  stageId <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix <- nextSplitStageSuffix
  let xs = raceStages currentState
  let cols       = Set.toList (sCols currentState)
  let sortedCols = Data.List.sort cols
  let stage = Road start finish day stageId distance sortedCols
  put (currentState { stageDay         = nextDay
                    , stageNumber      = nextStageNumber
                    , splitStageSuffix = nextSuffix
                    , raceStages       = (xs ++ [stage])
                    , sCols            = Set.empty
                    } )

criterium :: Location -> Float -> State StageRaceState ()
criterium start distance = roadStage start start distance

teamTimeTrial :: Location -> Location -> Float -> State StageRaceState ()
teamTimeTrial start finish distance = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  stageId <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix <- nextSplitStageSuffix
  let xs = raceStages currentState
  let stage = TeamTimeTrial start finish day stageId distance
  put (currentState { stageDay = nextDay, stageNumber = nextStageNumber, splitStageSuffix = nextSuffix, raceStages = (xs ++ [stage]) } )

teamTimeTrial' :: Location -> Float -> State StageRaceState ()
teamTimeTrial' start_finish distance = teamTimeTrial start_finish start_finish distance

individualTimeTrial :: Location -> Location -> Float -> State StageRaceState ()
individualTimeTrial start finish distance = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  stageId <- getStageId
  nextStageNumber <- nextStageNumber
  nextSuffix <- nextSplitStageSuffix
  let xs = raceStages currentState
  let stage = IndividualTimeTrial start finish day stageId distance
  put (currentState { stageDay = nextDay, stageNumber = nextStageNumber, splitStageSuffix = nextSuffix, raceStages = (xs ++ [stage]) } )

individualTimeTrial' :: Location -> Float -> State StageRaceState ()
individualTimeTrial' start_finish distance = individualTimeTrial start_finish start_finish distance

restDay :: Location -> State StageRaceState ()
restDay loc = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  let xs = raceStages currentState
  let stage = RestDay day loc
  put (currentState { stageDay = nextDay, raceStages = (xs ++ [stage]) } )

transferDay :: State StageRaceState ()
transferDay = do
  currentState <- get
  let day = stageDay currentState
  nextDay <- nextStageDay
  let xs = raceStages currentState
  let stage = TransferDay day
  put (currentState { stageDay = nextDay, raceStages = (xs ++ [stage]) } )

enableSplitStages :: State StageRaceState ()
enableSplitStages = do
  currentState <- get
  put (currentState { isSplitStage = True, splitStageSuffix = 'a' } )

disableSplitStages :: State StageRaceState ()
disableSplitStages = do
  currentState <- get
  let day = stageDay currentState
  let nextDay = addDays 1 day
  let current = stageNumber currentState
  let nextStageNumber = current + 1
  put (currentState { isSplitStage = False, stageDay = nextDay, stageNumber = nextStageNumber } )

hc :: String -> Int -> Float -> Float -> State StageRaceState ()
hc n h l km = col' n HC h l km

c1 :: String -> Int -> Float -> Float -> State StageRaceState ()
c1 n h l km = col' n C1 h l km

c2 :: String -> Int -> Float -> Float -> State StageRaceState ()
c2 n h l km = col' n C2 h l km

c3 :: String -> Int -> Float -> Float -> State StageRaceState ()
c3 n h l km = col' n C3 h l km

c4 :: String -> Int -> Float -> Float -> State StageRaceState ()
c4 n h l km = col' n C4 h l km

col' :: String -> ColCategory -> Int -> Float -> Float -> State StageRaceState ()
col' n c h l km
  | km < 0 = error "km must be greater than zero"
  | h < 0 = error "Height must be greater than zero"
  | l < 0 = error "Height must be greater than zero"
  | otherwise = col'' (Col n c h l) km

col'' :: Col -> Float-> State StageRaceState ()
col'' c km = do
  currentState <- get
  let col = IndexableCol km c
  let cols = sCols currentState
  put (currentState { sCols = Set.insert col $ cols })

build :: State StageRaceState StageRace
build = do
  currentState <- get
  let stageRace = sStageRace currentState
  edition <- build' stageRace
  return edition

build' :: StageRace -> State StageRaceState StageRace
build' (TourDeFrance _) = do
  currentState <- get
  let stages = raceStages currentState
  let edition = TourDeFrance stages
  return edition
build' (Giro _) = do
  currentState <- get
  let stages = raceStages currentState
  let edition = Giro stages
  return edition
build' (ParisNice _) = do
  currentState <- get
  let stages = raceStages currentState
  let edition = ParisNice stages
  return edition
build' (TirrenoAdriatico _) = do
  currentState <- get
  let stages = raceStages currentState
  let edition = TirrenoAdriatico stages
  return edition
build' (Dauphine _) = do
  currentState <- get
  let stages = raceStages currentState
  let edition = Dauphine stages
  return edition
