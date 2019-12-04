-- file RaceStatsSpec.hs
module RaceStatsSpec where

import Control.Monad.State (forM_)
import Data.Time
import StageRaces.Giro (giroEditions)
import StageRaces.LeTour (tourDeFranceEditions)
import StageRaces.Vuelta (vueltaEditions)
import ParcoursDB.Stage
import ParcoursDB.StageRace
import Test.Hspec (Spec, hspec, describe, context, it, shouldBe, shouldSatisfy)
import Text.Printf (printf)
import System.Directory

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
  | year `elem` [1936,1937,1938,1948,1953,1955,1961,1965,1974,1975,1977,1981,1982,1984,1987,1988,1989,1992,1993,1997,2001,2005,2013,2014] = 1
  | year `elem` [1939,1951,1954,1960,1962,1990,1999,2006,2007,2008,2011,2016,2017] = 2
  | year `elem` [1967,1968,1972,1991,1994,1996,2000,2003,2009,2015] = 3
  | year `elem` [2012,2019] = 4
  | year == 2010 = 5
  | year == 2018 = 6
  | otherwise = 0
  where (year,_,_) = startDate g
matchSummitFinishes tdf@(TourDeFrance _)
  | year `elem` [1953,1958,1959,1961,1962,1963,1964,1965,1967,1969,1980,1991,2007] = 1
  | year `elem` [1970,1972,1977,1981,1982,1993,1998,2005,2010,2012] = 2
  | year `elem` [1952,1971,1974,1978,1983,1985,1990,1992,1997,1999,2000,2003,2006,2009,2013,2016] = 3
  | year `elem` [1973,1976,1979,1986,1995,2001,2004,2008,2014,2017,2018] = 4
  | year `elem` [1975,1984,1987,1988,1989,1994,1996,2002] = 5
  | year `elem` [2011,2015] = 6
  | otherwise = 0
  where (year,_,_) = startDate tdf
matchSummitFinishes v@(Vuelta _)
  | year `elem` [1972,1975,1977,1979,1981,1982,1983,1984,1988,1989,2014,2015] = 1
  | year `elem` [1985,1990,1998,2005,2008,2010] = 2
  | year `elem` [1986,1991,1992,1995,2003,2011,2012,2018] = 3
  | year `elem` [1987,1994,1996,1997,1999,2000,2001,2002,2006,2007,2009,2016] = 4
  | year `elem` [2004,2017] = 5
  | year `elem` [1993] = 6
  | year `elem` [2013] = 7
  | otherwise = 0
  where (year,_,_) = startDate v

matchSummary :: StageRace -> String
matchSummary g@(Giro _)
  | year `elem` [1909,1914,1920]                                    = "8 stages"
  | year `elem` [1910,1919,1921,1922,1923]                          = "10 stages"
  | year `elem` [1911,1924,1925,1926,1928,1931]                     = "12 stages"
  | year `elem` [1912,1913]                                         = "9 stages"
  | year `elem` [1927,1930]                                         = "15 stages"
  | year `elem` [1929]                                              = "14 stages"
  | year `elem` [1932]                                              = "13 stages"
  | year `elem` [1933,1934]                                         = "17 stages"
  | year `elem` [1935]                                              = "18 stages including 2 split stages"
  | year `elem` [1936]                                              = "19 stages including 2 split stages"
  | year `elem` [1937]                                              = "19 stages including 4 split stages"
  | year `elem` [1938]                                              = "18 stages including 3 split stages"
  | year `elem` [1939]                                              = "17 stages including 2 split stages"
  | year `elem` [1940,1951,1952,1958,1970]                          = "20 stages"
  | year `elem` [1946]                                              = "17 stages including 3 split stages"
  | year `elem` [1947]                                              = "19 stages including 1 split stage"
  | year `elem` [1948,1949]                                         = "19 stages"
  | year `elem` [1950]                                              = "18 stages"
  | year `elem` [1953]                                              = "20 stages including 1 split stage"
  | year `elem` [1954,1959,1964,1965,1966,1992,1995,1996,1997,1999] = "22 stages"
  | year `elem` [1956]                                              = "20 stages including 2 split stages"
  | year `elem` [1957,1991,1993]                                    = "21 stages including 1 split stage"
  | year `elem` [1960,1975,1988]                                    = "21 stages including 2 split stages"
  | year `elem` [1967,1974,1989,1994]                               = "22 stages including 1 split stage"
  | year `elem` [1968,1980,1982,1984,1986,1998]                     = "22 stages + Prologue"
  | year `elem` [1969]                                              = "23 stages including 1 split stage"
  | year `elem` [1971,1978]                                         = "20 stages + Prologue including 1 split stage"
  | year `elem` [1972]                                              = "20 stages including 3 split stages"
  | year `elem` [1973,2002,2004,2005]                               = "20 stages + Prologue"
  | year `elem` [1976]                                              = "22 stages including 2 split stages"
  | year `elem` [1977]                                              = "22 stages + Prologue including 4 split stages"
  | year `elem` [1979]                                              = "19 stages + Prologue"
  | year `elem` [1981,1983,1985,1987]                               = "22 stages + Prologue including 1 split stage"
  | year `elem` [1990]                                              = "19 stages + Prologue including 1 split stage"
  | year `elem` [2000,2001]                                         = "21 stages + Prologue"
  | otherwise                                                       = "21 stages"
  where (year,_,_) = startDate g
matchSummary tdf@(TourDeFrance _)
  | year `elem` [1903,1904]                                         = "6 stages"
  | year `elem` [1905]                                              = "11 stages"
  | year `elem` [1906]                                              = "13 stages"
  | year `elem` [1907,1908,1909,1910]                               = "14 stages"
  | year `elem` [1911,1912,1913,1914,1919,1920,1921,1922,1923,1924] = "15 stages"
  | year `elem` [1925]                                              = "18 stages"
  | year `elem` [1926]                                              = "17 stages"
  | year `elem` [1927,1931,1951,1958]                               = "24 stages"
  | year `elem` [1928,1929,1950,1953,1959]                          = "22 stages"
  | year `elem` [1933,1952]                                         = "23 stages"
  | year `elem` [1934]                                              = "23 stages including 1 split stage"
  | year `elem` [1935]                                              = "21 stages including 6 split stages"
  | year `elem` [1936,1938]                                         = "21 stages including 5 split stages"
  | year `elem` [1937]                                              = "20 stages including 8 split stages"
  | year `elem` [1939]                                              = "18 stages including 8 split stages"
  | year `elem` [1954]                                              = "23 stages including 2 split stages"
  | year `elem` [1955,1956]                                         = "22 stages including 1 split stage"
  | year `elem` [1957,1962,1965]                                    = "22 stages including 2 split stages"
  | year `elem` [1960,1961]                                         = "21 stages including 1 split stage"
  | year `elem` [1963]                                              = "21 stages including 2 split stages"
  | year `elem` [1964,1966]                                         = "22 stages including 3 split stages"
  | year `elem` [1967,1975,1978,1980,1981]                          = "22 stages + Prologue including 2 split stages"
  | year `elem` [1968,1976]                                         = "22 stages + Prologue including 3 split stages"
  | year `elem` [1969]                                              = "21 stages + Prologue including 3 split stages"
  | year `elem` [1970]                                              = "23 stages + Prologue including 5 split stages"
  | year `elem` [1971]                                              = "20 stages + Prologue including 3 split stages"
  | year `elem` [1972]                                              = "20 stages + Prologue including 4 split stages"
  | year `elem` [1973]                                              = "20 stages + Prologue including 6 split stages"
  | year `elem` [1974]                                              = "22 stages + Prologue including 4 split stages"
  | year `elem` [1977]                                              = "22 stages + Prologue including 5 split stages"
  | year `elem` [1979]                                              = "24 stages + Prologue"
  | year `elem` [1982]                                              = "21 stages + Prologue including 1 split stage"
  | year `elem` [1983,1988,1991]                                    = "22 stages + Prologue"
  | year `elem` [1984,1985]                                         = "22 stages + Prologue including 1 split stage"
  | year `elem` [1986]                                              = "23 stages + Prologue"
  | year `elem` [1987]                                              = "25 stages + Prologue"
  | year `elem` [1989,1990,1992,1994,1996,1997,1998]                = "21 stages + Prologue"
  | year `elem` [1993,1995,1999,2001,2002,2003,2004,2006,2007,2010] = "20 stages + Prologue"
  | otherwise = "21 stages"
  where (year,_,_) = startDate tdf
matchSummary v@(Vuelta _)
  | year `elem` [1935] = "14 stages"
  | year `elem` [1941,1991,1992]           = "21 stages including 1 split stage"
  | year `elem` [1942,1948]                = "19 stages including 1 split stage"
  | year `elem` [1945]                     = "18 stages including 1 split stage"
  | year `elem` [1946]                     = "20 stages including 3 split stages"
  | year `elem` [1950]                     = "22 stages including 3 split stages"
  | year `elem` [1955]                     = "15 stages"
  | year `elem` [1956,1964]                = "17 stages including 2 split stages"
  | year `elem` [1957]                     = "16 stages"
  | year `elem` [1958]                     = "16 stages including 2 split stages"
  | year `elem` [1959,1960]                = "17 stages including 1 split stage"
  | year `elem` [1961]                     = "16 stages including 1 split stage"
  | year `elem` [1962]                     = "17 stages"
  | year `elem` [1963]                     = "15 stages including 2 split stages"
  | year `elem` [1965,1968]                = "18 stages including 2 split stages"
  | year `elem` [1966]                     = "18 stages including 4 split stages"
  | year `elem` [1967]                     = "18 stages including 3 split stages"
  | year `elem` [1969]                     = "19 stages including 2 split stages"
  | year `elem` [1970,1978,1981,1982]      = "19 stages + Prologue including 2 split stages"
  | year `elem` [1971]                     = "17 stages + Prologue including 2 split stages"
  | year `elem` [1972]                     = "17 stages + Prologue including 3 split stages"
  | year `elem` [1973]                     = "17 stages + Prologue including 4 split stages"
  | year `elem` [1974,1979]                = "19 stages + Prologue including 3 split stages"
  | year `elem` [1975,1977,1980,1983,1984] = "19 stages + Prologue including 1 split stage"
  | year `elem` [1976]                     = "20 stages + Prologue including 1 split stage"
  | year `elem` [1985]                     = "19 stages + Prologue"
  | year `elem` [1986,1995,1999]           = "21 stages + Prologue"
  | year `elem` [1987]                     = "22 stages + Prologue"
  | year `elem` [1989,1990]                = "22 stages including 1 split stage"
  | year `elem` [1996,1997,1998]           = "22 stages"
  | year `elem` [1947]                     = "24 stages including 1 split stage"
  | otherwise = "21 stages"
  where (year,_,_) = startDate v

matchComposition :: StageRace -> String
matchComposition giro@(Giro _)
  | year `elem` [1933] = "16 road stages, 1 Individual Time Trial, 6 rest days"
  | year `elem` [1934] = "15 road stages, 2 Individual Time Trials, 6 rest days"
  | year `elem` [1935] = "18 road stages, 2 Individual Time Trials, 5 rest days"
  | year `elem` [1936] = "19 road stages, 2 Individual Time Trials, 4 rest days"
  | year `elem` [1937] = "21 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 4 rest days"
  | year `elem` [1938] = "20 road stages, 1 Individual Time Trial, 5 rest days"
  | year `elem` [1939] = "17 road stages, 2 Individual Time Trials, 4 rest days"
  | year `elem` [1946] = "19 road stages, 1 Individual Time Trial, 6 rest days"
  | year `elem` [1949] = "18 road stages, 1 Individual Time Trial, 4 rest days"
  | year `elem` [1951,1952] = "18 road stages, 2 Individual Time Trials, 3 rest days"
  | year `elem` [1953] = "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1954] = "20 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1955] = "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1956] = "18 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 3 rest days"
  | year `elem` [1957] = "20 road stages, 2 Individual Time Trials, 2 rest days"
  | year `elem` [1958] = "17 road stages, 3 Individual Time Trials, 2 rest days"
  | year `elem` [1959] = "18 road stages, 4 Individual Time Trials, 1 rest day"
  | year `elem` [1960] = "19 road stages, 4 Individual Time Trials, 1 rest day"
  | year `elem` [1961] = "20 road stages, 1 Individual Time Trial, 2 rest days"
  | year `elem` [1963] = "20 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [1964,1965,1966,1968] = "21 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [1967] = "22 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [1969] = "22 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1970] = "19 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [1971,2000] = "19 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1972] = "20 road stages, 3 Individual Time Trials, 2 rest days"
  | year `elem` [1973,2004] = "19 road stages, 1 Individual Time Trial, 2 rest days"
  | year `elem` [1974] = "22 road stages, 1 Individual Time Trial, 2 rest days"
  | year `elem` [1975] = "21 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1976] = "22 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1974] = "24 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1977] = "24 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1978] = "18 road stages, 3 Individual Time Trials, 1 rest day"
  | year `elem` [1979] = "15 road stages, 4 Individual Time Trials, 1 rest day"
  | year `elem` [1980] = "20 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1981] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 3 rest days"
  | year `elem` [1982] = "20 road stages, 2 Individual Time Trials, 2 rest days"
  | year `elem` [1983] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [1984] = "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [1985] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [1986] = "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials)"
  | year `elem` [1987] = "19 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 1 rest day"
  | year `elem` [1988,1989] = "19 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials)"
  | year `elem` [1990] = "18 road stages, 2 Individual Time Trials"
  | year `elem` [1991,1993,1995] = "19 road stages, 3 Individual Time Trials, 1 rest day"
  | year `elem` [1992] = "19 road stages, 3 Individual Time Trials"
  | year `elem` [1994] = "20 road stages, 3 Individual Time Trials"
  | year `elem` [1996] = "21 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [1997,1999] = "20 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1998] = "20 road stages, 2 Individual Time Trials"
  | year `elem` [2001] = "20 road stages, 1 Individual Time Trial, 1 rest day"
  | year `elem` [2002,2005] = "18 road stages, 2 Individual Time Trials, 2 rest days"
  | year `elem` [2003] = "19 road stages, 2 Individual Time Trials, 2 rest days"
  | year `elem` [2006,2007,2009] = "18 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [2008,2010] = "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 2 rest days"
  | year `elem` [2011,2012,2013] = "18 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [2014] = "18 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 3 rest days"
  | year `elem` [2015] = "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [2016] = "18 road stages, 3 Individual Time Trials, 3 rest days"
  | year `elem` [2017,2018] = "19 road stages, 2 Individual Time Trials, 3 rest days"
  | year `elem` [2019] = "18 road stages, 3 Individual Time Trials, 2 rest days"
  | restDays > 1 = printf "%d road stages, %d rest days" racingStages restDays
  | restDays == 1 = printf "%d road stages, %d rest day" racingStages restDays
  | otherwise    = printf "%d road stages" racingStages
  where (year,_,_) = startDate giro
        racingStages = length $ filter isRacingStage $ stages giro
        restDays = numberOfRestDays giro
matchComposition tdf@(TourDeFrance _)
  | year `elem` [1937] = "27 road stages, 4 Time Trials (3 Team Time Trials; 1 Individual Time Trial), 6 rest days"
  | year `elem` [1954] = "23 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1955] = "21 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1957] = "21 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"
  | year `elem` [1960,1961] = "20 road stages, 2 Individual Time Trials, 1 rest day"
  | year `elem` [1962] = "20 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials)"
  | year `elem` [1963] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"
  | year `elem` [1964] = "21 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 1 rest day"
  | year `elem` [1965] = "20 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 1 rest day"
  | year `elem` [1967] = "22 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1968] = "23 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [1969] = "21 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"
  | year `elem` [1970] = "23 road stages, 5 Time Trials (1 Team Time Trial; 4 Individual Time Trials)"
  | year `elem` [1979] = "18 road stages, 6 Time Trials (2 Team Time Trials; 4 Individual Time Trials), 1 rest day"
  | year `elem` [1980,1981] = "19 road stages, 5 Time Trials (2 Team Time Trials; 3 Individual Time Trials), 2 rest days"
  | year `elem` [1982] = "17 road stages, 5 Time Trials (2 Team Time Trials; 3 Individual Time Trials), 2 rest days"
  | year `elem` [1984] = "19 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 1 rest day"
  | year `elem` [1986] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"
  | year `elem` [1988] = "18 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 1 rest day"
  | year `elem` [1991] = "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"
  | year `elem` [1992,1994] = "18 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"
  | year `elem` [2011,2015,2018] =
    "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | ttt > 0 && itt == 0 = printf "%d road stages, %d Team Time Trials" road ttt 
  | ttt == 0 && itt > 1 && rest > 1 = printf "%d road stages, %d Individual Time Trials, %d rest days" road itt rest 
  | ttt == 1 && itt > 1 && rest > 1 =
    printf "%d road stages, %d Time Trials (1 Team Time Trial; %d Individual Time Trials), %d rest days"
      road (itt + 1) itt rest 
  | ttt == 0 && itt > 1 && rest == 0 = printf "%d road stages, %d Individual Time Trials" road itt
  | ttt == 0 && itt > 1 && rest == 1 = printf "%d road stages, %d Individual Time Trials, 1 rest day" road itt
  | ttt == 0 && itt == 1 && rest > 1 = printf "%d road stages, 1 Individual Time Trial, %d rest days" road rest 
  | ttt == 0 && itt == 1 && rest == 1 = printf "%d road stages, 1 Individual Time Trial, 1 rest day" road
  | rest > 1            = printf "%d road stages, %d rest days" road rest
  | rest == 1           = printf "%d road stages, 1 rest day" road
  | otherwise           = printf "%d road stages" road
  where
    (year,_,_) = startDate tdf
    road       = numberOfRoadStages tdf
    ttt        = numberOfTeamTimeTrials tdf
    itt        = numberOfIndividualTimeTrials tdf
    rest       = numberOfRestDays tdf
matchComposition vuelta@(Vuelta _)
  | year `elem` [1955] = "13 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 1 rest day"
  | year `elem` [1956] = "17 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 1 rest day"
  | year `elem` [1958] = "16 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"
  | year `elem` [1959] = "15 road stages, 3 Time Trials (2 Team Time Trials; 1 Individual Time Trial)"
  | year `elem` [1960] = "16 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"
  | year `elem` [1961,1962] = "15 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"
  | year `elem` [1970] = "20 road stages, 1 Individual Time Trial"
  | year `elem` [1972] = "17 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials)"
  | year `elem` [1973,1988] = "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials)"
  | year `elem` [1974] = "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials)"
  | year `elem` [1980] = "19 road stages, 1 Individual Time Trial"
  | year `elem` [1982] = "20 road stages, 1 Individual Time Trial"
  | year `elem` [1989] = "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials)"
  | year `elem` [1990] = "19 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials)"
  | year `elem` [1991] = "17 road stages, 5 Time Trials (2 Team Time Trials; 3 Individual Time Trials)"
  | year `elem` [1992] = "18 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials)"
  | year `elem` [2010 .. 2013] = "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | year `elem` [2015 .. 2017] = "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"
  | ttt > 0 && itt == 0 = printf "%d road stages, %d Team Time Trials" road ttt
  | ttt == 0 && itt > 1 && rest > 1 = printf "%d road stages, %d Individual Time Trials, %d rest days" road itt rest
  | ttt == 1 && itt > 1 && rest > 1 =
    printf "%d road stages, %d Time Trials (1 Team Time Trial; %d Individual Time Trials), %d rest days"
      road (itt + 1) itt rest
  | ttt == 0 && itt > 1 && rest == 0 = printf "%d road stages, %d Individual Time Trials" road itt
  | ttt == 0 && itt > 1 && rest == 1 = printf "%d road stages, %d Individual Time Trials, 1 rest day" road itt
  | ttt == 0 && itt == 1 && rest > 1 = printf "%d road stages, 1 Individual Time Trial, %d rest days" road rest
  | ttt == 0 && itt == 1 && rest == 1 = printf "%d road stages, 1 Individual Time Trial, 1 rest day" road
  | rest > 1            = printf "%d road stages, %d rest days" road rest
  | rest == 1           = printf "%d road stages, 1 rest day" road
  | otherwise           = printf "%d road stages" road
  where
    (year,_,_) = startDate vuelta
    road       = numberOfRoadStages vuelta
    ttt        = numberOfTeamTimeTrials vuelta
    itt        = numberOfIndividualTimeTrials vuelta
    rest       = numberOfRestDays vuelta

raceStatsSpec :: [StageRace] -> Spec
raceStatsSpec editions =
  forM_ editions $ \(edition) -> do
    let raceName   = ParcoursDB.StageRace.name edition
    let (year,_,_) = startDate edition
    let ctx        = printf "%s [%d]" raceName year
    let longestStage = ParcoursDB.StageRace.longestStage edition
    let composition  = stageComposition edition
    context ctx $ do
      it "number of summit finishes is as expected" $
        numberOfSummitFinishes edition `shouldBe` matchSummitFinishes edition
      it "longest stage is as expected" $
        ParcoursDB.Stage.id longestStage `shouldBe` matchLongestStage edition
      it "stage summary as expected" $
        summary edition `shouldBe` matchSummary edition
      it "stage composition as expected" $
        composition `shouldBe` matchComposition edition

main :: IO ()
main = hspec $ do
  describe "Test the number of summit finishes in the Giro d'Italia across the decades" $ do
    raceStatsSpec giroEditions
  describe "Test the number of summit finishes in the Tour de France across the decades" $ do
    raceStatsSpec tourDeFranceEditions
  describe "Test the number of summit finishes in the Vuelta across the decades" $ do
    raceStatsSpec vueltaEditions
