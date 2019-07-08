-- file E3HarelbekeSpec.hs
module E3HarelbekeSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.E3Harelbeke
import Countries.Belgium
import ParcoursDB.Classic
import ParcoursDB.Location
import Test.Hspec
import Text.Printf

editions = [ e3Harelbeke2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" (ParcoursDB.Classic.name edition) year
      context ctx $ do
        it "start location is as expected" $
          ParcoursDB.Classic.start edition `shouldBe` harelbeke
        it "finish location is as expected" $
          ParcoursDB.Classic.finish edition `shouldBe` harelbeke
