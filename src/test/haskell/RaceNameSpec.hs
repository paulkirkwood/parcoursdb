-- file RaceNameSpec.hs
module RaceNameSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.E3Harelbeke (e3HarelbekeEditions)
import Classics.GrandPrixDePlouay (grandPrixDePlouayEditions)
import Classics.OmloopHetVolk (omloopHetVolkEditions)
import ParcoursDB.Classic
import ParcoursDB.StageRace
import StageRaces.Dauphine (dauphineEditions)
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

e3HarelbekeRaceNames :: [RaceName]
e3HarelbekeRaceNames = [ RaceName { years = [ 1958 .. 1961 ], actualName = "Harelbeke-Antwerp-Harelbeke" }
                       , RaceName { years = [ 1962 .. 2013 ], actualName = "E3 Prijs Vlaanderen" }
                       , RaceName { years = [ 2014 .. 2018 ], actualName = "E3 Harelbeke" }
                       , RaceName { years = [ 2019 .. 2019 ], actualName = "E3 Binckbank Classic" }
                       ]

grandPrixDePlouayRaceNames :: [RaceName]
grandPrixDePlouayRaceNames = [ RaceName { years = [ 1931 .. 1988 ], actualName = "Grand-Prix de Plouay" }
                             , RaceName { years = [ 1989 .. 2015 ], actualName = "GP Ouest-France" }
                             , RaceName { years = [ 2016 .. 2019 ], actualName = "Bretagne Classic Ouest-France" }
                             ]

omloopRaceNames :: [RaceName]
omloopRaceNames = [ RaceName { years = [ 1945 .. 1946 ], actualName = "Omloop van Vlaanderen" }
                  , RaceName { years = [ 1947 .. 2008 ], actualName = "Omloop Het Volk" }
                  , RaceName { years = [ 2009 .. 2019 ], actualName = "Omloop Het Nieuwsblad" }
                  ]

dauphineNames :: [RaceName]
dauphineNames = [ RaceName { years = [ 1947 .. 2009 ], actualName = "Critérium du Dauphiné Libéré" }
                , RaceName { years = [ 2010 .. 2019 ], actualName = "Critérium du Dauphiné" }
                ]

classicRaceNameSpec :: [Classic] -> [RaceName] -> Spec
classicRaceNameSpec editions raceNames =
  forM_ editions $ \(edition) -> do
    let (year,_,_)       = toGregorian $ ParcoursDB.Classic.date edition
    let actualRaceName   = matchEditionRaceName (fromIntegral year) raceNames
    let expectedRaceName = ParcoursDB.Classic.name edition
    let test_case        = printf "%s [%d] race name as expected" actualRaceName year
    it test_case $
      actualRaceName `shouldBe` expectedRaceName

stageRaceNameSpec :: [StageRace] -> [RaceName] -> Spec
stageRaceNameSpec editions raceNames =
  forM_ editions $ \(edition) -> do
    let (year,_,_)       = startDate edition
    let actualRaceName   = matchEditionRaceName (fromIntegral year) raceNames
    let expectedRaceName = ParcoursDB.StageRace.name edition
    let test_case        = printf "%s [%d] race name as expected" actualRaceName year
    it test_case $
      actualRaceName `shouldBe` expectedRaceName

main :: IO ()
main = hspec $ do
  describe "Test the different E3 Harelbeke race names across the decades" $ do
    classicRaceNameSpec e3HarelbekeEditions e3HarelbekeRaceNames
  describe "Test the different GP de Plouay race names across the decades" $ do
    classicRaceNameSpec grandPrixDePlouayEditions grandPrixDePlouayRaceNames
  describe "Test the different Omloop Het Volk race names across the decades" $ do
    classicRaceNameSpec omloopHetVolkEditions omloopRaceNames
  describe "Test the different Critérium du Dauphiné race names across the decades" $ do
    stageRaceNameSpec dauphineEditions dauphineNames
