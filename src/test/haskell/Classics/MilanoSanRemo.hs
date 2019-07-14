-- file Classics.MilanoSanRemo.hs
module Classics.MilanoSanRemo
(milanoSanRemo1907
,milanoSanRemo1908
,milanoSanRemo1909
,milanoSanRemo1910
,milanoSanRemo1911
,milanoSanRemo1912
,milanoSanRemo1913
,milanoSanRemo1914
,milanoSanRemo1915
,milanoSanRemo1917
,milanoSanRemo1918
,milanoSanRemo1919
,milanoSanRemo1920
,milanoSanRemo1921
,milanoSanRemo1922
,milanoSanRemo1923
,milanoSanRemo1924
,milanoSanRemo1925
,milanoSanRemo1926
,milanoSanRemo1927
,milanoSanRemo1928
,milanoSanRemo1929
,milanoSanRemo1930
,milanoSanRemo1931
,milanoSanRemo1932
,milanoSanRemo1933
,milanoSanRemo1934
,milanoSanRemo1935
,milanoSanRemo1936
,milanoSanRemo1937
,milanoSanRemo1938
,milanoSanRemo1939
,milanoSanRemo1940
,milanoSanRemo1941
,milanoSanRemo1942
,milanoSanRemo1943
,milanoSanRemo1946
,milanoSanRemo1947
,milanoSanRemo1948
,milanoSanRemo1949
,milanoSanRemo1950
,milanoSanRemo1951
,milanoSanRemo1952
,milanoSanRemo1953
,milanoSanRemo1954
,milanoSanRemo1955
,milanoSanRemo1956
,milanoSanRemo1957
,milanoSanRemo1958
,milanoSanRemo1959
,milanoSanRemo1960
,milanoSanRemo1961
,milanoSanRemo1962
,milanoSanRemo1963
,milanoSanRemo1964
,milanoSanRemo1965
,milanoSanRemo1966
,milanoSanRemo1967
,milanoSanRemo1968
,milanoSanRemo1969
,milanoSanRemo1970
,milanoSanRemo1971
,milanoSanRemo1972
,milanoSanRemo1973
,milanoSanRemo1974
,milanoSanRemo1975
,milanoSanRemo1976
,milanoSanRemo1977
,milanoSanRemo1978
,milanoSanRemo1979
,milanoSanRemo1980
,milanoSanRemo1981
,milanoSanRemo1982
,milanoSanRemo1983
,milanoSanRemo1984
,milanoSanRemo1985
,milanoSanRemo1986
,milanoSanRemo1987
,milanoSanRemo1988
,milanoSanRemo1989
,milanoSanRemo1990
,milanoSanRemo1991
,milanoSanRemo1992
,milanoSanRemo1993
,milanoSanRemo1994
,milanoSanRemo1995
,milanoSanRemo1996
,milanoSanRemo1997
,milanoSanRemo1998
,milanoSanRemo1999
,milanoSanRemo2000
,milanoSanRemo2001
,milanoSanRemo2002
,milanoSanRemo2003
,milanoSanRemo2004
,milanoSanRemo2005
,milanoSanRemo2006
,milanoSanRemo2007
,milanoSanRemo2008
,milanoSanRemo2009
,milanoSanRemo2010
,milanoSanRemo2011
,milanoSanRemo2012
,milanoSanRemo2013
,milanoSanRemo2014
,milanoSanRemo2015
,milanoSanRemo2016
,milanoSanRemo2017
,milanoSanRemo2018
,milanoSanRemo2019
,milanoSanRemoEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

milanoSanRemoEditions :: [Classic]
milanoSanRemoEditions = [ milanoSanRemo1907
                        , milanoSanRemo1908
                        , milanoSanRemo1909
                        , milanoSanRemo1910
                        , milanoSanRemo1911
                        , milanoSanRemo1912
                        , milanoSanRemo1913
                        , milanoSanRemo1914
                        , milanoSanRemo1915
                        , milanoSanRemo1917
                        , milanoSanRemo1918
                        , milanoSanRemo1919
                        , milanoSanRemo1920
                        , milanoSanRemo1921
                        , milanoSanRemo1922
                        , milanoSanRemo1923
                        , milanoSanRemo1924
                        , milanoSanRemo1925
                        , milanoSanRemo1926
                        , milanoSanRemo1927
                        , milanoSanRemo1928
                        , milanoSanRemo1929
                        , milanoSanRemo1930
                        , milanoSanRemo1931
                        , milanoSanRemo1932
                        , milanoSanRemo1933
                        , milanoSanRemo1934
                        , milanoSanRemo1935
                        , milanoSanRemo1936
                        , milanoSanRemo1937
                        , milanoSanRemo1938
                        , milanoSanRemo1939
                        , milanoSanRemo1940
                        , milanoSanRemo1941
                        , milanoSanRemo1942
                        , milanoSanRemo1943
                        , milanoSanRemo1946
                        , milanoSanRemo1947
                        , milanoSanRemo1948
                        , milanoSanRemo1949
                        , milanoSanRemo1950
                        , milanoSanRemo1951
                        , milanoSanRemo1952
                        , milanoSanRemo1953
                        , milanoSanRemo1954
                        , milanoSanRemo1955
                        , milanoSanRemo1956
                        , milanoSanRemo1957
                        , milanoSanRemo1958
                        , milanoSanRemo1959
                        , milanoSanRemo1960
                        , milanoSanRemo1961
                        , milanoSanRemo1962
                        , milanoSanRemo1963
                        , milanoSanRemo1964
                        , milanoSanRemo1965
                        , milanoSanRemo1966
                        , milanoSanRemo1967
                        , milanoSanRemo1968
                        , milanoSanRemo1969
                        , milanoSanRemo1970
                        , milanoSanRemo1971
                        , milanoSanRemo1972
                        , milanoSanRemo1973
                        , milanoSanRemo1974
                        , milanoSanRemo1975
                        , milanoSanRemo1976
                        , milanoSanRemo1977
                        , milanoSanRemo1978
                        , milanoSanRemo1979
                        , milanoSanRemo1980
                        , milanoSanRemo1981
                        , milanoSanRemo1982
                        , milanoSanRemo1983
                        , milanoSanRemo1984
                        , milanoSanRemo1985
                        , milanoSanRemo1986
                        , milanoSanRemo1987
                        , milanoSanRemo1988
                        , milanoSanRemo1989
                        , milanoSanRemo1990
                        , milanoSanRemo1991
                        , milanoSanRemo1992
                        , milanoSanRemo1993
                        , milanoSanRemo1994
                        , milanoSanRemo1995
                        , milanoSanRemo1996
                        , milanoSanRemo1997
                        , milanoSanRemo1998
                        , milanoSanRemo1999
                        , milanoSanRemo2000
                        , milanoSanRemo2001
                        , milanoSanRemo2002
                        , milanoSanRemo2003
                        , milanoSanRemo2004
                        , milanoSanRemo2005
                        , milanoSanRemo2006
                        , milanoSanRemo2007
                        , milanoSanRemo2008
                        , milanoSanRemo2009
                        , milanoSanRemo2010
                        , milanoSanRemo2011
                        , milanoSanRemo2012
                        , milanoSanRemo2013
                        , milanoSanRemo2014
                        , milanoSanRemo2015
                        , milanoSanRemo2016
                        , milanoSanRemo2017
                        , milanoSanRemo2018
                        , milanoSanRemo2019
                        ]

milanoSanRemo1907 :: Classic
milanoSanRemo1907 = evalState milanoSanRemo1907' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1907 4 14) 288 []))

milanoSanRemo1907' = do
  edition <- build
  return edition

milanoSanRemo1908 :: Classic
milanoSanRemo1908 = evalState milanoSanRemo1908' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1908 4 5) 283.4 []))

milanoSanRemo1908' = do
  edition <- build
  return edition

milanoSanRemo1909 :: Classic
milanoSanRemo1909 = evalState milanoSanRemo1909' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1909 4 9) 286.7 []))

milanoSanRemo1909' = do
  edition <- build
  return edition

milanoSanRemo1910 :: Classic
milanoSanRemo1910 = evalState milanoSanRemo1910' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1910 4 3) 289.3 []))

milanoSanRemo1910' = do
  edition <- build
  return edition

milanoSanRemo1911 :: Classic
milanoSanRemo1911 = evalState milanoSanRemo1911' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1911 4 2) 289.3 []))

milanoSanRemo1911' = do
  edition <- build
  return edition

milanoSanRemo1912 :: Classic
milanoSanRemo1912 = evalState milanoSanRemo1912' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1912 3 31) 289.7 []))

milanoSanRemo1912' = do
  edition <- build
  return edition

milanoSanRemo1913 :: Classic
milanoSanRemo1913 = evalState milanoSanRemo1913' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1913 3 30) 286.5 []))

milanoSanRemo1913' = do
  edition <- build
  return edition

milanoSanRemo1914 :: Classic
milanoSanRemo1914 = evalState milanoSanRemo1914' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1914 4 5) 286.5 []))

milanoSanRemo1914' = do
  edition <- build
  return edition

milanoSanRemo1915 :: Classic
milanoSanRemo1915 = evalState milanoSanRemo1915' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1915 3 28) 289 []))

milanoSanRemo1915' = do
  edition <- build
  return edition

milanoSanRemo1917 :: Classic
milanoSanRemo1917 = evalState milanoSanRemo1917' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1917 4 15) 286.5 []))

milanoSanRemo1917' = do
  edition <- build
  return edition

milanoSanRemo1918 :: Classic
milanoSanRemo1918 = evalState milanoSanRemo1918' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1918 4 14) 286.5 []))

milanoSanRemo1918' = do
  edition <- build
  return edition

milanoSanRemo1919 :: Classic
milanoSanRemo1919 = evalState milanoSanRemo1919' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1919 4 6) 286.5 []))

milanoSanRemo1919' = do
  edition <- build
  return edition

milanoSanRemo1920 :: Classic
milanoSanRemo1920 = evalState milanoSanRemo1920' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1920 3 25) 286.5 []))

milanoSanRemo1920' = do
  edition <- build
  return edition

milanoSanRemo1921 :: Classic
milanoSanRemo1921 = evalState milanoSanRemo1921' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1921 4 3) 286.5 []))

milanoSanRemo1921' = do
  edition <- build
  return edition

milanoSanRemo1922 :: Classic
milanoSanRemo1922 = evalState milanoSanRemo1922' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1922 3 28) 286.5 []))

milanoSanRemo1922' = do
  edition <- build
  return edition

milanoSanRemo1923 :: Classic
milanoSanRemo1923 = evalState milanoSanRemo1923' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1923 3 25) 286.5 []))

milanoSanRemo1923' = do
  edition <- build
  return edition

milanoSanRemo1924 :: Classic
milanoSanRemo1924 = evalState milanoSanRemo1924' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1924 3 16) 286.5 []))

milanoSanRemo1924' = do
  edition <- build
  return edition

milanoSanRemo1925 :: Classic
milanoSanRemo1925 = evalState milanoSanRemo1925' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1925 3 29) 286.5 []))

milanoSanRemo1925' = do
  edition <- build
  return edition

milanoSanRemo1926 :: Classic
milanoSanRemo1926 = evalState milanoSanRemo1926' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1926 3 21) 285.5 []))

milanoSanRemo1926' = do
  edition <- build
  return edition

milanoSanRemo1927 :: Classic
milanoSanRemo1927 = evalState milanoSanRemo1927' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1927 4 3) 285.5 []))

milanoSanRemo1927' = do
  edition <- build
  return edition

milanoSanRemo1928 :: Classic
milanoSanRemo1928 = evalState milanoSanRemo1928' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1928 3 25) 286.5 []))

milanoSanRemo1928' = do
  edition <- build
  return edition

milanoSanRemo1929 :: Classic
milanoSanRemo1929 = evalState milanoSanRemo1929' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1929 3 19) 286.5 []))

milanoSanRemo1929' = do
  edition <- build
  return edition

milanoSanRemo1930 :: Classic
milanoSanRemo1930 = evalState milanoSanRemo1930' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1930 3 30) 285.5 []))

milanoSanRemo1930' = do
  edition <- build
  return edition

milanoSanRemo1931 :: Classic
milanoSanRemo1931 = evalState milanoSanRemo1931' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1931 3 22) 286 []))

milanoSanRemo1931' = do
  edition <- build
  return edition

milanoSanRemo1932 :: Classic
milanoSanRemo1932 = evalState milanoSanRemo1932' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1932 3 20) 284.5 []))

milanoSanRemo1932' = do
  edition <- build
  return edition

milanoSanRemo1933 :: Classic
milanoSanRemo1933 = evalState milanoSanRemo1933' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1933 3 26) 281.5 []))

milanoSanRemo1933' = do
  edition <- build
  return edition

milanoSanRemo1934 :: Classic
milanoSanRemo1934 = evalState milanoSanRemo1934' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1934 3 26) 281.5 []))

milanoSanRemo1934' = do
  edition <- build
  return edition

milanoSanRemo1935 :: Classic
milanoSanRemo1935 = evalState milanoSanRemo1935' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1935 3 17) 281.5 []))

milanoSanRemo1935' = do
  edition <- build
  return edition

milanoSanRemo1936 :: Classic
milanoSanRemo1936 = evalState milanoSanRemo1936' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1936 3 19) 281.5 []))

milanoSanRemo1936' = do
  edition <- build
  return edition

milanoSanRemo1937 :: Classic
milanoSanRemo1937 = evalState milanoSanRemo1937' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1937 3 19) 281.5 []))

milanoSanRemo1937' = do
  edition <- build
  return edition

milanoSanRemo1938 :: Classic
milanoSanRemo1938 = evalState milanoSanRemo1938' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1938 3 19) 281.5 []))

milanoSanRemo1938' = do
  edition <- build
  return edition

milanoSanRemo1939 :: Classic
milanoSanRemo1939 = evalState milanoSanRemo1939' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1939 3 19) 281.5 []))

milanoSanRemo1939' = do
  edition <- build
  return edition

milanoSanRemo1940 :: Classic
milanoSanRemo1940 = evalState milanoSanRemo1940' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1940 3 19) 281.5 []))

milanoSanRemo1940' = do
  edition <- build
  return edition

milanoSanRemo1941 :: Classic
milanoSanRemo1941 = evalState milanoSanRemo1941' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1941 3 19) 281.5 []))

milanoSanRemo1941' = do
  edition <- build
  return edition

milanoSanRemo1942 :: Classic
milanoSanRemo1942 = evalState milanoSanRemo1942' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1942 3 19) 281.5 []))

milanoSanRemo1942' = do
  edition <- build
  return edition

milanoSanRemo1943 :: Classic
milanoSanRemo1943 = evalState milanoSanRemo1943' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1943 3 19) 281.5 []))

milanoSanRemo1943' = do
  edition <- build
  return edition

milanoSanRemo1946 :: Classic
milanoSanRemo1946 = evalState milanoSanRemo1946' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1946 3 19) 293 []))

milanoSanRemo1946' = do
  edition <- build
  return edition

milanoSanRemo1947 :: Classic
milanoSanRemo1947 = evalState milanoSanRemo1947' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1947 3 19) 285 []))

milanoSanRemo1947' = do
  edition <- build
  return edition

milanoSanRemo1948 :: Classic
milanoSanRemo1948 = evalState milanoSanRemo1948' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1948 3 19) 285 []))

milanoSanRemo1948' = do
  edition <- build
  return edition

milanoSanRemo1949 :: Classic
milanoSanRemo1949 = evalState milanoSanRemo1949' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1949 3 19) 285 []))

milanoSanRemo1949' = do
  edition <- build
  return edition

milanoSanRemo1950 :: Classic
milanoSanRemo1950 = evalState milanoSanRemo1950' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1950 3 18) 282 []))

milanoSanRemo1950' = do
  edition <- build
  return edition

milanoSanRemo1951 :: Classic
milanoSanRemo1951 = evalState milanoSanRemo1951' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1951 3 19) 282 []))

milanoSanRemo1951' = do
  edition <- build
  return edition

milanoSanRemo1952 :: Classic
milanoSanRemo1952 = evalState milanoSanRemo1952' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1952 3 19) 282 []))

milanoSanRemo1952' = do
  edition <- build
  return edition

milanoSanRemo1953 :: Classic
milanoSanRemo1953 = evalState milanoSanRemo1953' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1953 3 19) 282 []))

milanoSanRemo1953' = do
  edition <- build
  return edition

milanoSanRemo1954 :: Classic
milanoSanRemo1954 = evalState milanoSanRemo1954' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1954 3 19) 282 []))

milanoSanRemo1954' = do
  edition <- build
  return edition

milanoSanRemo1955 :: Classic
milanoSanRemo1955 = evalState milanoSanRemo1955' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1955 3 19) 282 []))

milanoSanRemo1955' = do
  edition <- build
  return edition

milanoSanRemo1956 :: Classic
milanoSanRemo1956 = evalState milanoSanRemo1956' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1956 3 19) 281 []))

milanoSanRemo1956' = do
  edition <- build
  return edition

milanoSanRemo1957 :: Classic
milanoSanRemo1957 = evalState milanoSanRemo1957' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1957 3 19) 282 []))

milanoSanRemo1957' = do
  edition <- build
  return edition

milanoSanRemo1958 :: Classic
milanoSanRemo1958 = evalState milanoSanRemo1958' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1958 3 19) 282 []))

milanoSanRemo1958' = do
  edition <- build
  return edition

milanoSanRemo1959 :: Classic
milanoSanRemo1959 = evalState milanoSanRemo1959' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1959 3 19) 281 []))

milanoSanRemo1959' = do
  edition <- build
  return edition

milanoSanRemo1960 :: Classic
milanoSanRemo1960 = evalState milanoSanRemo1960' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1960 3 19) 288 []))

milanoSanRemo1960' = do
  edition <- build
  return edition

milanoSanRemo1961 :: Classic
milanoSanRemo1961 = evalState milanoSanRemo1961' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1961 3 19) 288 []))

milanoSanRemo1961' = do
  edition <- build
  return edition

milanoSanRemo1962 :: Classic
milanoSanRemo1962 = evalState milanoSanRemo1962' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1962 3 19) 288 []))

milanoSanRemo1962' = do
  edition <- build
  return edition

milanoSanRemo1963 :: Classic
milanoSanRemo1963 = evalState milanoSanRemo1963' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1963 3 19) 288 []))

milanoSanRemo1963' = do
  edition <- build
  return edition

milanoSanRemo1964 :: Classic
milanoSanRemo1964 = evalState milanoSanRemo1964' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1964 3 19) 288 []))

milanoSanRemo1964' = do
  edition <- build
  return edition

milanoSanRemo1965 :: Classic
milanoSanRemo1965 = evalState milanoSanRemo1965' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1965 3 19) 287 []))

milanoSanRemo1965' = do
  edition <- build
  return edition

milanoSanRemo1966 :: Classic
milanoSanRemo1966 = evalState milanoSanRemo1966' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1966 3 20) 290 []))

milanoSanRemo1966' = do
  edition <- build
  return edition

milanoSanRemo1967 :: Classic
milanoSanRemo1967 = evalState milanoSanRemo1967' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1967 3 18) 288 []))

milanoSanRemo1967' = do
  edition <- build
  return edition

milanoSanRemo1968 :: Classic
milanoSanRemo1968 = evalState milanoSanRemo1968' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1968 3 19) 288 []))

milanoSanRemo1968' = do
  edition <- build
  return edition

milanoSanRemo1969 :: Classic
milanoSanRemo1969 = evalState milanoSanRemo1969' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1969 3 19) 288 []))

milanoSanRemo1969' = do
  edition <- build
  return edition

milanoSanRemo1970 :: Classic
milanoSanRemo1970 = evalState milanoSanRemo1970' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1970 3 19) 288 []))

milanoSanRemo1970' = do
  edition <- build
  return edition

milanoSanRemo1971 :: Classic
milanoSanRemo1971 = evalState milanoSanRemo1971' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1971 3 19) 288 []))

milanoSanRemo1971' = do
  edition <- build
  return edition

milanoSanRemo1972 :: Classic
milanoSanRemo1972 = evalState milanoSanRemo1972' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1972 3 18) 288 []))

milanoSanRemo1972' = do
  edition <- build
  return edition

milanoSanRemo1973 :: Classic
milanoSanRemo1973 = evalState milanoSanRemo1973' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1973 3 19) 288 []))

milanoSanRemo1973' = do
  edition <- build
  return edition

milanoSanRemo1974 :: Classic
milanoSanRemo1974 = evalState milanoSanRemo1974' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1974 3 18) 288 []))

milanoSanRemo1974' = do
  edition <- build
  return edition

milanoSanRemo1975 :: Classic
milanoSanRemo1975 = evalState milanoSanRemo1975' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1975 3 19) 288 []))

milanoSanRemo1975' = do
  edition <- build
  return edition

milanoSanRemo1976 :: Classic
milanoSanRemo1976 = evalState milanoSanRemo1976' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1976 3 19) 288 []))

milanoSanRemo1976' = do
  edition <- build
  return edition

milanoSanRemo1977 :: Classic
milanoSanRemo1977 = evalState milanoSanRemo1977' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1977 3 19) 288 []))

milanoSanRemo1977' = do
  edition <- build
  return edition

milanoSanRemo1978 :: Classic
milanoSanRemo1978 = evalState milanoSanRemo1978' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1978 3 18) 288 []))

milanoSanRemo1978' = do
  edition <- build
  return edition

milanoSanRemo1979 :: Classic
milanoSanRemo1979 = evalState milanoSanRemo1979' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1979 3 17) 288 []))

milanoSanRemo1979' = do
  edition <- build
  return edition

milanoSanRemo1980 :: Classic
milanoSanRemo1980 = evalState milanoSanRemo1980' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1980 3 19) 288 []))

milanoSanRemo1980' = do
  edition <- build
  return edition

milanoSanRemo1981 :: Classic
milanoSanRemo1981 = evalState milanoSanRemo1981' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1981 3 21) 288 []))

milanoSanRemo1981' = do
  edition <- build
  return edition

milanoSanRemo1982 :: Classic
milanoSanRemo1982 = evalState milanoSanRemo1982' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1982 4 14) 294 []))

milanoSanRemo1982' = do
  edition <- build
  return edition

milanoSanRemo1983 :: Classic
milanoSanRemo1983 = evalState milanoSanRemo1983' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1983 3 19) 294 []))

milanoSanRemo1983' = do
  edition <- build
  return edition

milanoSanRemo1984 :: Classic
milanoSanRemo1984 = evalState milanoSanRemo1984' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1984 3 17) 294 []))

milanoSanRemo1984' = do
  edition <- build
  return edition

milanoSanRemo1985 :: Classic
milanoSanRemo1985 = evalState milanoSanRemo1985' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1985 3 16) 294 []))

milanoSanRemo1985' = do
  edition <- build
  return edition

milanoSanRemo1986 :: Classic
milanoSanRemo1986 = evalState milanoSanRemo1986' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1986 3 15) 293 []))

milanoSanRemo1986' = do
  edition <- build
  return edition

milanoSanRemo1987 :: Classic
milanoSanRemo1987 = evalState milanoSanRemo1987' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1987 3 21) 294 []))

milanoSanRemo1987' = do
  edition <- build
  return edition

milanoSanRemo1988 :: Classic
milanoSanRemo1988 = evalState milanoSanRemo1988' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1988 3 19) 294 []))

milanoSanRemo1988' = do
  edition <- build
  return edition

milanoSanRemo1989 :: Classic
milanoSanRemo1989 = evalState milanoSanRemo1989' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1989 3 18) 294 []))

milanoSanRemo1989' = do
  edition <- build
  return edition

milanoSanRemo1990 :: Classic
milanoSanRemo1990 = evalState milanoSanRemo1990' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1990 3 17) 294 []))

milanoSanRemo1990' = do
  edition <- build
  return edition

milanoSanRemo1991 :: Classic
milanoSanRemo1991 = evalState milanoSanRemo1991' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1991 3 23) 294 []))

milanoSanRemo1991' = do
  edition <- build
  return edition

milanoSanRemo1992 :: Classic
milanoSanRemo1992 = evalState milanoSanRemo1992' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1992 3 21) 294 []))

milanoSanRemo1992' = do
  edition <- build
  return edition

milanoSanRemo1993 :: Classic
milanoSanRemo1993 = evalState milanoSanRemo1993' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1993 3 20) 297 []))

milanoSanRemo1993' = do
  edition <- build
  return edition

milanoSanRemo1994 :: Classic
milanoSanRemo1994 = evalState milanoSanRemo1994' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1994 3 19) 294 []))

milanoSanRemo1994' = do
  edition <- build
  return edition

milanoSanRemo1995 :: Classic
milanoSanRemo1995 = evalState milanoSanRemo1995' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1995 3 18) 294 []))

milanoSanRemo1995' = do
  edition <- build
  return edition

milanoSanRemo1996 :: Classic
milanoSanRemo1996 = evalState milanoSanRemo1996' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1996 3 23) 294 []))

milanoSanRemo1996' = do
  edition <- build
  return edition

milanoSanRemo1997 :: Classic
milanoSanRemo1997 = evalState milanoSanRemo1997' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1997 3 22) 294 []))

milanoSanRemo1997' = do
  edition <- build
  return edition

milanoSanRemo1998 :: Classic
milanoSanRemo1998 = evalState milanoSanRemo1998' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1998 3 21) 294 []))

milanoSanRemo1998' = do
  edition <- build
  return edition

milanoSanRemo1999 :: Classic
milanoSanRemo1999 = evalState milanoSanRemo1999' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 1999 3 20) 294 []))

milanoSanRemo1999' = do
  edition <- build
  return edition

milanoSanRemo2000 :: Classic
milanoSanRemo2000 = evalState milanoSanRemo2000' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2000 3 24) 294 []))

milanoSanRemo2000' = do
  edition <- build
  return edition

milanoSanRemo2001 :: Classic
milanoSanRemo2001 = evalState milanoSanRemo2001' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2001 3 24) 287 []))

milanoSanRemo2001' = do
  edition <- build
  return edition

milanoSanRemo2002 :: Classic
milanoSanRemo2002 = evalState milanoSanRemo2002' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2002 3 23) 294 []))

milanoSanRemo2002' = do
  edition <- build
  return edition

milanoSanRemo2003 :: Classic
milanoSanRemo2003 = evalState milanoSanRemo2003' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2003 3 22) 297 []))

milanoSanRemo2003' = do
  edition <- build
  return edition

milanoSanRemo2004 :: Classic
milanoSanRemo2004 = evalState milanoSanRemo2004' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2004 3 20) 294 []))

milanoSanRemo2004' = do
  edition <- build
  return edition

milanoSanRemo2005 :: Classic
milanoSanRemo2005 = evalState milanoSanRemo2005' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2005 3 19) 294 []))

milanoSanRemo2005' = do
  edition <- build
  return edition

milanoSanRemo2006 :: Classic
milanoSanRemo2006 = evalState milanoSanRemo2006' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2006 3 18) 294 []))

milanoSanRemo2006' = do
  edition <- build
  return edition

milanoSanRemo2007 :: Classic
milanoSanRemo2007 = evalState milanoSanRemo2007' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2007 3 24) 294 []))

milanoSanRemo2007' = do
  edition <- build
  return edition

milanoSanRemo2008 :: Classic
milanoSanRemo2008 = evalState milanoSanRemo2008' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2008 3 22) 298 []))

milanoSanRemo2008' = do
  edition <- build
  return edition

milanoSanRemo2009 :: Classic
milanoSanRemo2009 = evalState milanoSanRemo2009' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2009 3 21) 298 []))

milanoSanRemo2009' = do
  edition <- build
  return edition

milanoSanRemo2010 :: Classic
milanoSanRemo2010 = evalState milanoSanRemo2010' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2010 3 20) 298 []))

milanoSanRemo2010' = do
  edition <- build
  return edition

milanoSanRemo2011 :: Classic
milanoSanRemo2011 = evalState milanoSanRemo2011' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2011 3 19) 298 []))

milanoSanRemo2011' = do
  edition <- build
  return edition

milanoSanRemo2012 :: Classic
milanoSanRemo2012 = evalState milanoSanRemo2012' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2012 3 17) 298 []))

milanoSanRemo2012' = do
  edition <- build
  return edition

milanoSanRemo2013 :: Classic
milanoSanRemo2013 = evalState milanoSanRemo2013' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2013 3 17) 245 []))

milanoSanRemo2013' = do
  edition <- build
  return edition

milanoSanRemo2014 :: Classic
milanoSanRemo2014 = evalState milanoSanRemo2014' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2014 3 23) 294 []))

milanoSanRemo2014' = do
  edition <- build
  return edition

milanoSanRemo2015 :: Classic
milanoSanRemo2015 = evalState milanoSanRemo2015' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2015 3 22) 293 []))

milanoSanRemo2015' = do
  edition <- build
  return edition

milanoSanRemo2016 :: Classic
milanoSanRemo2016 = evalState milanoSanRemo2016' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2016 3 19) 293 []))

milanoSanRemo2016' = do
  edition <- build
  return edition

milanoSanRemo2017 :: Classic
milanoSanRemo2017 = evalState milanoSanRemo2017' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2017 3 18) 291 []))

milanoSanRemo2017' = do
  edition <- build
  return edition

milanoSanRemo2018 :: Classic
milanoSanRemo2018 =
  evalState milanoSanRemo2018' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2018 3 17) 294 [] ))

milanoSanRemo2018' = do
  cote 142.2 "Passo del Turchino" 532
  cote 239.5 "Capo Mele" 67
  cote 247.4 "Capo Cervo" 61
  cote 252.6 "Capo Berta" 130
  cote 269.5 "Cipressa" 239
  cote 285.6 "Poggio" 160
  edition <- build
  return edition

milanoSanRemo2019 :: Classic
milanoSanRemo2019 = evalState milanoSanRemo2019' (ParcoursDB.State.Classic.init (MilanoSanRemo (fromGregorian 2019 3 23) 291 []))

milanoSanRemo2019' = do
  edition <- build
  return edition
