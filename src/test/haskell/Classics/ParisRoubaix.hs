-- file Classics.ParisRoubaix.hs
module Classics.ParisRoubaix
( parisRoubaix1896
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
, parisRoubaix2000
, parisRoubaix2001
, parisRoubaix2002
, parisRoubaix2003
, parisRoubaix2004
, parisRoubaix2005
, parisRoubaix2006
, parisRoubaix2007
, parisRoubaix2008
, parisRoubaix2009
, parisRoubaix2010
, parisRoubaix2011
, parisRoubaix2012
, parisRoubaix2013
, parisRoubaix2014
, parisRoubaix2015
, parisRoubaix2016
, parisRoubaix2017
, parisRoubaix2018
, parisRoubaixEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave
import ParcoursDB.State.Classic

parisRoubaixEditions = [ parisRoubaix1896
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
                       , parisRoubaix2000
                       , parisRoubaix2001
                       , parisRoubaix2002
                       , parisRoubaix2003
                       , parisRoubaix2004
                       , parisRoubaix2005
                       , parisRoubaix2006
                       , parisRoubaix2007
                       , parisRoubaix2008
                       , parisRoubaix2009
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

parisRoubaix1896 :: Classic
parisRoubaix1896 = evalState parisRoubaix1896' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1896 4 19) 280 []))

parisRoubaix1896' = do
  edition <- build
  return edition

parisRoubaix1897 :: Classic
parisRoubaix1897 = evalState parisRoubaix1897' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1897 4 18) 280 []))

parisRoubaix1897' = do
  edition <- build
  return edition

parisRoubaix1898 :: Classic
parisRoubaix1898 = evalState parisRoubaix1898' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1898 4 10) 268 []))

parisRoubaix1898' = do
  edition <- build
  return edition

parisRoubaix1899 :: Classic
parisRoubaix1899 = evalState parisRoubaix1899' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1899 4 2) 268 []))

parisRoubaix1899' = do
  edition <- build
  return edition

parisRoubaix1900 :: Classic
parisRoubaix1900 = evalState parisRoubaix1900' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1900 4 15) 268 []))

parisRoubaix1900' = do
  edition <- build
  return edition

parisRoubaix1901 :: Classic
parisRoubaix1901 = evalState parisRoubaix1901' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1901 4 7) 280 []))

parisRoubaix1901' = do
  edition <- build
  return edition

parisRoubaix1902 :: Classic
parisRoubaix1902 = evalState parisRoubaix1902' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1902 3 30) 268 []))

parisRoubaix1902' = do
  edition <- build
  return edition

parisRoubaix1903 :: Classic
parisRoubaix1903 = evalState parisRoubaix1903' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1903 4 12) 268 []))

parisRoubaix1903' = do
  edition <- build
  return edition

parisRoubaix1904 :: Classic
parisRoubaix1904 = evalState parisRoubaix1904' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1904 4 3) 268 []))

parisRoubaix1904' = do
  edition <- build
  return edition

parisRoubaix1905 :: Classic
parisRoubaix1905 = evalState parisRoubaix1905' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1905 4 23) 268 []))

parisRoubaix1905' = do
  edition <- build
  return edition

parisRoubaix1906 :: Classic
parisRoubaix1906 = evalState parisRoubaix1906' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1906 4 15) 270 []))

parisRoubaix1906' = do
  edition <- build
  return edition

parisRoubaix1907 :: Classic
parisRoubaix1907 = evalState parisRoubaix1907' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1907 3 31) 270 []))

parisRoubaix1907' = do
  edition <- build
  return edition

parisRoubaix1908 :: Classic
parisRoubaix1908 = evalState parisRoubaix1908' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1908 4 19) 271 []))

parisRoubaix1908' = do
  edition <- build
  return edition

parisRoubaix1909 :: Classic
parisRoubaix1909 = evalState parisRoubaix1909' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1909 4 11) 276 []))

parisRoubaix1909' = do
  edition <- build
  return edition

parisRoubaix1910 :: Classic
parisRoubaix1910 = evalState parisRoubaix1910' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1910 3 27) 266 []))

parisRoubaix1910' = do
  edition <- build
  return edition

parisRoubaix1911 :: Classic
parisRoubaix1911 = evalState parisRoubaix1911' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1911 3 27) 266 []))

parisRoubaix1911' = do
  edition <- build
  return edition

parisRoubaix1912 :: Classic
parisRoubaix1912 = evalState parisRoubaix1912' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1912 4 7) 266 []))

parisRoubaix1912' = do
  edition <- build
  return edition

parisRoubaix1913 :: Classic
parisRoubaix1913 = evalState parisRoubaix1913' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1913 3 23) 265 []))

parisRoubaix1913' = do
  edition <- build
  return edition

parisRoubaix1914 :: Classic
parisRoubaix1914 = evalState parisRoubaix1914' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1914 4 12) 274 []))

parisRoubaix1914' = do
  edition <- build
  return edition

parisRoubaix1919 :: Classic
parisRoubaix1919 = evalState parisRoubaix1919' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1919 4 20) 280 []))

parisRoubaix1919' = do
  edition <- build
  return edition

parisRoubaix1920 :: Classic
parisRoubaix1920 = evalState parisRoubaix1920' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1920 4 11) 280 []))

parisRoubaix1920' = do
  edition <- build
  return edition

parisRoubaix1921 :: Classic
parisRoubaix1921 = evalState parisRoubaix1921' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1921 3 27) 263 []))

parisRoubaix1921' = do
  edition <- build
  return edition

parisRoubaix1922 :: Classic
parisRoubaix1922 = evalState parisRoubaix1922' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1922 4 16) 262 []))

parisRoubaix1922' = do
  edition <- build
  return edition

parisRoubaix1923 :: Classic
parisRoubaix1923 = evalState parisRoubaix1923' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1923 4 1) 270 []))

parisRoubaix1923' = do
  edition <- build
  return edition

parisRoubaix1924 :: Classic
parisRoubaix1924 = evalState parisRoubaix1924' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1924 4 6) 270 []))

parisRoubaix1924' = do
  edition <- build
  return edition

parisRoubaix1925 :: Classic
parisRoubaix1925 = evalState parisRoubaix1925' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1925 4 12) 260 []))

parisRoubaix1925' = do
  edition <- build
  return edition

parisRoubaix1926 :: Classic
parisRoubaix1926 = evalState parisRoubaix1926' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1926 4 4) 270 []))

parisRoubaix1926' = do
  edition <- build
  return edition

parisRoubaix1927 :: Classic
parisRoubaix1927 = evalState parisRoubaix1927' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1927 4 17) 260 []))

parisRoubaix1927' = do
  edition <- build
  return edition

parisRoubaix1928 :: Classic
parisRoubaix1928 = evalState parisRoubaix1928' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1928 4 8) 260 []))

parisRoubaix1928' = do
  edition <- build
  return edition

parisRoubaix1929 :: Classic
parisRoubaix1929 = evalState parisRoubaix1929' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1929 3 31) 260 []))

parisRoubaix1929' = do
  edition <- build
  return edition

parisRoubaix1930 :: Classic
parisRoubaix1930 = evalState parisRoubaix1930' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1930 4 20) 258 []))

parisRoubaix1930' = do
  edition <- build
  return edition

parisRoubaix1931 :: Classic
parisRoubaix1931 = evalState parisRoubaix1931' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1931 4 5) 256 []))

parisRoubaix1931' = do
  edition <- build
  return edition

parisRoubaix1932 :: Classic
parisRoubaix1932 = evalState parisRoubaix1932' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1932 3 27) 255 []))

parisRoubaix1932' = do
  edition <- build
  return edition

parisRoubaix1933 :: Classic
parisRoubaix1933 = evalState parisRoubaix1933' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1933 4 16) 255 []))

parisRoubaix1933' = do
  edition <- build
  return edition

parisRoubaix1934 :: Classic
parisRoubaix1934 = evalState parisRoubaix1934' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1934 4 1) 255 []))

parisRoubaix1934' = do
  edition <- build
  return edition

parisRoubaix1935 :: Classic
parisRoubaix1935 = evalState parisRoubaix1935' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1935 4 21) 262 []))

parisRoubaix1935' = do
  edition <- build
  return edition

parisRoubaix1936 :: Classic
parisRoubaix1936 = evalState parisRoubaix1936' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1936 4 12) 262 []))

parisRoubaix1936' = do
  edition <- build
  return edition

parisRoubaix1937 :: Classic
parisRoubaix1937 = evalState parisRoubaix1937' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1937 3 28) 255 []))

parisRoubaix1937' = do
  edition <- build
  return edition

parisRoubaix1938 :: Classic
parisRoubaix1938 = evalState parisRoubaix1938' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1938 4 17) 255 []))

parisRoubaix1938' = do
  edition <- build
  return edition

parisRoubaix1939 :: Classic
parisRoubaix1939 = evalState parisRoubaix1939' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1939 4 9) 262 []))

parisRoubaix1939' = do
  edition <- build
  return edition

parisRoubaix1943 :: Classic
parisRoubaix1943 = evalState parisRoubaix1943' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1943 4 25) 250 []))

parisRoubaix1943' = do
  edition <- build
  return edition

parisRoubaix1944 :: Classic
parisRoubaix1944 = evalState parisRoubaix1944' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1944 4 9) 246 []))

parisRoubaix1944' = do
  edition <- build
  return edition

parisRoubaix1945 :: Classic
parisRoubaix1945 = evalState parisRoubaix1945' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1945 4 8) 246 []))

parisRoubaix1945' = do
  edition <- build
  return edition

parisRoubaix1946 :: Classic
parisRoubaix1946 = evalState parisRoubaix1946' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1946 4 14) 246 []))

parisRoubaix1946' = do
  edition <- build
  return edition

parisRoubaix1947 :: Classic
parisRoubaix1947 = evalState parisRoubaix1947' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1947 4 13) 246 []))

parisRoubaix1947' = do
  edition <- build
  return edition

parisRoubaix1948 :: Classic
parisRoubaix1948 = evalState parisRoubaix1948' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1948 4 11) 246 []))

parisRoubaix1948' = do
  edition <- build
  return edition

parisRoubaix1949 :: Classic
parisRoubaix1949 = evalState parisRoubaix1949' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1949 4 17) 244 []))

parisRoubaix1949' = do
  edition <- build
  return edition

parisRoubaix1950 :: Classic
parisRoubaix1950 = evalState parisRoubaix1950' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1950 4 9) 247 []))

parisRoubaix1950' = do
  edition <- build
  return edition

parisRoubaix1951 :: Classic
parisRoubaix1951 = evalState parisRoubaix1951' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1951 4 8) 247 []))

parisRoubaix1951' = do
  edition <- build
  return edition

parisRoubaix1952 :: Classic
parisRoubaix1952 = evalState parisRoubaix1952' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1952 4 13) 245 []))

parisRoubaix1952' = do
  edition <- build
  return edition

parisRoubaix1953 :: Classic
parisRoubaix1953 = evalState parisRoubaix1953' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1953 4 12) 245 []))

parisRoubaix1953' = do
  edition <- build
  return edition

parisRoubaix1954 :: Classic
parisRoubaix1954 = evalState parisRoubaix1954' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1954 4 11) 246 []))

parisRoubaix1954' = do
  edition <- build
  return edition

parisRoubaix1955 :: Classic
parisRoubaix1955 = evalState parisRoubaix1955' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1955 4 10) 249 []))

parisRoubaix1955' = do
  edition <- build
  return edition

parisRoubaix1956 :: Classic
parisRoubaix1956 = evalState parisRoubaix1956' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1956 4 8) 252 []))

parisRoubaix1956' = do
  edition <- build
  return edition

parisRoubaix1957 :: Classic
parisRoubaix1957 = evalState parisRoubaix1957' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1957 4 7) 253 []))

parisRoubaix1957' = do
  edition <- build
  return edition

parisRoubaix1958 :: Classic
parisRoubaix1958 = evalState parisRoubaix1958' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1958 4 13) 269 []))

parisRoubaix1958' = do
  edition <- build
  return edition

parisRoubaix1959 :: Classic
parisRoubaix1959 = evalState parisRoubaix1959' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1959 4 12) 262.5 []))

parisRoubaix1959' = do
  edition <- build
  return edition

parisRoubaix1960 :: Classic
parisRoubaix1960 = evalState parisRoubaix1960' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1960 4 10) 262.5 []))

parisRoubaix1960' = do
  edition <- build
  return edition

parisRoubaix1961 :: Classic
parisRoubaix1961 = evalState parisRoubaix1961' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1961 4 9) 263 []))

parisRoubaix1961' = do
  edition <- build
  return edition

parisRoubaix1962 :: Classic
parisRoubaix1962 = evalState parisRoubaix1962' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1962 4 8) 258 []))

parisRoubaix1962' = do
  edition <- build
  return edition

parisRoubaix1963 :: Classic
parisRoubaix1963 = evalState parisRoubaix1963' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1963 4 7) 266 []))

parisRoubaix1963' = do
  edition <- build
  return edition

parisRoubaix1964 :: Classic
parisRoubaix1964 = evalState parisRoubaix1964' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1964 4 19) 265 []))

parisRoubaix1964' = do
  edition <- build
  return edition

parisRoubaix1965 :: Classic
parisRoubaix1965 = evalState parisRoubaix1965' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1965 4 11) 267.5 []))

parisRoubaix1965' = do
  edition <- build
  return edition

parisRoubaix1966 :: Classic
parisRoubaix1966 = evalState parisRoubaix1966' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1966 4 17) 262.5 []))

parisRoubaix1966' = do
  edition <- build
  return edition

parisRoubaix1967 :: Classic
parisRoubaix1967 = evalState parisRoubaix1967' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1967 4 9) 263 []))

parisRoubaix1967' = do
  edition <- build
  return edition

parisRoubaix1968 :: Classic
parisRoubaix1968 = evalState parisRoubaix1968' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1968 4 7) 262 []))

parisRoubaix1968' = do
  edition <- build
  return edition

parisRoubaix1969 :: Classic
parisRoubaix1969 = evalState parisRoubaix1969' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1969 4 13) 264 []))

parisRoubaix1969' = do
  edition <- build
  return edition

parisRoubaix1970 :: Classic
parisRoubaix1970 = evalState parisRoubaix1970' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1970 4 12) 266 []))

parisRoubaix1970' = do
  edition <- build
  return edition

parisRoubaix1971 :: Classic
parisRoubaix1971 = evalState parisRoubaix1971' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1971 4 18) 265.2 []))

parisRoubaix1971' = do
  edition <- build
  return edition

parisRoubaix1972 :: Classic
parisRoubaix1972 = evalState parisRoubaix1972' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1972 4 16) 272 []))

parisRoubaix1972' = do
  edition <- build
  return edition

parisRoubaix1973 :: Classic
parisRoubaix1973 = evalState parisRoubaix1973' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1973 4 15) 272.5 []))

parisRoubaix1973' = do
  edition <- build
  return edition

parisRoubaix1974 :: Classic
parisRoubaix1974 = evalState parisRoubaix1974' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1974 4 7) 274 []))

parisRoubaix1974' = do
  edition <- build
  return edition

parisRoubaix1975 :: Classic
parisRoubaix1975 = evalState parisRoubaix1975' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1975 4 13) 277.5 []))

parisRoubaix1975' = do
  edition <- build
  return edition

parisRoubaix1976 :: Classic
parisRoubaix1976 = evalState parisRoubaix1976' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1976 4 11) 270.5 []))

parisRoubaix1976' = do
  edition <- build
  return edition

parisRoubaix1977 :: Classic
parisRoubaix1977 = evalState parisRoubaix1977' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1977 4 17) 250.5 []))

parisRoubaix1977' = do
  edition <- build
  return edition

parisRoubaix1978 :: Classic
parisRoubaix1978 = evalState parisRoubaix1978' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1978 4 16) 263 []))

parisRoubaix1978' = do
  edition <- build
  return edition

parisRoubaix1979 :: Classic
parisRoubaix1979 = evalState parisRoubaix1979' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1979 4 8) 264 []))

parisRoubaix1979' = do
  edition <- build
  return edition

parisRoubaix1980 :: Classic
parisRoubaix1980 = evalState parisRoubaix1980' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1980 4 13) 264 []))

parisRoubaix1980' = do
  edition <- build
  return edition

parisRoubaix1981 :: Classic
parisRoubaix1981 = evalState parisRoubaix1981' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1981 4 12) 263 []))

parisRoubaix1981' = do
  edition <- build
  return edition

parisRoubaix1982 :: Classic
parisRoubaix1982 = evalState parisRoubaix1982' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1982 4 18) 270 []))

parisRoubaix1982' = do
  edition <- build
  return edition

parisRoubaix1983 :: Classic
parisRoubaix1983 = evalState parisRoubaix1983' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1983 4 10) 274 []))

parisRoubaix1983' = do
  edition <- build
  return edition

parisRoubaix1984 :: Classic
parisRoubaix1984 = evalState parisRoubaix1984' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1984 4 8) 265 []))

parisRoubaix1984' = do
  edition <- build
  return edition

parisRoubaix1985 :: Classic
parisRoubaix1985 = evalState parisRoubaix1985' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1985 4 14) 265 []))

parisRoubaix1985' = do
  edition <- build
  return edition

parisRoubaix1986 :: Classic
parisRoubaix1986 = evalState parisRoubaix1986' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1986 4 13) 268 []))

parisRoubaix1986' = do
  edition <- build
  return edition

parisRoubaix1987 :: Classic
parisRoubaix1987 = evalState parisRoubaix1987' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1987 4 12) 264 []))

parisRoubaix1987' = do
  edition <- build
  return edition

parisRoubaix1988 :: Classic
parisRoubaix1988 = evalState parisRoubaix1988' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1988 4 10) 266 []))

parisRoubaix1988' = do
  edition <- build
  return edition

parisRoubaix1989 :: Classic
parisRoubaix1989 = evalState parisRoubaix1989' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1989 4 9) 265 []))

parisRoubaix1989' = do
  edition <- build
  return edition

parisRoubaix1990 :: Classic
parisRoubaix1990 = evalState parisRoubaix1990' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1990 4 8) 265 []))

parisRoubaix1990' = do
  edition <- build
  return edition

parisRoubaix1991 :: Classic
parisRoubaix1991 = evalState parisRoubaix1991' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1991 4 14) 266 []))

parisRoubaix1991' = do
  edition <- build
  return edition

parisRoubaix1992 :: Classic
parisRoubaix1992 = evalState parisRoubaix1992' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1992 4 12) 267.5 []))

parisRoubaix1992' = do
  edition <- build
  return edition

parisRoubaix1993 :: Classic
parisRoubaix1993 = evalState parisRoubaix1993' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1993 4 11) 267.5 []))

parisRoubaix1993' = do
  edition <- build
  return edition

parisRoubaix1994 :: Classic
parisRoubaix1994 = evalState parisRoubaix1994' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1994 4 10) 270 []))

parisRoubaix1994' = do
  edition <- build
  return edition

parisRoubaix1995 :: Classic
parisRoubaix1995 = evalState parisRoubaix1995' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1995 4 9) 266 []))

parisRoubaix1995' = do
  edition <- build
  return edition

parisRoubaix1996 :: Classic
parisRoubaix1996 = evalState parisRoubaix1996' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1996 4 14) 262 []))

parisRoubaix1996' = do
  edition <- build
  return edition

parisRoubaix1997 :: Classic
parisRoubaix1997 = evalState parisRoubaix1997' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1997 4 13) 267 []))

parisRoubaix1997' = do
  edition <- build
  return edition

parisRoubaix1998 :: Classic
parisRoubaix1998 = evalState parisRoubaix1998' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1998 4 12) 266 []))

parisRoubaix1998' = do
  edition <- build
  return edition

parisRoubaix1999 :: Classic
parisRoubaix1999 = evalState parisRoubaix1999' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 1999 4 11) 273 []))

parisRoubaix1999' = do
  edition <- build
  return edition

parisRoubaix2000 :: Classic
parisRoubaix2000 = evalState parisRoubaix2000' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2000 4 10) 273 []))

parisRoubaix2000' = do
  edition <- build
  return edition

parisRoubaix2001 :: Classic
parisRoubaix2001 = evalState parisRoubaix2001' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2001 4 15) 254.5 []))

parisRoubaix2001' = do
  edition <- build
  return edition

parisRoubaix2002 :: Classic
parisRoubaix2002 = evalState parisRoubaix2002' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2002 4 14) 261 []))

parisRoubaix2002' = do
  edition <- build
  return edition

parisRoubaix2003 :: Classic
parisRoubaix2003 = evalState parisRoubaix2003' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2003 4 13) 261 []))

parisRoubaix2003' = do
  edition <- build
  return edition

parisRoubaix2004 :: Classic
parisRoubaix2004 = evalState parisRoubaix2004' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2004 4 11) 261 []))

parisRoubaix2004' = do
  edition <- build
  return edition

parisRoubaix2005 :: Classic
parisRoubaix2005 = evalState parisRoubaix2005' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2005 4 10) 259 []))

parisRoubaix2005' = do
  edition <- build
  return edition

parisRoubaix2006 :: Classic
parisRoubaix2006 = evalState parisRoubaix2006' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2006 4 9) 259 []))

parisRoubaix2006' = do
  edition <- build
  return edition

parisRoubaix2007 :: Classic
parisRoubaix2007 = evalState parisRoubaix2007' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2007 4 15) 259.5 []))

parisRoubaix2007' = do
  edition <- build
  return edition

parisRoubaix2008 :: Classic
parisRoubaix2008 = evalState parisRoubaix2008' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2008 4 13) 259.5 []))

parisRoubaix2008' = do
  edition <- build
  return edition

parisRoubaix2009 :: Classic
parisRoubaix2009 = evalState parisRoubaix2009' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2009 4 12) 259 []))

parisRoubaix2009' = do
  edition <- build
  return edition

parisRoubaix2010 :: Classic
parisRoubaix2010 = evalState parisRoubaix2010' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2010 4 11) 259 []))

parisRoubaix2010' = do
  edition <- build
  return edition

parisRoubaix2011 :: Classic
parisRoubaix2011 = evalState parisRoubaix2011' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2011 4 10) 258 []))

parisRoubaix2011' = do
  edition <- build
  return edition

parisRoubaix2012 :: Classic
parisRoubaix2012 = evalState parisRoubaix2012' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2012 4 8) 257.5 []))

parisRoubaix2012' = do
  edition <- build
  return edition

parisRoubaix2013 :: Classic
parisRoubaix2013 = evalState parisRoubaix2013' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2013 4 7) 254.5 []))

parisRoubaix2013' = do
  edition <- build
  return edition

parisRoubaix2014 :: Classic
parisRoubaix2014 = evalState parisRoubaix2014' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2014 4 13) 257 []))

parisRoubaix2014' = do
  edition <- build
  return edition

parisRoubaix2015 :: Classic
parisRoubaix2015 = evalState parisRoubaix2015' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2015 4 12) 253.5 []))

parisRoubaix2015' = do
  edition <- build
  return edition

parisRoubaix2016 :: Classic
parisRoubaix2016 = evalState parisRoubaix2016' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2016 4 10) 257.5 []))

parisRoubaix2016' = do
  edition <- build
  return edition

parisRoubaix2017 :: Classic
parisRoubaix2017 =
  evalState parisRoubaix2017' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2017 4 9) 257 []))

parisRoubaix2017' :: State ClassicState Classic
parisRoubaix2017' = do
  threeStarPavé "Troisvilles à Inchy" 2.2 97
  threeStarPavé "Viesly à Quiévy" 1.8 103.5
  fourStarPavé  "Quiévy à Saint Python" 3.7 106
  threeStarPavé "Viesly à Biastre" 3 112.5
  twoStarPavé   "Biastre à Solesmes" 0.8 116
  threeStarPavé "Vertain à Saint-Martin-sur-Ecaillon" 2.3 124.5
  threeStarPavé "Verchain-Maugré à Quérénaing" 1.6 134.5
  threeStarPavé "Quérénaing à Maing" 2.5 137.5
  threeStarPavé "Maing à Monchaux-sur-Ecaillon" 1.6 140.5
  fourStarPavé  "Haveluy à Wallers" 2.5 153.5
  fiveStarPavé  "Trouée d'Arenberg" 2.4 161.5
  threeStarPavé "Wallers à Hélesmes" 1.6 168
  fourStarPavé  "Hornaing à Wandignies" 3.7 174.5
  threeStarPavé "Warlaing à Brillion" 2.4 182
  fourStarPavé  "Tilloy à Sars-et-Rosières" 2.4 185.5
  threeStarPavé "Beuvry-la-Forêt à Orchies" 1.4 192
  threeStarPavé "Orchies" 1.7 197
  fourStarPavé  "Auchy-lez-Orchies à Bersée" 2.7 203
  fiveStarPavé  "Mons-en-Pévèle" 3 208.5
  twoStarPavé   "Mérignies à Avelin" 0.7 214.5
  threeStarPavé "Pont-Thibault à Ennevelin" 1.4 218
  twoStarPavé   "Templeuve" 0.5 224
  threeStarPavé "Cysoing à Bourghelles" 1.3 230.5
  threeStarPavé "Bourghelles à Wannehain" 1.1 233
  fourStarPavé  "Camphin-en-Pévèle" 1.8 237.5
  fiveStarPavé  "Carrefour de l'Arbre" 2.1 240
  twoStarPavé   "Grusson" 1.1 242.5
  threeStarPavé "Willems à Hem" 1.4 249
  oneStarPavé   "Roubaix" 0.3 256
  edition <- build
  return edition

parisRoubaix2018 :: Classic
parisRoubaix2018 =
  evalState parisRoubaix2018' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2018 4 8) 257 []))

parisRoubaix2018' :: State ClassicState Classic
parisRoubaix2018' = do
  threeStarPavé "Troisvilles"               2.2 93.5
  threeStarPavé "Briastre"                  3.0 100
  threeStarPavé "Saint-Python"              1.5 109
  fourStarPavé  "Quiévy"                    3.7 111.5
  threeStarPavé "Saint-Vaast"               1.5 119
  threeStarPavé "Verchain-Maugré"           1.5 130
  threeStarPavé "Quérénaing"                1.6 134.5
  threeStarPavé "Maing"                     2.5 137.5
  threeStarPavé "Monchaux-sur-Ecaillon"     1.6 140.5
  fourStarPavé  "Haveluy"                   2.5 153.5
  fiveStarPavé  "Trouée d'Arenberg"         2.4 162
  threeStarPavé "Hellesmes, dit Pont-Gibus" 1.6 168
  fourStarPavé  "Wandignies"                3.7 174.5
  threeStarPavé "Brillon"                   2.4 182
  fourStarPavé  "Sars-et-Rosières"          2.4 185.5
  threeStarPavé "Beuvry-la-Forêt"           1.4 192
  threeStarPavé "Orchies"                   1.7 197
  fourStarPavé  "Bersée"                    2.7 203
  fiveStarPavé  "Mons-en-Pévèle"            3.0 208.5
  twoStarPavé    "Mérignies à Avelin"        0.7 214.5
  threeStarPavé "Pont-Thibaut"              1.4 218

  let templeuve1 = Pave "Templeuve-L'Epinette" 0.2 OneStar
  let templeuve2 = Pave "Templeuve, Moulin de Vertain" 0.5 TwoStar
  addMultiplePavé (templeuve1, 223.5) (templeuve2, 224.0)

  threeStarPavé "Cysoing à Bourghelles"              1.3 230.5
  threeStarPavé "Bourghelles à Wannehain"            1.1 233
  fiveStarPavé  "Camphin-en-Pévèle"                  1.8 237.5
  fiveStarPavé  "Carrefour de l'Arbre"               2.1 240
  twoStarPavé   "Grouson"                            1.1 242.5
  threeStarPavé "Hem"                                1.4 249
  oneStarPavé   "Roubaix, espace Charles-Crupelandt" 0.3 256
  edition <- build
  return edition
