-- file MilanoSanRemoSpec.hs
module MilanoSanRemoSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.MilanoSanRemo
import Countries.Italy
import ParcoursDB.Classic
import ParcoursDB.Location
import Test.Hspec
import Text.Printf

editions = [ milanoSanRemo2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      context ctx $ do
        it "Milano-San Remo always starts in Milan" $
          ParcoursDB.Classic.start edition `shouldBe` milan
        it "Milano-San Remo always finishes in San Remo" $
          ParcoursDB.Classic.finish edition `shouldBe` sanRemo
        it "Cotes as expected" $ do
          let fileName   = printf "../resources/%s/%d/cotes.csv" raceName year
          contents <- readFile fileName
          let expectedCols = lines contents
          ParcoursDB.Classic.cotes edition `shouldBe` expectedCols
