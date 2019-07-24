module ParcoursDB.State.NonConsecutiveStageRace where

import Control.Monad.State
import Data.List
import Data.Time
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage hiding(start,finish,distance)
import ParcoursDB.StageRace hiding(distance)
import Text.Printf

data NonConsecutiveStage = NonConsecutiveStage { month    :: Int
                                               , day      :: Int
                                               , start    :: Location
                                               , finish   :: Location
                                               , distance :: Float
                                               }

data NonConsecutiveStageRaceState = NonConsecutiveStageRaceState { sStageRace   :: StageRace
                                                                 , sYear        :: Integer
                                                                 , sStageNumber :: Int
                                                                 , sRaceStages  :: [Stage]
                                                                 }

init :: StageRace -> Integer -> NonConsecutiveStageRaceState
init giro@(Giro _) year        = init' giro year
init tdf@(TourDeFrance _) year = init' tdf year

init' stageRace year = NonConsecutiveStageRaceState { sStageRace   = stageRace
                                                    , sYear        = year
                                                    , sStageNumber = 1
                                                    , sRaceStages  = []
                                                    }

nonConsecutiveStages :: [NonConsecutiveStage] -> State NonConsecutiveStageRaceState ()
nonConsecutiveStages [x] = roadStage x
nonConsecutiveStages (x:xs) = do
  roadStage x
  nonConsecutiveStages xs

getStageId :: State NonConsecutiveStageRaceState String
getStageId = do
  currentState <- get
  let current = sStageNumber currentState
  let s = printf "%d" current
  return s
            
nextStageNumber :: State NonConsecutiveStageRaceState Int
nextStageNumber = do
  currentState <- get
  let current = sStageNumber currentState
  let next = current + 1
  return next

roadStage :: NonConsecutiveStage -> State NonConsecutiveStageRaceState ()
roadStage stage = do
  currentState    <- get
  stageId         <- getStageId
  nextStageNumber <- nextStageNumber
  let year        = sYear currentState
  let from        = start stage
  let to          = finish stage
  let yr          = sYear currentState
  let mon         = month stage
  let d           = day stage
  let stageDate   = fromGregorian yr mon d
  let xs          = sRaceStages currentState
  let roadStage   = Road stageDate (Left from) (Just to) stageId (distance stage) []
  put (currentState { sStageNumber = nextStageNumber
                    , sRaceStages  = (xs ++ [roadStage])
                    } )

build :: State NonConsecutiveStageRaceState StageRace
build = do
  currentState <- get
  let stageRace = sStageRace currentState
  edition <- build' stageRace
  return edition

build' :: StageRace -> State NonConsecutiveStageRaceState StageRace
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
