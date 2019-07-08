-- file AmstelGoldRaceSpec.hs
module AmstelGoldRaceSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.AmstelGoldRace
import Countries.Netherlands
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ amstelGoldRace2018
           ]

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1966 .. 1966 ], actualStart = breda,      actualFinish = meerssen }
                , StartFinish { years = [ 1967 .. 1967 ], actualStart = helmond,    actualFinish = meerssen }
                , StartFinish { years = [ 1968 .. 1968 ], actualStart = helmond,    actualFinish = elsloo }
                , StartFinish { years = [ 1969 .. 1970 ], actualStart = helmond,    actualFinish = elsloo }
                , StartFinish { years = [ 1971 .. 1990 ], actualStart = heerlen,    actualFinish = meerssen }
                , StartFinish { years = [ 1991 .. 1997 ], actualStart = heerlen,    actualFinish = maastricht }
                , StartFinish { years = [ 1998 .. 2002 ], actualStart = maastricht, actualFinish = maastricht }
                , StartFinish { years = [ 2003 .. 2019 ], actualStart = maastricht, actualFinish = valkenburg }
                ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      --let bergsFile  = printf "../resources/%s/%d/bergs.csv" raceName year
      --let paveFile   = printf "../resources/%s/%d/pave.csv" raceName year
      context ctx $ do
        it "start location is as expected" $
          matchEditionStart (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.start edition
        it "finish location is as expected" $
          matchEditionFinish (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.finish edition
        --it "bergs as expected" $ do
        --  contents <- readFile bergsFile
        --  let expectedBergs = lines contents
        --  ParcoursDB.Classic.bergs edition `shouldBe` expectedBergs
        --it "pave as expected" $ do
        --  contents <- readFile paveFile
        --  let expectedPave = lines contents
        --  ParcoursDB.Classic.pave edition `shouldBe` expectedPave
