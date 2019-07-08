module ParcoursDB.StageRace where

import Data.Maybe
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage

data StageRace = TourDeFrance [Stage]
               | Giro [Stage]
               | ParisNice [Stage]
               | TirrenoAdriatico [Stage]
  deriving (Show)

name :: StageRace -> String
name (TourDeFrance _)     = "Le Tour de France"
name (Giro _)             = "Giro d'Italia"
name (ParisNice _)        = "Paris-Nice"
name (TirrenoAdriatico _) = "Tirreno Adriatico"

country :: StageRace -> Country
country (Giro _)             = Italy
country (TirrenoAdriatico _) = Italy
country _                    = France

stages :: StageRace -> [Stage]
stages (TourDeFrance xs) = xs
stages (Giro xs) = xs
stages (ParisNice xs) = xs
stages (TirrenoAdriatico xs) = xs

distance :: StageRace -> Maybe Float
distance stageRace =
  let racingStages = filter isRacingStage $ stages stageRace
      distances = map ParcoursDB.Stage.distance racingStages
  in fmap sum $ sequence distances

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

roadStages :: StageRace -> Int
roadStages stageRace = length(filter isRoadStage $ stages stageRace)

roadKms :: StageRace -> Maybe Float
roadKms stageRace =
  let roadStages = filter isRoadStage $ stages stageRace
      distances = map ParcoursDB.Stage.distance roadStages
  in fmap sum $ sequence distances

teamTimeTrials :: StageRace -> Int
teamTimeTrials stageRace = length(filter isTeamTimeTrial $ stages stageRace)

teamTimeTrialKms :: StageRace -> Maybe Float
teamTimeTrialKms stageRace =
  let ttt = filter isRoadStage $ stages stageRace
      distances = map ParcoursDB.Stage.distance ttt
  in fmap sum $ sequence distances

individualTimeTrials :: StageRace -> Int
individualTimeTrials stageRace = length(filter isIndividualTimeTrial $ stages stageRace)

individualTimeTrialKms :: StageRace -> Maybe Float
individualTimeTrialKms stageRace =
  let itt = filter isRoadStage $ stages stageRace
      distances = map ParcoursDB.Stage.distance itt
  in fmap sum $ sequence distances

restDays :: StageRace -> Int
restDays stageRace =
    let notRacingStage x = not (isRacingStage x) in length(filter notRacingStage $ stages stageRace)

route :: StageRace -> [String]
route stageRace = map(\s -> ParcoursDB.Stage.route s (ParcoursDB.StageRace.country stageRace)) (stages stageRace)
