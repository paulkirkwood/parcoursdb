-- file PrologueSpec.hs
module PrologueSpec where

import Data.Maybe
import Data.Time
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Stage
import Test.Hspec

main :: IO ()
main = hspec $ do

  let france = Country "France"
  let paris  = Location "Paris" france

  let july1st   = fromGregorianValid 2018 07 01
  let stageDate = fromJust july1st

  let prologue  = Prologue paris paris stageDate 8.5
  let roadStage = Road paris paris stageDate "1" 195 []
  let ttt       = TeamTimeTrial paris paris stageDate "1" 55.5
  let itt       = IndividualTimeTrial paris paris stageDate "1" 35.8

  describe "start" $ do
    context "test 'start' against the different stage types" $ do
      it "returns the start location of the prologue" $
        start prologue `shouldBe` Just paris
      it "returns the start location of the road stage" $
        start roadStage `shouldBe` Just paris
      it "returns the start location of the team time trial" $
        start ttt `shouldBe` Just paris
      it "returns the start location of the individual time trial" $
        start itt `shouldBe` Just paris

  describe "finish" $ do
    context "test 'finish' against the different stage types" $ do
      it "returns the finishing location of the stage" $
        finish prologue `shouldBe` Just paris
      it "returns the finishing location of road stage" $
        finish roadStage `shouldBe` Just paris
      it "returns the finishing location of team time trial" $
        finish ttt `shouldBe` Just paris
      it "returns the finishing location of individual time trial" $
        finish itt `shouldBe` Just paris

  describe "date" $ do
    context "test 'date' against the different stage types" $ do
      it "returns the date of the prologue" $
        date prologue `shouldBe` stageDate
      it "returns the date of the road stage" $
        date roadStage `shouldBe` stageDate
      it "returns the date of the team time trial" $
        date ttt `shouldBe` stageDate
      it "returns the date of the individual time trial" $
        date itt `shouldBe` stageDate

  describe "id" $ do
    context "test 'id' against the different stage types" $ do
      it "returns the Prologue stage identifier" $
        ParcoursDB.Stage.id prologue `shouldBe` Just "P"
      it "returns the road stage identifier" $
        ParcoursDB.Stage.id roadStage `shouldBe` Just "1"
      it "returns the team time trial stage identifier" $
        ParcoursDB.Stage.id ttt `shouldBe` Just "1"
      it "returns the individual time trial stage identifier" $
        ParcoursDB.Stage.id itt `shouldBe` Just "1"

  describe "distance" $ do
    context "test 'distance' against the different stage types" $ do
      it "returns the distance of the prologue" $
        distance prologue `shouldBe` Just 8.5
      it "returns the distance of the road stage" $
        distance roadStage `shouldBe` Just 195
      it "returns the distance of the team time trial" $
        distance ttt `shouldBe` Just 55.5
      it "returns the distance of the individual time trial" $
        distance itt `shouldBe` Just 35.8

  describe "isRacingStage" $ do
    context "test 'isRacingStage' against the different stage types" $ do
      it "returns 'true' for a Prologue" $
        isRacingStage prologue `shouldBe` True
      it "returns 'true' for a road stage" $
        isRacingStage roadStage `shouldBe` True
      it "returns 'true' for a team time trial" $
        isRacingStage ttt `shouldBe` True
      it "returns 'true' for a individual time trial" $
        isRacingStage itt `shouldBe` True

  describe "isRoadStage" $ do
    context "test 'isRoadStage' against the different stage types" $ do
      it "returns 'false' for a Prologue" $
        isRoadStage prologue `shouldBe` False
      it "returns 'true' for a road stage" $
        isRoadStage roadStage `shouldBe` True
      it "returns 'false' for a team time trial" $
        isRoadStage ttt `shouldBe` False
      it "returns 'false' for a individual time trial" $
        isRoadStage itt `shouldBe` False

  describe "isTeamTimeTrial" $ do
    context "test 'isTeamTimeTrial' against the different stage types" $ do
      it "returns 'false' for a Prologue" $
        isTeamTimeTrial prologue `shouldBe` False
      it "returns 'false' for a road stage" $
        isTeamTimeTrial roadStage `shouldBe` False
      it "returns 'true' for a team time trial" $
        isTeamTimeTrial ttt `shouldBe` True
      it "returns 'false' for a individual time trial" $
        isTeamTimeTrial itt `shouldBe` False

  describe "isIndividualTimeTrial" $ do
    context "test 'isIndividualTimeTrial' against the different stage types" $ do
      it "returns 'false' for a Prologue" $
        isIndividualTimeTrial prologue `shouldBe` False
      it "returns 'false' for a road stage" $
        isIndividualTimeTrial roadStage `shouldBe` False
      it "returns 'false' for a team time trial" $
        isIndividualTimeTrial ttt `shouldBe` False
      it "returns 'true' for a individual time trial" $
        isIndividualTimeTrial itt `shouldBe` True
