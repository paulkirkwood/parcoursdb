-- file StageRaceStateSpec.hs
module StageRaceStateSpec where

import Control.Monad.State
import Data.Maybe
import Data.Time
import StageRaces.Dauphine  (dauphineEditions)
import StageRaces.Giro      (giroEditions)
import StageRaces.LeTour    (tourDeFranceEditions)
import StageRaces.ParisNice (parisNiceEditions)
import StageRaces.Tirreno   (tirrenoAdriaticoEditions)
import StageRaces.Vuelta    (vueltaEditions)
import ParcoursDB.Country
import ParcoursDB.Stage
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace
import System.IO
import Test.Hspec
import Text.Printf

editions = dauphineEditions ++
           giroEditions ++
           parisNiceEditions ++
           tirrenoAdriaticoEditions ++
           tourDeFranceEditions ++
           vueltaEditions

main :: IO ()
main = hspec $ do

  describe "stage cols" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.StageRace.name edition
      let (year,_,_) = startDate edition
      let ctx = printf "%s %d" raceName year
      let stagesContainingCols = filter(\s -> length(cols s) > 0) $ stagesWithCols edition
      context ctx $ do
        forM_ stagesContainingCols $ \(stage) -> do
          let stageId = ParcoursDB.Stage.id stage
          let fileName =printf "../resources/%s/%d/%s/cols.csv" raceName year stageId
          let description = printf "%s stage cols as expected" stageId
          it description $ do
            contents <- readFile fileName
            let expectedProfile = lines contents
            ParcoursDB.Stage.profile stage `shouldBe` expectedProfile
