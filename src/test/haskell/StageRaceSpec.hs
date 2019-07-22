-- file StageRaceSpec.hs
module StageRaceSpec where

import Countries.France
import Data.Maybe
import Data.Time
import StageRaces.Dauphine (dauphine2018)
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage
import ParcoursDB.StageRace
import System.IO
import Test.Hspec

main :: IO ()
main = hspec $ do

  --
  -- Criterium du Dauphine 2018
  --
  let xs       = stages dauphine2018
  let prologue = xs !! 0
  let stage7   = xs !! 7

  describe "findStage" $ do
    it "returns the Prologue if it exists" $
      firstStage dauphine2018 `shouldBe` prologue

  describe "lastStage" $ do
    it "returns the last stage of the race" $
      lastStage dauphine2018 `shouldBe` stage7

  describe "depart" $ do
    it "returns the start of the first stage" $
      depart dauphine2018 `shouldBe` Left valence

  describe "arrivé" $ do
    it "returns the finish of the final stage" $
      arrivé dauphine2018 `shouldBe` Left saintGervaisMontBlanc

  describe "distance" $ do
    it "returns the sum of the stages" $
      ParcoursDB.StageRace.distance dauphine2018 `shouldBe` 958.6

  describe "road stages" $ do
    context "Number of road stages and total road stage kilometres" $ do
      it "returns the number of the road stages" $
        numberOfRoadStages dauphine2018 `shouldBe` 6
      it "Total road stage kilometres" $ do
        roadStageKms dauphine2018 `shouldBe` 917.0

  describe "teamTimeTrials" $ do
    context "Number of TTTs and total TTTs kilometres" $ do
      it "returns the number of team time trials" $
        numberOfTeamTimeTrials dauphine2018 `shouldBe` 1
      it "Total TTT kilometres" $ do
        teamTimeTrialKms dauphine2018 `shouldBe` 35.0

  describe "individualTimeTrials" $ do
    context "Number of ITTs and total ITT kilometres" $ do
      it "returns the number of individual time trials" $
        numberOfIndividualTimeTrials dauphine2018 `shouldBe` 0
      it "Total ITT kilometres" $ do
        individualTimeTrialKms dauphine2018 `shouldBe` 0

  describe "restDays" $ do
    it "returns the number of rest days" $
      numberOfRestDays dauphine2018 `shouldBe` 0
