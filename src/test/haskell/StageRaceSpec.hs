-- file StageRaceSpec.hs
module StageRaceSpec where

import Data.Maybe
import Data.Time
import Countries.France hiding (laRosiere)
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
  let laRosiere = Location "La Rosiere Espace San Bernardo" France

  let prologue = Prologue      valence    valence       (fromGregorian 2018 6 3) 6.6
  let stage1   = Road          valence    saintJust     (fromGregorian 2018 6 4) "1" 179 []
  let stage2   = Road          montbrison belleville    (fromGregorian 2018 6 5) "2" 181 []
  let stage3   = TeamTimeTrial pontDeVaux louhans       (fromGregorian 2018 6 6) "3" 35
  let stage4   = Road          chazey     vercors       (fromGregorian 2018 6 7) "4" 181 []
  let stage5   = Road          grenoble   valmorel      (fromGregorian 2018 6 8) "5" 130 []
  let stage6   = Road          frontenex  laRosiere     (fromGregorian 2018 6 9) "6" 110 []
  let stage7   = Road          moutiers    saintGervais (fromGregorian 2018 6 10) "7" 136 []

  let dauphine = Dauphine [prologue,stage1,stage2,stage3,stage4,stage5,stage6,stage7]

  let expectedRoute = [ "P,3 June,Valence,6.6 km,Individual time trial",
                        "1,4 June,Valence to Saint-Just-Saint-Rambert,179.0 km,Road stage",
                        "2,5 June,Montbrison to Belleville,181.0 km,Road stage",
                        "3,6 June,Pont-de-Vaux to Louhans-Chateaurenaud,35.0 km,Team time trial",
                        "4,7 June,Chazey-sur-Ain to Lan-en-Vercors,181.0 km,Road stage",
                        "5,8 June,Grenoble to Valmorel,130.0 km,Road stage",
                        "6,9 June,Frontenex to La Rosiere Espace San Bernardo,110.0 km,Road stage",
                        "7,10 June,Moutiers to Saint-Gervais Mont Blanc,136.0 km,Road stage" ]

  describe "findStage" $ do
    it "returns the Prologue if it exists" $
      firstStage dauphine `shouldBe` Just prologue

  describe "lastStage" $ do
    it "returns the last stage of the race" $
      lastStage dauphine `shouldBe` Just stage7

  describe "depart" $ do
    it "returns the finish of the final stage" $
      depart dauphine `shouldBe` Just valence

  describe "arrive" $ do
    it "returns the finish of the final stage" $
      arrive dauphine `shouldBe` Just saintGervais

  describe "distance" $ do
    it "returns the sum of the stages" $
      ParcoursDB.StageRace.distance dauphine `shouldBe` 958.6

  describe "road stages" $ do
    context "Number of road stages and total road stage kilometres" $ do
      it "returns the number of the road stages" $
        numberOfRoadStages dauphine `shouldBe` 6
      it "Total road stage kilometres" $ do
        roadStageKms dauphine `shouldBe` 917.0

  describe "teamTimeTrials" $ do
    context "Number of TTTs and total TTTs kilometres" $ do
      it "returns the number of team time trials" $
        numberOfTeamTimeTrials dauphine `shouldBe` 1
      it "Total TTT kilometres" $ do
        teamTimeTrialKms dauphine `shouldBe` 35.0

  describe "individualTimeTrials" $ do
    context "Number of ITTs and total ITT kilometres" $ do
      it "returns the number of individual time trials" $
        numberOfIndividualTimeTrials dauphine `shouldBe` 0
      it "Total ITT kilometres" $ do
        individualTimeTrialKms dauphine `shouldBe` 0

  describe "restDays" $ do
    it "returns the number of rest days" $
      numberOfRestDays dauphine `shouldBe` 0

  describe "route" $ do
     it "returns the race route as a list of comma delimited strings" $
       ParcoursDB.StageRace.route dauphine `shouldBe` expectedRoute
