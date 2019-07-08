-- file GentWevelgemSpec.hs
module GentWevelgemSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.GentWevelgem
import Countries.Belgium
import ParcoursDB.Classic
import ParcoursDB.Location
import Test.Hspec
import Text.Printf

editions = [ gentWevelgem2018 ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      context ctx $ do
        it "start location is as expected" $
          ParcoursDB.Classic.start edition `shouldBe` ghent
        it "finish location is as expected" $
          ParcoursDB.Classic.finish edition `shouldBe` ghent
