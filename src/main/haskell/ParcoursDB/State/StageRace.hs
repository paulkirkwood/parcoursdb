module ParcoursDB.State.StageRace where

import Control.Monad.State
import Data.Time
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage
import ParcoursDB.StageRace
import Text.Printf

data StageRaceState = StageRaceState { raceName         :: String
                                     , raceCountry      :: Country
                                     , stageDay         :: Day
                                     , stageNumber      :: Int
                                     , splitStageSuffix :: Char
                                     , isSplitStage     :: Bool
                                     , isMorningStage   :: Bool
                                     , raceStages       :: [Stage]
                                     }

init :: String -> Country -> Day -> StageRaceState
init n c d = StageRaceState
  { raceName         = n
  , raceCountry      = c
  , stageDay         = d
  , stageNumber      = 1
  , splitStageSuffix = 'a'
  , isSplitStage     = False
  , isMorningStage   = False
  , raceStages       = []
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
  let stage = Road start finish day stageId distance []
  put (currentState { stageDay = nextDay, stageNumber = nextStageNumber, splitStageSuffix = nextSuffix, raceStages = (xs ++ [stage]) } )

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

--hc :: String -> Float -> Float -> Float -> State StageRaceState ()
--hc name height length km =
--  let col = HC name height length
--  in addCol col km

--addCol :: Col -> Float -> State StageRaceState ()
--addCol col km = do
--  currentState <- get
--  let stages = raceStages currentState
--  let stage = tail stages

build :: State StageRaceState StageRace
build = do
  currentState <- get
  let n    = raceName currentState
  let c    = raceCountry currentState
  let xs   = raceStages currentState
  let race = StageRace n c xs
  return race