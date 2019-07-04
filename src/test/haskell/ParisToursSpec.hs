-- file ParisToursSpec.hs
module ParisToursSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.ParisTours
import Countries.France
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ parisTours2018
           ]

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1896 .. 1896 ], actualStart = paris,   actualFinish = tours }
                , StartFinish { years = [ 1901 .. 1901 ], actualStart = paris,   actualFinish = tours }
                , StartFinish { years = [ 1906 .. 1914 ], actualStart = paris,   actualFinish = tours }
                , StartFinish { years = [ 1917 .. 1939 ], actualStart = paris,   actualFinish = tours }
                , StartFinish { years = [ 1941 .. 1973 ], actualStart = paris,   actualFinish = tours }
                , StartFinish { years = [ 1974 .. 1975 ], actualStart = tours,   actualFinish = versailles }
                , StartFinish { years = [ 1976 .. 1977 ], actualStart = blois,   actualFinish = chaville }
                , StartFinish { years = [ 1978 .. 1978 ], actualStart = blois,   actualFinish = autodromeDeMontlhery }
                , StartFinish { years = [ 1979 .. 1984 ], actualStart = blois,   actualFinish = chaville }
                , StartFinish { years = [ 1985 .. 1987 ], actualStart = creteil, actualFinish = chaville }
                , StartFinish { years = [ 1988 .. 2018 ], actualStart = paris,   actualFinish = tours }
                ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let cotesFile  = printf "../resources/%s/%d/cotes.csv" raceName year
      let gravelFile = printf "../resources/%s/%d/gravel.csv" raceName year
      context ctx $ do
        it "start location is as expected" $
          matchEditionStart (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.start edition
        it "finish location is as expected" $
          matchEditionFinish (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.finish edition
        it "cotes as expected" $ do
          contents <- readFile cotesFile
          let expectedCotes = lines contents
          ParcoursDB.Classic.cotes edition `shouldBe` expectedCotes
        it "gravel as expected" $ do
          contents <- readFile gravelFile
          let expectedGravel = lines contents
          ParcoursDB.Classic.gravel edition `shouldBe` expectedGravel
