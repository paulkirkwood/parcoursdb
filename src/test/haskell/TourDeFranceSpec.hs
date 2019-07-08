-- file TourDeFranceSpec.hs
module TourDeFranceSpec where

import Control.Monad.State
import Data.Maybe
import Data.Time
import StageRaces.LeTour
import ParcoursDB.Country
import ParcoursDB.Stage
import ParcoursDB.StageRace
import System.IO
import Test.Hspec
import Text.Printf

editions = [ tdf1970
           , tdf1971
           , tdf2018
           ]

main :: IO ()
main = hspec $ do

  describe "Tour de France routes" $ do
    forM_ editions $ \(edition) -> do
      let raceName = ParcoursDB.StageRace.name edition
      let firstStage = ParcoursDB.StageRace.firstStage edition
      let (year,_,_)       = toGregorian $ ParcoursDB.Stage.date $ fromJust firstStage
      let fileName = printf "../resources/%s/%d/route.csv" raceName year
      let desc = printf "%s [%d] route() will match %s" raceName year fileName
      it desc $ do
        contents <- readFile fileName
        let expectedRoute = lines contents
        ParcoursDB.StageRace.route edition `shouldBe` expectedRoute
