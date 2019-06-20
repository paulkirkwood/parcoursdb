module ParcoursDB.StageRace where

import Data.Maybe
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage

data StageRace = StageRace String Country [Stage]
    deriving (Show)

name :: StageRace -> String
name (StageRace n _ _) = n

country :: StageRace -> Country
country (StageRace _ c _) = c

stages :: StageRace -> [Stage]
stages (StageRace _ _ xs) = xs

distance (StageRace _ _ stages) =
  let racingStages = filter isRacingStage stages
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

roadStages (StageRace _ _ stages) = length(filter isRoadStage stages)
roadKms (StageRace _ _ stages) =
  let roadStages = filter isRoadStage stages
      distances = map ParcoursDB.Stage.distance roadStages
  in fmap sum $ sequence distances

teamTimeTrials (StageRace _ _ stages) = length(filter isTeamTimeTrial stages)
teamTimeTrialKms (StageRace _ _ stages) =
  let ttt = filter isRoadStage stages
      distances = map ParcoursDB.Stage.distance ttt
  in fmap sum $ sequence distances

individualTimeTrials (StageRace _ _ stages) = length(filter isIndividualTimeTrial stages)
individualTimeTrialKms (StageRace _ _ stages) =
  let itt = filter isRoadStage stages
      distances = map ParcoursDB.Stage.distance itt
  in fmap sum $ sequence distances

restDays (StageRace _ _ stages) =
    let notRacingStage x = not (isRacingStage x) in length(filter notRacingStage stages)

route :: StageRace -> [String]
route (StageRace _ c stages) = map(\s -> ParcoursDB.Stage.route s c) stages
