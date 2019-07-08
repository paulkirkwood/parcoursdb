-- file RaceNameSpec.hs
module RaceNameSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.E3Harelbeke
import Classics.GrandPrixDePlouay
import Classics.OmloopHetVolk
import ParcoursDB.Classic
import Test.Hspec
import Text.Printf

data RaceName = RaceName { years      :: [Int]
                         , actualName :: String
                         }

matchEditionRaceName :: Int -> [RaceName] -> String
matchEditionRaceName year [x] = actualName x
matchEditionRaceName year (x:xs)
  | year `elem` years x = actualName x
  | otherwise           = matchEditionRaceName year xs

e3HarelbekeEditions = [ e3Harelbeke2018 ]

e3HarelbekeRaceNames :: [RaceName]
e3HarelbekeRaceNames = [ RaceName { years = [ 1958 .. 1961 ], actualName = "Harelbeke-Antwerp-Harelbeke" }
                       , RaceName { years = [ 1962 .. 2013 ], actualName = "E3 Prijs Vlaanderen" }
                       , RaceName { years = [ 2014 .. 2018 ], actualName = "E3 Harelbeke" }
                       , RaceName { years = [ 2019 .. 2019 ], actualName = "E3 Binckbank Classic" }
                       ]

gpDePlouayEditions = [ grandPrixDePlouay2018 ]

gpDePlouayRaceNames :: [RaceName]
gpDePlouayRaceNames = [ RaceName { years = [ 1931 .. 1988 ], actualName = "Grand-Prix de Plouay" }
                      , RaceName { years = [ 1989 .. 2015 ], actualName = "GP Ouest-France" }
                      , RaceName { years = [ 2016 .. 2019 ], actualName = "Bretagne Classic Ouest-France" }
                      ]

omloopEditions = [ omloopHetVolk1945
                 , omloopHetVolk1946
                 , omloopHetVolk2018
                 ]

omloopRaceNames :: [RaceName]
omloopRaceNames = [ RaceName { years = [ 1945 .. 1946 ], actualName = "Omloop van Vlaanderen" }
                  , RaceName { years = [ 1947 .. 2008 ], actualName = "Omloop Het Volk" }
                  , RaceName { years = [ 2009 .. 2019 ], actualName = "Omloop Het Nieuwsblad" }
                  ]

raceNameSpec :: [Classic] -> [RaceName] -> Spec
raceNameSpec editions raceNames =
  forM_ editions $ \(edition) -> do
    let (year,_,_)       = toGregorian $ ParcoursDB.Classic.date edition
    let actualRaceName   = matchEditionRaceName (fromIntegral year) raceNames
    let expectedRaceName = ParcoursDB.Classic.name edition
    let test_case        = printf "%s [%d] race name as expected" actualRaceName year
    it test_case $
      actualRaceName `shouldBe` expectedRaceName

main :: IO ()
main = hspec $ do
  describe "Test the different E3 Harelbeke race names across the decades" $ do
    raceNameSpec e3HarelbekeEditions e3HarelbekeRaceNames
  describe "Test the different GP de Plouay race names across the decades" $ do
    raceNameSpec gpDePlouayEditions gpDePlouayRaceNames
  describe "Test the different Omloop Het Volk race names across the decades" $ do
    raceNameSpec omloopEditions omloopRaceNames
