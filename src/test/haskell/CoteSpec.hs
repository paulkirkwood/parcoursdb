-- file CoteSpec.hs
module CoteSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.LiegeBastogneLiege
import Classics.MilanoSanRemo
import Classics.ParisTours
import Classics.TourOfLombardy
import ParcoursDB.Classic
import Test.Hspec
import Text.Printf

editions = [ liegeBastogneLiege2018
           , milanoSanRemo2018
           , parisTours2018
           , tourOfLombardy2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different cotes across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      context ctx $ do
        it "Cotes as expected" $ do
          let fileName   = printf "../resources/%s/%d/cotes.csv" raceName year
          contents <- readFile fileName
          let expectedCols = lines contents
          ParcoursDB.Classic.cotes edition `shouldBe` expectedCols
