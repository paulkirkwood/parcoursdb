-- file OmloopHetVolkSpec.hs
module OmloopHetVolkSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.OmloopHetVolk
import Countries.Belgium
import ParcoursDB.Classic
import ParcoursDB.Location
import RaceName
import Test.Hspec
import Text.Printf

editions = [ omloopHetVolk2018
           ]

ghentOrLokeren :: Int -> Location
ghentOrLokeren year
  | year `elem` [1996..2007] = lokeren
  | otherwise                = ghent

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let raceName   = ParcoursDB.Classic.name edition
      let ctx        = printf "%s [%d]" raceName year
      let paveFile   = printf "../resources/Omloop Het Volk/%d/pave.csv" year
      context ctx $ do
        it "start location is as expected" $
          ParcoursDB.Classic.start edition `shouldBe` ghent
        it "finish location is as expected" $
          ParcoursDB.Classic.finish edition `shouldBe` ghentOrLokeren (fromIntegral year)
        it "pave as expected" $ do
          contents <- readFile paveFile
          let expectedPave = lines contents
          ParcoursDB.Classic.pave edition `shouldBe` expectedPave
