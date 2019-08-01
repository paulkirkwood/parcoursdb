-- file StageSpec.hs
module StageSpec where

import Countries.France
import Countries.UnitedKingdom
import Data.Maybe
import Data.Time
import Mountains.Alps
import Mountains.MassifCentral
import ParcoursDB.Col
import ParcoursDB.Location
import ParcoursDB.Stage
import Test.Hspec

main :: IO ()
main = hspec $ do

  let july1st   = fromGregorian 2018 07 01

  -- 1991 Tdf Prologue
  let prologue  = Prologue (fromGregorian 1991 07 06) lyon lyon 5.4

  -- 1994 Tdf "Le Tour en Angleterre"
  let roadStage = Road (fromGregorian 1994 07 05) (Left portsmouth) (Just portsmouth) "4" 187 []

  -- 1979 Tdf Summit start and finish stage
  let summitStartAndFinishRoadStage = Road (fromGregorian 1979 07 16) (Right alpeD'Huez) Nothing "18" 119 [ (IndexableCol 119 alpeD'Huez HC) ]

  -- 1989 TdF summit finish mountain stage
  let summitFinishRoadStage = Road (fromGregorian 1989 07 19) (Left briancon) Nothing "17" 165 [ (IndexableCol 165 alpeD'Huez HC) ]

  -- 1986 Tdf Team Time Trial
  let ttt = TeamTimeTrial (fromGregorian 1986 07 05) meudon saintQuentinEnYvelines "2" 56 []

  -- 1989 Tdf final Individual time time trial
  let itt = IndividualTimeTrial (fromGregorian 1989 07 23) versailles (Just paris) "21" 24.5 []

  -- 1987 TdF mountain time trial
  let mtt = IndividualTimeTrial (fromGregorian 1987 07 19) carpentras Nothing "18" 36.5 [ (IndexableCol 36.5 montVentoux HC) ]

  describe "Prologue" $ do
    context "Test the Prologue attributes" $ do
      it "starts in Lyon" $
        start prologue `shouldBe` Left(lyon)
      it "finishes in Lyon" $
        finish prologue `shouldBe` Left(lyon)
      it "has an identifier of 'P'" $
        ParcoursDB.Stage.id prologue `shouldBe` "P"
      it "has a distance of 5.4 km" $
        distance prologue `shouldBe` 5.4
      it "is a racing stage" $
        isRacingStage prologue `shouldBe` True
      it "is not a road stage" $
        isRoadStage prologue `shouldBe` False
      it "is not a Team time trial" $ do
        isTeamTimeTrial prologue `shouldBe` False
      it "is not an Individual time trial" $ do
        isIndividualTimeTrial prologue `shouldBe` False

  describe "Non-summit Road stage" $ do
    context "Test the attributes of a road stage with a non-summit finish" $ do
      it "starts in Portsmouth" $ do
        start roadStage `shouldBe` Left(portsmouth)
      it "finishes in Portsmouth" $ do
        finish roadStage `shouldBe` Left(portsmouth)
      it "has an identifier of '4'" $
        ParcoursDB.Stage.id roadStage `shouldBe` "4"
      it "has a distance of 187.0 km" $
        distance roadStage `shouldBe` 187
      it "is a racing stage" $
        isRacingStage roadStage `shouldBe` True
      it "is a road stage" $
        isRoadStage roadStage `shouldBe` True
      it "is not a Team time trial" $ do
        isTeamTimeTrial roadStage `shouldBe` False
      it "is not an Individual time trial" $ do
        isIndividualTimeTrial roadStage `shouldBe` False

  describe "Road stage with a summit finish" $ do
    context "Test the attributes of a road stage with a summit finish" $ do
      it "starts in Briancon" $ do
        start summitFinishRoadStage `shouldBe` Left(briancon)
      it "finishes at Alpe d'Huez" $ do
        finish summitFinishRoadStage `shouldBe` Right(alpeD'Huez)
      it "has an identifier of '17'" $
        ParcoursDB.Stage.id summitFinishRoadStage `shouldBe` "17"
      it "has a distance of 165.0 km" $
        distance summitFinishRoadStage `shouldBe` 165
      it "is a racing stage" $
        isRacingStage summitFinishRoadStage `shouldBe` True
      it "is a road stage" $
        isRoadStage summitFinishRoadStage `shouldBe` True
      it "is not a Team time trial" $ do
        isTeamTimeTrial summitFinishRoadStage `shouldBe` False
      it "is not an Individual time trial" $ do
        isIndividualTimeTrial summitFinishRoadStage `shouldBe` False

  describe "Summit start/finish road stage" $ do
    context "Test the attributes of a road stage with a summit start and finish" $ do
      it "starts at Alpe d'Huez" $ do
        start summitStartAndFinishRoadStage `shouldBe` Right(alpeD'Huez)
      it "finishes at Alpe d'Huez" $ do
        finish summitStartAndFinishRoadStage `shouldBe` Right(alpeD'Huez)

  describe "Team time trial" $ do
    context "Test the attributes of a team time trial" $ do
      it "starts in Meudon" $
        start ttt `shouldBe` Left(meudon)
      it "finishes in Saint-Quentin-en-Yvelines" $
        finish ttt `shouldBe` Left(saintQuentinEnYvelines)
      it "is stage '2'" $
        ParcoursDB.Stage.id ttt `shouldBe` "2"
      it "has a distance of 56.0 km" $
        distance ttt `shouldBe` 56
      it "is a racing stage" $
        isRacingStage ttt `shouldBe` True
      it "is not a road stage" $
        isRoadStage ttt `shouldBe` False
      it "is a Team time trial" $ do
        isTeamTimeTrial ttt `shouldBe` True
      it "is not an Individual time trial" $ do
        isIndividualTimeTrial ttt `shouldBe` False

  describe "Individual time trial" $ do
    context "Test the attributes of a non-mountain time trial" $ do
      it "starts in Versailles" $ do
        start itt `shouldBe` Left(versailles)
      it "finishes in Paris" $ do
        finish itt `shouldBe` Left(paris)
      it "is stage '21'" $
        ParcoursDB.Stage.id itt `shouldBe` "21"
      it "has a distance of 24.5 km" $
        distance itt `shouldBe` 24.5
      it "is a racing stage" $
        isRacingStage itt `shouldBe` True
      it "is not a road stage" $
        isRoadStage itt `shouldBe` False
      it "is not a Team time trial" $ do
        isTeamTimeTrial itt `shouldBe` False
      it "is an Individual time trial" $ do
        isIndividualTimeTrial itt `shouldBe` True

  describe "Mountain time trial" $ do
    context "Test the attributes of a mountain time trial" $ do
      it "starts in Carpentras" $ do
        start mtt `shouldBe` Left(carpentras)
      it "finishes at the top of Mont Ventoux" $ do
        finish mtt `shouldBe` Right(montVentoux)
      it "is stage '18'" $
        ParcoursDB.Stage.id mtt `shouldBe` "18"
      it "has a distance of 36.5 km" $ 
        distance mtt `shouldBe` 36.5
      it "is a racing stage" $
        isRacingStage mtt `shouldBe` True
      it "is not a road stage" $
        isRoadStage mtt `shouldBe` False
      it "is not a Team time trial" $ do
        isTeamTimeTrial mtt `shouldBe` False
      it "is an Individual time trial" $ do
        isIndividualTimeTrial mtt `shouldBe` True
