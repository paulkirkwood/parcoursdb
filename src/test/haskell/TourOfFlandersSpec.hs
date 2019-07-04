-- file TourOfFlandersSpec.hs
module TourOfFlandersSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.TourOfFlanders
import Countries.Belgium
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ ronde2018
           ]

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1913 .. 1913 ], actualStart = ghent,       actualFinish = mariakerke }
                , StartFinish { years = [ 1914 .. 1914 ], actualStart = ghent,       actualFinish = evergem }
                , StartFinish { years = [ 1919 .. 1923 ], actualStart = ghent,       actualFinish = gentbrugge }
                , StartFinish { years = [ 1924 .. 1927 ], actualStart = ghent,       actualFinish = ghent }
                , StartFinish { years = [ 1928 .. 1941 ], actualStart = ghent,       actualFinish = ghent }
                , StartFinish { years = [ 1942 .. 1944 ], actualStart = ghent,       actualFinish = ghent }
                , StartFinish { years = [ 1945 .. 1961 ], actualStart = ghent,       actualFinish = wetteren }
                , StartFinish { years = [ 1962 .. 1972 ], actualStart = ghent,       actualFinish = gentbrugge }
                , StartFinish { years = [ 1973 .. 1976 ], actualStart = ghent,       actualFinish = meerbeke }
                , StartFinish { years = [ 1977 .. 1997 ], actualStart = sintNiklaas, actualFinish = meerbeke }
                , StartFinish { years = [ 1998 .. 2011 ], actualStart = bruges,      actualFinish = meerbeke }
                , StartFinish { years = [ 2012 .. 2016 ], actualStart = bruges,      actualFinish = oudenaarde }
                , StartFinish { years = [ 2016 .. 2019 ], actualStart = antwerp,     actualFinish = oudenaarde }
                ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let bergsFile  = printf "../resources/%s/%d/bergs.csv" raceName year
      let paveFile   = printf "../resources/%s/%d/pave.csv" raceName year
      context ctx $ do
        it "start location is as expected" $
          matchEditionStart (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.start edition
        it "finish location is as expected" $
          matchEditionFinish (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.finish edition
        it "bergs as expected" $ do
          contents <- readFile bergsFile
          let expectedBergs = lines contents
          ParcoursDB.Classic.bergs edition `shouldBe` expectedBergs
        it "pave as expected" $ do
          contents <- readFile paveFile
          let expectedPave = lines contents
          ParcoursDB.Classic.pave edition `shouldBe` expectedPave
