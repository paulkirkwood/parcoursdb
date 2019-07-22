module ParcoursDB.StageRace where

import Data.Maybe
import Data.Time
import ParcoursDB.Col hiding(length)
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage

data StageRace = TourDeFrance     [Stage]
               | Giro             [Stage]
               | ParisNice        [Stage]
               | TirrenoAdriatico [Stage]
               | Dauphine         [Stage]
  deriving (Show)

name :: StageRace -> String
name (TourDeFrance _)     = "Le Tour de France"
name (Giro _)             = "Giro d'Italia"
name (ParisNice _)        = "Paris-Nice"
name (TirrenoAdriatico _) = "Tirreno Adriatico"
name dauphine@(Dauphine _)
  | year < 2010 = "Critérium du Dauphiné Libéré"
  | otherwise   = "Critérium du Dauphiné"
  where (year,_,_) = startDate dauphine

country :: StageRace -> Country
country (Giro _)             = Italy
country (TirrenoAdriatico _) = Italy
country _                    = France

stages :: StageRace -> [Stage]
stages (TourDeFrance xs)     = xs
stages (Giro xs)             = xs
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
prologueKms' p@(Prologue _ _ _ d) = d
prologueKms' _                    = 0

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

route :: StageRace -> [String]
route stageRace = map(\s -> ParcoursDB.Stage.route s (ParcoursDB.StageRace.country stageRace)) (stages stageRace)

startDate :: StageRace -> (Integer,Int,Int)
startDate stageRace = startDate' $ stages stageRace

startDate' :: [Stage] -> (Integer,Int,Int)
startDate' [] = error "No stages"
startDate' (x:_) = toGregorian $ date x
