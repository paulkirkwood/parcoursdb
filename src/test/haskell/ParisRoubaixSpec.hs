-- file ParisRoubaixSpec.hs
module ParisRoubaixSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.ParisRoubaix
import Countries.France
import ParcoursDB.Classic
import ParcoursDB.Location
import StartFinish
import Test.Hspec
import Text.Printf

editions = [ parisRoubaix1896
           , parisRoubaix1897
           , parisRoubaix1898
           , parisRoubaix1899
           , parisRoubaix1900
           , parisRoubaix1901
           , parisRoubaix1902
           , parisRoubaix1903
           , parisRoubaix1904
           , parisRoubaix1905
           , parisRoubaix1906
           , parisRoubaix1907
           , parisRoubaix1908
           , parisRoubaix1909
           , parisRoubaix1910
           , parisRoubaix1911
           , parisRoubaix1912
           , parisRoubaix1913
           , parisRoubaix1914
           , parisRoubaix1919
           , parisRoubaix1920
           , parisRoubaix1921
           , parisRoubaix1922
           , parisRoubaix1923
           , parisRoubaix1924
           , parisRoubaix1925
           , parisRoubaix1926
           , parisRoubaix1927
           , parisRoubaix1928
           , parisRoubaix1929
           , parisRoubaix1930
           , parisRoubaix1931
           , parisRoubaix1932
           , parisRoubaix1933
           , parisRoubaix1934
           , parisRoubaix1935
           , parisRoubaix1936
           , parisRoubaix1937
           , parisRoubaix1938
           , parisRoubaix1939
           , parisRoubaix1943
           , parisRoubaix1944
           , parisRoubaix1945
           , parisRoubaix1946
           , parisRoubaix1947
           , parisRoubaix1948
           , parisRoubaix1949
           , parisRoubaix1950
           , parisRoubaix1951
           , parisRoubaix1952
           , parisRoubaix1953
           , parisRoubaix1954
           , parisRoubaix1955
           , parisRoubaix1956
           , parisRoubaix1957
           , parisRoubaix1958
           , parisRoubaix1959
           , parisRoubaix1960
           , parisRoubaix1961
           , parisRoubaix1962
           , parisRoubaix1963
           , parisRoubaix1964
           , parisRoubaix1965
           , parisRoubaix1966
           , parisRoubaix1967
           , parisRoubaix1968
           , parisRoubaix1969
           , parisRoubaix1970
           , parisRoubaix1971
           , parisRoubaix1972
           , parisRoubaix1973
           , parisRoubaix1974
           , parisRoubaix1975
           , parisRoubaix1976
           , parisRoubaix1977
           , parisRoubaix1978
           , parisRoubaix1979
           , parisRoubaix1980
           , parisRoubaix1981
           , parisRoubaix1982
           , parisRoubaix1983
           , parisRoubaix1984
           , parisRoubaix1985
           , parisRoubaix1986
           , parisRoubaix1987
           , parisRoubaix1988
           , parisRoubaix1989
           , parisRoubaix1990
           , parisRoubaix1991
           , parisRoubaix1992
           , parisRoubaix1993
           , parisRoubaix1994
           , parisRoubaix1995
           , parisRoubaix1996
           , parisRoubaix1997
           , parisRoubaix1998
           , parisRoubaix1999
           , parisRoubaix2010
           , parisRoubaix2011
           , parisRoubaix2012
           , parisRoubaix2013
           , parisRoubaix2014
           , parisRoubaix2015
           , parisRoubaix2016
           , parisRoubaix2017
           , parisRoubaix2018
           ]

startFinishes :: [StartFinish]
startFinishes = [ StartFinish { years = [ 1896 .. 1897 ], actualStart = porteMaillot, actualFinish = roubaix }
                , StartFinish { years = [ 1898 .. 1899 ], actualStart = chatou,       actualFinish = roubaix }
                , StartFinish { years = [ 1900 .. 1900 ], actualStart = saintGermain, actualFinish = roubaix }
                , StartFinish { years = [ 1901 .. 1901 ], actualStart = porteMaillot, actualFinish = roubaix }
                , StartFinish { years = [ 1902 .. 1913 ], actualStart = chatou,       actualFinish = roubaix }
                , StartFinish { years = [ 1914 .. 1914 ], actualStart = suresnes,     actualFinish = roubaix }
                , StartFinish { years = [ 1919 .. 1928 ], actualStart = suresnes,     actualFinish = roubaix }
                , StartFinish { years = [ 1929 .. 1937 ], actualStart = porteMaillot, actualFinish = roubaix }
                , StartFinish { years = [ 1938 .. 1938 ], actualStart = argenteuil,   actualFinish = roubaix }
                , StartFinish { years = [ 1939 .. 1939 ], actualStart = porteMaillot, actualFinish = roubaix }
                , StartFinish { years = [ 1943 .. 1965 ], actualStart = saintDenis,   actualFinish = roubaix }
                , StartFinish { years = [ 1966 .. 1976 ], actualStart = chantilly,    actualFinish = roubaix }
                , StartFinish { years = [ 1977 .. 2019 ], actualStart = compiegne,    actualFinish = roubaix }
                ]

main :: IO ()
main = hspec $ do

  describe "Test the different start and finish locations across the decades" $ do
    forM_ editions $ \(edition) -> do
      let raceName   = ParcoursDB.Classic.name edition
      let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
      let ctx        = printf "%s [%d]" raceName year
      context ctx $ do
        it "start location is as expected" $ do
          matchEditionStart (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.start edition
        it "finish location is as expected" $ do
          matchEditionFinish (fromIntegral year) startFinishes `shouldBe` ParcoursDB.Classic.finish edition
