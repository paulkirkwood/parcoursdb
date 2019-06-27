-- file ParisRoubaixStateSpec.hs
module ParisRoubaixStateSpec where

import Control.Monad.State
import Data.Time
import Editions.ParisRoubaix
import France
import ParcoursDB.Classic
import ParcoursDB.Location
import ParcoursDB.State.ParisRoubaix
import System.IO
import Test.Hspec
import Text.Printf

editions = [ ( "Paris-Roubaix", [ parisRoubaix2010
                                , parisRoubaix2011
                                , parisRoubaix2012
                                , parisRoubaix2013
                                , parisRoubaix2014
                                , parisRoubaix2015
                                , parisRoubaix2016
                                , parisRoubaix2017
                                , parisRoubaix2018
                                ] )
           ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(name, editions) -> do
      context name $ do
        forM_ editions $ \(edition) -> do
          let (year,_,_)       = toGregorian $ ParcoursDB.Classic.date edition
          let expectedStart    = ParcoursDB.Classic.start edition
          let expectedFinish   = ParcoursDB.Classic.finish edition
          let start_test_desc  = printf "%d start as expected: %s" year (show expectedStart)
          let finish_test_desc = printf "%d finish as expected: %s" year (show expectedFinish)
          it start_test_desc $
            matchEditionStart (fromIntegral year) startFinishes `shouldBe` expectedStart
          it finish_test_desc $
            matchEditionFinish (fromIntegral year) startFinishes `shouldBe` expectedFinish

matchEditionStart :: Int -> [StartFinish] -> Location
matchEditionStart year [x] = actualStart x
matchEditionStart year (x:xs)
  | year `elem` years x = actualStart x
  | otherwise           = matchEditionStart year xs

matchEditionFinish :: Int -> [StartFinish] -> Location
matchEditionFinish year [x] = actualFinish x
matchEditionFinish year (x:xs)
  | year `elem` years x = actualFinish x
  | otherwise           = matchEditionFinish year xs

data StartFinish = StartFinish { years :: [Int], actualStart :: Location, actualFinish :: Location }

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1896 .. 1897 ], actualStart = porteMaillot, actualFinish = roubaix }
        , StartFinish { years = [ 1898 .. 1899 ], actualStart = chatou, actualFinish = roubaix }
        , StartFinish { years = [ 1900 .. 1900 ], actualStart = saintGermain, actualFinish = roubaix }
        , StartFinish { years = [ 1901 .. 1901 ], actualStart = porteMaillot, actualFinish = roubaix }
        , StartFinish { years = [ 1902 .. 1913 ], actualStart = chatou, actualFinish = roubaix }
        , StartFinish { years = [ 1914 .. 1914 ], actualStart = suresnes, actualFinish = roubaix }
        , StartFinish { years = [ 1919 .. 1928 ], actualStart = suresnes, actualFinish = roubaix }
        , StartFinish { years = [ 1929 .. 1937 ], actualStart = porteMaillot, actualFinish = roubaix }
        , StartFinish { years = [ 1938 .. 1938 ], actualStart = argenteuil, actualFinish = roubaix }
        , StartFinish { years = [ 1939 .. 1939 ], actualStart = porteMaillot, actualFinish = roubaix }
        , StartFinish { years = [ 1943 .. 1965 ], actualStart = saintDenis, actualFinish = roubaix }
        , StartFinish { years = [ 1966 .. 1976 ], actualStart = chantilly, actualFinish = roubaix }
        , StartFinish { years = [ 1977 .. 2019 ], actualStart = compiegne, actualFinish = roubaix }
        ]
