-- file StageRaceStateSpec.hs
module StageRaceStateSpec where

import Control.Monad.State
import Data.Maybe
import Data.Time
import StageRaces.Dauphine
import StageRaces.Giro
import StageRaces.LeTour
import StageRaces.Tirreno
import ParcoursDB.Country
import ParcoursDB.Stage
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace
import System.IO
import Test.Hspec
import Text.Printf

editions = [ dauphine2018
           , giro1980
           , giro1981
           , giro1987
           , giro2016
           , giro2017
           , giro2018
           , tdf1970
           , tdf1971
           , tdf2018
           , tirreno2013
           , tirreno2014
           , tirreno2015
           , tirreno2016
           ]

main :: IO ()
main = hspec $ do

  describe "stage race edition routes" $ do
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
