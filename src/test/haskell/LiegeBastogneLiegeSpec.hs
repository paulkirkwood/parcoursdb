-- file LiegeBastogneLiegeSpec.hs
module LiegeBastogneLiegeSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.LiegeBastogneLiege
import Countries.Belgium
import ParcoursDB.Classic
import ParcoursDB.Location
import Test.Hspec
import Text.Printf

editions = [ lbl2018
           ]

ansOrLiege :: Int -> Location
ansOrLiege year
  | year `elem` [1992..2018] = ans
  | otherwise                = liege

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let finish     = ansOrLiege (fromIntegral year)
      context ctx $ do
        it "Liège-Bastogne-Liège always starts in Liège" $
          ParcoursDB.Classic.start edition `shouldBe` liege
        it "Finish: Liège [1896..1991], Ans [1992..2018], Liège[2019..]" $
          ParcoursDB.Classic.finish edition `shouldBe` finish
        it "Cols as expected" $ do
          let fileName   = printf "../resources/%s/%d/cols.csv" raceName year
          contents <- readFile fileName
          let expectedCols = lines contents
          ParcoursDB.Classic.cotes edition `shouldBe` expectedCols
