-- file GravelSpec.hs
module GravelSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.ParisTours
import ParcoursDB.Classic
import Test.Hspec
import Text.Printf

editions = [ parisTours2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let gravelFile = printf "../resources/%s/%d/gravel.csv" raceName year
      context ctx $ do
        it "gravel as expected" $ do
          contents <- readFile gravelFile
          let expectedGravel = lines contents
          ParcoursDB.Classic.gravel edition `shouldBe` expectedGravel
