-- file TourOfLombardySpec.hs
module TourOfLombardySpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.TourOfLombardy
import Countries.Italy
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ ilLombardia2018
           ]

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1905 .. 1960 ], actualStart = milan,     actualFinish = milan }
                , StartFinish { years = [ 1961 .. 1984 ], actualStart = milan,     actualFinish = como }
                , StartFinish { years = [ 1984 .. 1989 ], actualStart = como,      actualFinish = milan }
                , StartFinish { years = [ 1990 .. 1994 ], actualStart = milan,     actualFinish = monza }
                , StartFinish { years = [ 1995 .. 2001 ], actualStart = varese,    actualFinish = bergamo }
                , StartFinish { years = [ 2002 .. 2002 ], actualStart = cantu,     actualFinish = bergamo }
                , StartFinish { years = [ 2003 .. 2003 ], actualStart = como,      actualFinish = bergamo }
                , StartFinish { years = [ 2004 .. 2006 ], actualStart = mendrisio, actualFinish = como }
                , StartFinish { years = [ 2007 .. 2009 ], actualStart = varese,    actualFinish = como }
                , StartFinish { years = [ 2010 .. 2010 ], actualStart = milan,     actualFinish = como }
                , StartFinish { years = [ 2011 .. 2011 ], actualStart = milan,     actualFinish = lecco }
                , StartFinish { years = [ 2012 .. 2013 ], actualStart = bergamo,   actualFinish = lecco }
                , StartFinish { years = [ 2014 .. 2014 ], actualStart = como,      actualFinish = bergamo }
                , StartFinish { years = [ 2015 .. 2015 ], actualStart = bergamo,   actualFinish = como }
                , StartFinish { years = [ 2016 .. 2016 ], actualStart = como,      actualFinish = bergamo }
                , StartFinish { years = [ 2017 .. 2018 ], actualStart = bergamo,   actualFinish = como }
                ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      let fileName   = printf "../resources/%s/%d/cotes.csv" raceName year
      context ctx $ do
        it "start location is as expected" $
          matchEditionStart (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.start edition
        it "finish location is as expected" $
          matchEditionFinish (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.finish edition
        it "cotes as expected" $ do
          contents <- readFile fileName
          let expectedCotes = lines contents
          ParcoursDB.Classic.cotes edition `shouldBe` expectedCotes
