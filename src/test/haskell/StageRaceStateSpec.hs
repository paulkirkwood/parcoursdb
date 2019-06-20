-- file StageRaceStateSpec.hs
module StageRaceStateSpec where

import Control.Monad.State
import Data.Maybe
import Data.Time
import Editions.Dauphine
import Editions.Giro
import Editions.LeTour
import Editions.Tirreno
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.StageRaceState
import System.IO
import Test.Hspec
import Text.Printf

main :: IO ()
main = hspec $ do

  let stageRaceEditions = [ ( "Criterium du Dauphine", France, [ (dauphine2018, 2018, 6, 3 )
                                                               ]),
                            ( "Giro d'Italia", Italy, [ ( giro1980, 1980, 5, 15 )
                                                     ,  ( giro1981, 1981, 5, 13 )
                                                     ,  ( giro1987, 1987, 5, 21 )
                                                     ,  ( giro2017, 2017, 5,  5 )
                                                     ,  ( giro2018, 2018, 5,  4 )
                                                     ] ),

                            ( "Tirreno Adriatico", Italy, [ (tirreno2013, 2013, 3,  6 )
                                                          , (tirreno2014, 2014, 3, 12 )
                                                          , (tirreno2015, 2015, 3, 11 )
                                                          , (tirreno2016, 2016, 3,  9 )
                                                          ] ),

                            ( "Le Tour de France", France, [ (tdf1970, 1970, 6, 26 )
                                                           , (tdf1971, 1971, 6, 26 )
                                                           , (tdf2018, 2018, 7,  7 )
                                                           ] )
                          ]

  describe "stage race edition routes" $ do
    forM_ stageRaceEditions $ \(raceName, country, editions) -> do
      forM_ editions $ \(routeFunc, year, month, day) -> do
        let fileName = printf "../resources/%s/%d/route.csv" raceName year
        let desc = printf "%s [%d] route() will match %s" raceName year fileName
        it desc $ do
          contents <- readFile fileName
          let expectedRoute = lines contents
          let startDate = fromGregorian year month day
          let startState = ParcoursDB.StageRaceState.init raceName country startDate
          let (race,_) = runState routeFunc startState
          ParcoursDB.StageRace.route race `shouldBe` expectedRoute

