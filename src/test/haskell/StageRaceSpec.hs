-- file StageRaceSpec.hs
module StageRaceSpec where

import Data.Maybe
import Data.Time
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
  let name  = "Criterium du Dauphine"
  let france    = Country "France"

  let valence      = Location "Valence" france
  let saintJust    = Location "Saint-Just-Saint-Rambert" france
  let montbrison   = Location "Montbrison" france
  let belleville   = Location "Belleville" france
  let pontDeVaux   = Location "Pont-de-Vaux" france
  let louhans      = Location "Louhans-Chateaurenaud" france
  let chazey       = Location "Chazey-sur-Ain" france
  let vercors      = Location "Lan-en-Vercors" france
  let grenoble     = Location "Grenoble" france
  let valmorel     = Location "Valmorel" france
  let frontenex    = Location "Frontenex" france
  let laRosiere    = Location "La Rosiere Espace San Bernardo" france
  let moutiers     = Location "Moutiers" france
  let saintGervais = Location "Saint-Gervais Mont Blanc" france

  let june3rd   = fromGregorianValid 2018 06 03
  let june4th   = fromGregorianValid 2018 06 04
  let june5th   = fromGregorianValid 2018 06 05
  let june6th   = fromGregorianValid 2018 06 06
  let june7th   = fromGregorianValid 2018 06 07
  let june8th   = fromGregorianValid 2018 06 08
  let june9th   = fromGregorianValid 2018 06 09
  let june10th  = fromGregorianValid 2018 06 10

  let prologueDate = fromJust june3rd
  let stage1Date   = fromJust june4th
  let stage2Date   = fromJust june5th
  let stage3Date   = fromJust june6th
  let stage4Date   = fromJust june7th
  let stage5Date   = fromJust june8th
  let stage6Date   = fromJust june9th
  let stage7Date   = fromJust june10th

  let prologue = Prologue      valence    valence       prologueDate 6.6
  let stage1   = Road          valence    saintJust     stage1Date "1" 179 []
  let stage2   = Road          montbrison belleville    stage2Date "2" 181 []
  let stage3   = TeamTimeTrial pontDeVaux louhans       stage3Date "3" 35
  let stage4   = Road          chazey     vercors       stage4Date "4" 181 []
  let stage5   = Road          grenoble   valmorel      stage5Date "5" 130 []
  let stage6   = Road          frontenex  laRosiere     stage6Date "6" 110 []
  let stage7   = Road          moutiers    saintGervais stage7Date "7" 136 []

  let dauphine = StageRace name france [prologue,stage1,stage2,stage3,stage4,stage5,stage6,stage7]

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
      ParcoursDB.StageRace.distance dauphine `shouldBe` Just 958.6

  describe "roadStages" $ do
    it "returns the number of the road stages" $
      roadStages dauphine `shouldBe` 6

  describe "teamTimeTrials" $ do
    it "returns the number of team time trials" $
      teamTimeTrials dauphine `shouldBe` 1

  describe "individualTimeTrials" $ do
    it "returns the number of individual time trials" $
      individualTimeTrials dauphine `shouldBe` 0

  describe "restDays" $ do
    it "returns the number of rest days" $
      restDays dauphine `shouldBe` 0

  describe "route" $ do
     it "returns the race route as a list of comma delimited strings" $
       ParcoursDB.StageRace.route dauphine `shouldBe` expectedRoute
