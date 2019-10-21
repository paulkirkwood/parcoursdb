module ParcoursDB.StageRace where

import Control.Monad
import Data.List
import Data.Maybe
import qualified Data.Set as Set
import Data.Time
import ParcoursDB.Col hiding(length)
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage
import Text.Printf (printf)
import Text.Regex.Posix

data StageRace = TourDeFrance     [Stage]
               | Giro             [Stage]
               | Vuelta           [Stage]
               | ParisNice        [Stage]
               | TirrenoAdriatico [Stage]
               | Dauphine         [Stage]
  deriving (Show)

name :: StageRace -> String
name (TourDeFrance _)     = "Le Tour de France"
name (Giro _)             = "Giro d'Italia"
name (Vuelta _)           = "Vuelta a España"
name (ParisNice _)        = "Paris-Nice"
name (TirrenoAdriatico _) = "Tirreno Adriatico"
name dauphine@(Dauphine _)
  | year < 2010 = "Critérium du Dauphiné Libéré"
  | otherwise   = "Critérium du Dauphiné"
  where (year,_,_) = startDate dauphine

country :: StageRace -> Country
country (Giro _)             = Italy
country (TirrenoAdriatico _) = Italy
country (Vuelta _)           = Spain
country _                    = France

stages :: StageRace -> [Stage]
stages (TourDeFrance xs)     = xs
stages (Giro xs)             = xs
stages (Vuelta xs)           = xs
stages (ParisNice xs)        = xs
stages (TirrenoAdriatico xs) = xs
stages (Dauphine xs)         = xs

distance :: StageRace -> Float
distance stageRace = (prologueKms stageRace) +
                     (roadStageKms stageRace) +
                     (teamTimeTrialKms stageRace) +
                     (individualTimeTrialKms stageRace)

findStage :: String -> StageRace -> Maybe Stage
findStage id stageRace =
    let xs = stages stageRace
    in foldr (\x acc -> if ParcoursDB.Stage.id x == id then Just x else acc) Nothing xs

hasStage :: String -> StageRace -> Bool
hasStage id stageRace =
    let xs = stages stageRace
    in foldr (\x acc -> if ParcoursDB.Stage.id x == id then True else acc) False xs

firstStage :: StageRace -> Stage
firstStage stageRace = firstStage' $ stages stageRace

firstStage' :: [Stage] -> Stage
firstStage' [] = error "No stages"
firstStage' (x:_) = x

lastStage :: StageRace -> Stage
lastStage stageRace = lastStage' $ stages stageRace

lastStage' :: [Stage] -> Stage
lastStage' [] = error "No stages"
lastStage' [x] = x
lastStage' (x:xs) = lastStage' xs 

depart :: StageRace -> Either Location Col
depart stageRace = depart' $ stages stageRace

depart' :: [Stage] -> Either Location Col
depart' [] = error "Unable to determine start"
depart' (x:_) = ParcoursDB.Stage.start x
  
arrivé :: StageRace -> Either Location Col
arrivé stageRace = arrivé' $ stages stageRace

arrivé' :: [Stage] -> Either Location Col
arrivé' [] = error "Unable to determine finish"
arrivé' (xs) = ParcoursDB.Stage.finish $ last xs

prologueKms :: StageRace -> Float
prologueKms stageRace = prologueKms' (firstStage stageRace)

prologueKms' :: Stage -> Float
prologueKms' p@(Prologue _ _ _ d)                    = d
prologueKms' p@(PrologueTeamTimeTrial _ _ _ d)       = d
prologueKms' p@(PrologueTwoManTeamTimeTrial _ _ _ d) = d
prologueKms' _                                       = 0

roadStages :: StageRace -> [Stage]
roadStages stageRace = filter isRoadStage $ stages stageRace

numberOfRoadStages :: StageRace -> Int
numberOfRoadStages stageRace = length $ roadStages stageRace

roadStageKms :: StageRace -> Float
roadStageKms stageRace = kilometres $ map ParcoursDB.Stage.distance (roadStages stageRace)

teamTimeTrials :: StageRace -> [Stage]
teamTimeTrials stageRace = filter isTeamTimeTrial $ stages stageRace

numberOfTeamTimeTrials :: StageRace -> Int
numberOfTeamTimeTrials stageRace = length $ teamTimeTrials stageRace

teamTimeTrialKms :: StageRace -> Float
teamTimeTrialKms stageRace = kilometres $ map ParcoursDB.Stage.distance (teamTimeTrials stageRace)

individualTimeTrials :: StageRace -> [Stage]
individualTimeTrials stageRace = filter isIndividualTimeTrial $ stages stageRace

numberOfIndividualTimeTrials :: StageRace -> Int
numberOfIndividualTimeTrials stageRace = length $ individualTimeTrials stageRace

individualTimeTrialKms :: StageRace -> Float
individualTimeTrialKms stageRace = kilometres $ map ParcoursDB.Stage.distance (individualTimeTrials stageRace)

kilometres :: [Float] -> Float
kilometres [] = 0
kilometres (xs) = sum xs

restDays :: StageRace -> [Stage]
restDays stageRace = 
  let notRacingStage x = not (isRacingStage x) in filter notRacingStage $ stages stageRace

numberOfRestDays :: StageRace -> Int
numberOfRestDays stageRace = length $ restDays stageRace

splitStages :: StageRace -> [Stage]
splitStages stageRace = filter isSplitStage $ stages stageRace

numberOfSplitStages :: StageRace -> Int
numberOfSplitStages stageRace = length $ splitStages stageRace

isSplitStage :: Stage -> Bool
isSplitStage (Road _ _ _ i _ _)                  = isSplitStage' i
isSplitStage (TeamTimeTrial _ _ _ i _ _)         = isSplitStage' i
isSplitStage (ThreeManTeamTimeTrial _ _ _ i _ _) = isSplitStage' i
isSplitStage (IndividualTimeTrial _ _ _ i _ _)   = isSplitStage' i
isSplitStage _                                   = False

isSplitStage' :: String -> Bool
isSplitStage' id = id =~ "a$" :: Bool

route :: StageRace -> [String]
route stageRace = map(\s -> ParcoursDB.Stage.route s (ParcoursDB.StageRace.country stageRace)) (stages stageRace)

startDate :: StageRace -> (Integer,Int,Int)
startDate stageRace = startDate' $ stages stageRace

startDate' :: [Stage] -> (Integer,Int,Int)
startDate' [] = error "No stages"
startDate' (x:_) = toGregorian $ date x

summitFinishes :: StageRace -> [Stage]
summitFinishes stageRace = filter isSummitFinish $ stages stageRace

numberOfSummitFinishes :: StageRace -> Int
numberOfSummitFinishes stageRace = length $ summitFinishes stageRace

longestStage :: StageRace -> Stage
longestStage stageRace = longestStage' $ sortStagesByDistance $ filter isRacingStage $ stages stageRace

longestStage' :: [Stage] -> Stage
longestStage' [] = error "No cols"
longestStage' [x] = x
longestStage' (x:xs) = longestStage' xs 

sortStagesByDistance :: [Stage] -> [Stage]
sortStagesByDistance [] = []
sortStagesByDistance (x:xs) =
  let smallerOrEqual = [a | a <- xs, (ParcoursDB.Stage.distance a) <= (ParcoursDB.Stage.distance x)];
              larger = [a | a <- xs, (ParcoursDB.Stage.distance a) > (ParcoursDB.Stage.distance x)]
  in sortStagesByDistance smallerOrEqual ++ [x] ++ sortStagesByDistance larger

summary :: StageRace -> String
summary stageRace =
  let totalRoadStages = numberOfRoadStages stageRace
      totalTTTs       = numberOfTeamTimeTrials stageRace
      totalITTs       = numberOfIndividualTimeTrials stageRace
      totalSplitStages = numberOfSplitStages stageRace
      totalStages     = totalRoadStages + totalTTTs + totalITTs - totalSplitStages
      hasPrologue     = (prologueKms stageRace) > 0
  in summary' totalStages totalSplitStages hasPrologue

summary' :: Int -> Int -> Bool -> String
summary' totalStages totalSplitStages hasPrologue
  | hasPrologue == True && totalSplitStages > 1 = printf "%d stages + Prologue including %d split stages" totalStages totalSplitStages
  | hasPrologue == True && totalSplitStages == 1 = printf "%d stages + Prologue including 1 split stage" totalStages
  | hasPrologue == True = printf "%d stages + Prologue" totalStages
  | totalSplitStages > 1 = printf "%d stages including %d split stages" totalStages totalSplitStages
  | totalSplitStages == 1 = printf "%d stages including 1 split stage" totalStages
  | otherwise = printf "%d stages" totalStages

stageComposition :: StageRace -> String
stageComposition stageRace =
  let road = numberOfRoadStages stageRace
      ttt  = numberOfTeamTimeTrials stageRace
      itt  = numberOfIndividualTimeTrials stageRace
      rest = numberOfRestDays stageRace
      composition = join [ if road > 0 then [(roadStageComposition stageRace)] else []
                         , if ttt > 0 || itt > 0 then [(timeTrialComposition stageRace)] else []
                         , if rest > 0 then [(restDayComposition stageRace)] else []
                         ]
  in intercalate ", " composition

roadStageComposition :: StageRace -> String
roadStageComposition stageRace
  | road == 0 = error "No road stages"
  | road == 1 = "1 road stage"
  | otherwise = printf "%d road stages" road
  where
    road = numberOfRoadStages stageRace

timeTrialComposition :: StageRace -> String
timeTrialComposition stageRace
  | ttt == 0 && itt == 0 = error "No time trials"
  | ttt > 0 && itt == 0 = teamTimeTrialComposition stageRace
  | ttt == 0 && itt > 0 = individualTimeTrialComposition stageRace
  | ttt > 0 && itt > 0  =
    printf "%d Time Trials (%s; %s)"
      (ttt + itt) (teamTimeTrialComposition stageRace) (individualTimeTrialComposition stageRace)
  where
     ttt = numberOfTeamTimeTrials stageRace
     itt = numberOfIndividualTimeTrials stageRace

teamTimeTrialComposition :: StageRace -> String
teamTimeTrialComposition stageRace
  | ttt == 0  = error "No team time trials"
  | ttt == 1  = "1 Team Time Trial"
  | otherwise = printf "%d Team Time Trials" ttt
  where
     ttt = numberOfTeamTimeTrials stageRace

individualTimeTrialComposition :: StageRace -> String
individualTimeTrialComposition stageRace
  | itt == 0  = error "No individual time trials"
  | itt == 1  = "1 Individual Time Trial"
  | otherwise = printf "%d Individual Time Trials" itt
  where
     itt = numberOfIndividualTimeTrials stageRace

restDayComposition :: StageRace -> String
restDayComposition stageRace
  | rest == 1 = "1 rest day"
  | otherwise = printf "%d rest days" rest
  where
    rest = numberOfRestDays stageRace

highPoint :: StageRace -> Col
highPoint stageRace =
  let racingStages  = filter isRacingStage $ stages stageRace
      indexableCols = map(\s -> ParcoursDB.Stage.cols s) racingStages
      cols          = map ParcoursDB.Col.col $ mconcat indexableCols
  in highPoint' $ sortColsByHeight cols

sortColsByHeight :: [Col] -> [Col]
sortColsByHeight [] = []
sortColsByHeight (x:xs) =
  let shorterOrEqual = [a | a <- xs, (ParcoursDB.Col.height a) <= (ParcoursDB.Col.height x)];
              taller = [a | a <- xs, (ParcoursDB.Col.height a) > (ParcoursDB.Col.height x)]
  in sortColsByHeight shorterOrEqual ++ [x] ++ sortColsByHeight taller

highPoint' :: [Col] -> Col
highPoint' []     = error "No cols"
highPoint' [x]    = x
highPoint' (x:xs) = highPoint' xs
