-- file BergSpec.hs
module BergSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.TourOfFlanders
import ParcoursDB.Classic
import Test.Hspec
import Text.Printf

editions = [ tourOfFlanders2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different bergs across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let bergsFile  = printf "../resources/%s/%d/bergs.csv" raceName year
      context ctx $ do
        it "bergs as expected" $ do
          contents <- readFile bergsFile
          let expectedBergs = lines contents
          ParcoursDB.Classic.bergs edition `shouldBe` expectedBergs
