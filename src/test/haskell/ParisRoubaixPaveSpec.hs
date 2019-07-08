-- file ParisRoubaixPaveSpec.hs
module ParisRoubaixPaveSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.ParisRoubaix
import Countries.France
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ parisRoubaix2017
           , parisRoubaix2018
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different pavé sectors across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = show raceName ++ "[" ++ (show (fromIntegral year)) ++ "]"
      let fileName   = printf "../resources/%s/%d/pave.csv" raceName year
      context ctx $ do
      it "pave sectors as expected" $ do
        contents <- readFile fileName
        let expectedPave = lines contents
        ParcoursDB.Classic.pave edition `shouldBe` expectedPave
