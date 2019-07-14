module ParcoursDB.StageRace where

import Data.Maybe
import Data.Time
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
  where (year,_,_) = toGregorian $ date $ fromJust (firstStage dauphine)

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
distance stageRace =
  let racingStages = filter isRacingStage $ stages stageRace
      distances = map ParcoursDB.Stage.distance racingStages
  in kilometres distances

findStage :: String -> StageRace -> Maybe Stage
findStage id stageRace =
    let xs = stages stageRace
    in foldr (\x acc -> if ParcoursDB.Stage.id x == Just id then Just x else acc) Nothing xs

hasStage :: String -> StageRace -> Bool
hasStage id stageRace =
    let xs = stages stageRace
    in foldr (\x acc -> if ParcoursDB.Stage.id x == Just id then True else acc) False xs

firstStage :: StageRace -> Maybe Stage
firstStage stageRace =
    if hasStage "P" stageRace
        then findStage "P" stageRace
        else if hasStage "1" stageRace
            then findStage "1" stageRace
            else findStage "1a" stageRace

lastStage :: StageRace -> Maybe Stage
lastStage stageRace =
    let xs = stages stageRace
        roadStages = filter isNonRestDayOrPrologue xs
        stageIDs = map ParcoursDB.Stage.id roadStages
        lst = fmap maximum $ sequence stageIDs
        lastStageID = fromJust lst
    in if lst == Nothing
        then Nothing
        else findStage lastStageID stageRace

depart :: StageRace -> Maybe Location
depart stageRace =
    let first = firstStage stageRace
    in if first == Nothing
        then Nothing
        else ParcoursDB.Stage.start $ fromJust first

arrive :: StageRace -> Maybe Location
arrive stageRace =
    let final = lastStage stageRace
    in if final == Nothing
        then Nothing
        else ParcoursDB.Stage.finish $ fromJust final

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

kilometres :: [Maybe Float] -> Float
kilometres [] = 0
kilometres (xs) = fromJust $ fmap sum $ sequence xs

restDays :: StageRace -> [Stage]
restDays stageRace = 
  let notRacingStage x = not (isRacingStage x) in filter notRacingStage $ stages stageRace

numberOfRestDays :: StageRace -> Int
numberOfRestDays stageRace = length $ restDays stageRace

route :: StageRace -> [String]
route stageRace = map(\s -> ParcoursDB.Stage.route s (ParcoursDB.StageRace.country stageRace)) (stages stageRace)

startDate :: StageRace -> (Integer,Int,Int)
startDate stageRace = toGregorian $ date $ fromJust (firstStage stageRace)
