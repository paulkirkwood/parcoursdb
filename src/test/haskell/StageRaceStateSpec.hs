-- file StageRaceStateSpec.hs
module StageRaceStateSpec where

import Control.Monad.State
import Data.Maybe
import Data.Time
import StageRaces.Dauphine (dauphineEditions)
import StageRaces.Giro (giroEditions)
import StageRaces.LeTour (tourDeFranceEditions)
import StageRaces.ParisNice (parisNiceEditions)
import StageRaces.Tirreno (tirrenoAdriaticoEditions)
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
           tourDeFranceEditions

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
