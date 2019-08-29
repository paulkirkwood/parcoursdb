-- file SummitFinishSpec.hs
module SummitFinishSpec where

import Control.Monad.State (forM_)
import Data.Time
import StageRaces.Giro (giroEditions)
import StageRaces.LeTour (tourDeFranceEditions)
import StageRaces.Vuelta (vueltaEditions)
import ParcoursDB.Stage
import ParcoursDB.StageRace
import Test.Hspec
import Text.Printf

matchLongestStage :: StageRace -> String
matchLongestStage g@(Giro _)
  | year `elem` [1909 .. 1912]                                 = "1"
  | year `elem` [1921,1927,1971,2011]                          = "2"
  | year `elem` [1914,1922,1931,1981]                          = "3"
  | year `elem` [1919,1928,1954,1975,1998]                     = "4"
  | year `elem` [1929,1930,1940,1953,1958,2014,1979,1999]      = "6"
  | year `elem` [1923,1934,1949,1973,1974,2001,2006,2007,2015] = "7"
  | year `elem` [1913,1920,1948,1955,2000,2002,2019]           = "8"
  | year `elem` [1925,1926,1935,1947,1950,1964,1978,1980]      = "9"
  | year `elem` [1924,1932,1951,1990,2009,2018]                = "10"
  | year `elem` [1946,2010,2012]                               = "11"
  | year `elem` [1936,1962,2017]                               = "12"
  | year `elem` [1961,1967,1984,2013]                          = "13"
  | year `elem` [1966,1970,1972,1977,1987,1994,1995,1997]      = "14"
  | year `elem` [1937,1939,1956,1986,1993,2004]                = "15"
  | year `elem` [1938,1976]                                    = "16"
  | year `elem` [1933,1985]                                    = "17"
  | year `elem` [1960,2016]                                    = "18"
  | year `elem` [1952,1992,2003,2008]                          = "19"
  | year `elem` [1957,1959,1982,1996]                          = "21"
  | year `elem` [1957,1959,1965,1968]                          = "22"
  | year `elem` [1969]                                         = "23"
  | otherwise                                                  = "5"
  where (year,_,_) = startDate g
matchLongestStage tdf@(TourDeFrance _)
  | year `elem` [1937]                                                 = "1"
  | year `elem` [1997]                                                 = "2"
  | year `elem` [1926,1932,1947,1978,1980,2007]                        = "3"
  | year `elem` [1905,1913,1914,1976,1977,1983,1991,1998,2015,2016]    = "4"
  | year `elem` [1919 .. 1924] ++ [1933,1934,1950,1963,1990,1995,2008] = "5"
  | year `elem` [1903 .. 1904] ++ [1931,1976,1989,1994,2010,2011]      = "6"
  | year `elem` [1953,1984]                                            = "8"
  | year `elem` [1928,1939,1954,1955,1970,1987]                        = "9"
  | year `elem` [1981,2004]                                            = "10"
  | year `elem` [1929,1965,1986]                                       = "11"
  | year `elem` [1911 .. 1912] ++ [1985,1992,1993]                     = "12"
  | year `elem` [1907 .. 1910] ++ [1927,1975,1999,2006,2012]           = "13"
  | year `elem` [1974,1979]                                            = "14"
  | year `elem` [1930,1935,1936,1938,1968,2001,2002,2013]              = "15"
  | year `elem` [2014]                                                 = "16"
  | year `elem` [1925,1973,1982,1996,2005]                             = "17"
  | year `elem` [1972]                                                 = "18"
  | year `elem` [1966,2017]                                            = "19"
  | year `elem` [1961,1969,1988,2000]                                  = "20"
  | year `elem` [1948,1949,1957,1964,1967]                             = "21"
  | year `elem` [1956,1959,1962]                                       = "22"
  | year `elem` [1952]                                                 = "23"
  | year `elem` [1951,1958]                                            = "24"
  | otherwise                                                          = "7"
  where (year,_,_) = startDate tdf
matchLongestStage v@(Vuelta _)
  | year `elem` [1947,1984]                               = "1"
  | year `elem` [1969]                                    = "1B"
  | year `elem` [1971,1982,1985,1993,1998,2004]           = "2"
  | year `elem` [1948,1957,1965,1970,1983,1999,2000,2006] = "3"
  | year `elem` [1991,2005,2009]                          = "4"
  | year `elem` [1960,1989,1997]                          = "5"
  | year `elem` [1936,1942,1977,1984,1994,2008,2017]      = "7"
  | year `elem` [1978,1992,2014]                          = "8"
  | year `elem` [1945,1979,1981,1990,2003,2007]           = "10"
  | year `elem` [1959,1966,1967,1972,1980,2010,2018]      = "11"
  | year `elem` [1956,1962,1973,2002]                     = "12"
  | year `elem` [1946,1963,1964,2016]                     = "13"
  | year `elem` [1955,1961,1968,1975,1976,2015]           = "14"
  | year `elem` [2001,2013]                               = "15"
  | year `elem` [1986,1987,1996]                          = "16"
  | year `elem` [1988,2011]                               = "17"
  | year `elem` [1950,2012]                               = "18"
  | year `elem` [1941]                                    = "20"
  | otherwise                                             = "6"
  where (year,_,_) = startDate v

matchSummitFinishes :: StageRace -> Int
matchSummitFinishes g@(Giro _)
  | year `elem` [1954,1965,1967,1968,1975,1982,1993,1999,2000,2001,2003,2005,2006,2007,2009,2012,2014,2016] = 1
  | year `elem` [1962,1972,1990,1996,2011,2015] = 2
  | year `elem` [1991,1994,2010] = 3
  | year == 2019 = 4
  | year == 2018 = 6
  | otherwise = 0
  where (year,_,_) = startDate g
matchSummitFinishes tdf@(TourDeFrance _)
  | year `elem` [1953,1958,1959,1961,1962,1963,1964,1965,1967,1969,1980,1991,1993,2007] = 1
  | year `elem` [1970,1972,1974,1977,1981,1982,1998,2005,2010,2012] = 2
  | year `elem` [1952,1971,1978,1983,1985,1986,1990,1992,1997,1999,2000,2003,2006,2008,2009,2013,2016,2017] = 3
  | year `elem` [1973,1975,1976,1979,1995,2001,2004,2014,2018] = 4
  | year `elem` [1984,1987,1988,1989,1994,1996,2002] = 5
  | year `elem` [2011,2015] = 6
  | otherwise = 0
  where (year,_,_) = startDate tdf
matchSummitFinishes v@(Vuelta _)
  | year `elem` [1983,1984,1985,1986,1988,1989,1990,1995,1997,1998,2003,2004,2008,2009,2010,2011,2014] = 1
  | year `elem` [1991,1992,2001,2002,2005,2006,2012,2016,2018] = 2
  | year `elem` [1987,1993,1994,1996,1999,2000,2007,2013] = 3
  | year `elem` [2017] = 5
  | otherwise = 0
  where (year,_,_) = startDate v

raceStatsSpec :: [StageRace] -> Spec
raceStatsSpec editions =
  forM_ editions $ \(edition) -> do
    let raceName   = ParcoursDB.StageRace.name edition
    let (year,_,_) = startDate edition
    let ctx        = printf "%s [%d]" raceName year
    let longestStage = ParcoursDB.StageRace.longestStage edition
    context ctx $ do
      it "number of summit finishes is as expected" $
        numberOfSummitFinishes edition `shouldBe` matchSummitFinishes edition
      it "longest stage is as expected" $
        ParcoursDB.Stage.id longestStage `shouldBe` matchLongestStage edition

main :: IO ()
main = hspec $ do
  describe "Test the number of summit finishes in the Giro d'Italia across the decades" $ do
    raceStatsSpec giroEditions
  describe "Test the number of summit finishes in the Tour de France across the decades" $ do
    raceStatsSpec tourDeFranceEditions
  describe "Test the number of summit finishes in the Vuelta across the decades" $ do
    raceStatsSpec vueltaEditions
