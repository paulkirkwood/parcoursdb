-- file Classics.ParisTours.hs
module Classics.ParisTours
(parisToursEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic hiding (gravel)
import ParcoursDB.State.Classic

parisToursEditions :: [Classic]
parisToursEditions = [ parisTours1896
                     , parisTours1901
                     , parisTours1906
                     , parisTours1907
                     , parisTours1908
                     , parisTours1909
                     , parisTours1910
                     , parisTours1911
                     , parisTours1912
                     , parisTours1913
                     , parisTours1914
                     , parisTours1917
                     , parisTours1918
                     , parisTours1919
                     , parisTours1920
                     , parisTours1921
                     , parisTours1922
                     , parisTours1923
                     , parisTours1924
                     , parisTours1925
                     , parisTours1926
                     , parisTours1927
                     , parisTours1928
                     , parisTours1929
                     , parisTours1930
                     , parisTours1931
                     , parisTours1932
                     , parisTours1933
                     , parisTours1934
                     , parisTours1935
                     , parisTours1936
                     , parisTours1937
                     , parisTours1938
                     , parisTours1939
                     , parisTours1941
                     , parisTours1942
                     , parisTours1943
                     , parisTours1944
                     , parisTours1945
                     , parisTours1946
                     , parisTours1947
                     , parisTours1948
                     , parisTours1949
                     , parisTours1950
                     , parisTours1951
                     , parisTours1952
                     , parisTours1953
                     , parisTours1954
                     , parisTours1955
                     , parisTours1956
                     , parisTours1957
                     , parisTours1958
                     , parisTours1959
                     , parisTours1960
                     , parisTours1961
                     , parisTours1962
                     , parisTours1963
                     , parisTours1964
                     , parisTours1965
                     , parisTours1966
                     , parisTours1967
                     , parisTours1968
                     , parisTours1969
                     , parisTours1970
                     , parisTours1971
                     , parisTours1972
                     , parisTours1973
                     , parisTours1974
                     , parisTours1975
                     , parisTours1976
                     , parisTours1977
                     , parisTours1978
                     , parisTours1979
                     , parisTours1980
                     , parisTours1981
                     , parisTours1982
                     , parisTours1983
                     , parisTours1984
                     , parisTours1985
                     , parisTours1986
                     , parisTours1987
                     , parisTours1988
                     , parisTours1989
                     , parisTours1990
                     , parisTours1991
                     , parisTours1992
                     , parisTours1993
                     , parisTours1994
                     , parisTours1995
                     , parisTours1996
                     , parisTours1997
                     , parisTours1998
                     , parisTours1999
                     , parisTours2000
                     , parisTours2001
                     , parisTours2002
                     , parisTours2003
                     , parisTours2004
                     , parisTours2005
                     , parisTours2006
                     , parisTours2007
                     , parisTours2008
                     , parisTours2009
                     , parisTours2010
                     , parisTours2011
                     , parisTours2012
                     , parisTours2013
                     , parisTours2014
                     , parisTours2015
                     , parisTours2016
                     , parisTours2017
                     , parisTours2018
                     ]

parisTours1896 :: Classic
parisTours1896 =
  evalState parisTours1896' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1896 5 17) 250 [] []))

parisTours1896' :: State ClassicState Classic
parisTours1896' = do
  edition <- build
  return edition

parisTours1901 :: Classic
parisTours1901 =
  evalState parisTours1901' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1901 6 30) 253 [] []))

parisTours1901' :: State ClassicState Classic
parisTours1901' = do
  edition <- build
  return edition

parisTours1906 :: Classic
parisTours1906 =
  evalState parisTours1906' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1906 9 30) 234 [] []))

parisTours1906' :: State ClassicState Classic
parisTours1906' = do
  edition <- build
  return edition

parisTours1907 :: Classic
parisTours1907 =
  evalState parisTours1907' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1907 9 22) 245 [] []))

parisTours1907' :: State ClassicState Classic
parisTours1907' = do
  edition <- build
  return edition

parisTours1908 :: Classic
parisTours1908 =
  evalState parisTours1908' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1908 9 27) 248 [] []))

parisTours1908' :: State ClassicState Classic
parisTours1908' = do
  edition <- build
  return edition

parisTours1909 :: Classic
parisTours1909 =
  evalState parisTours1909' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1909 9 26) 248 [] []))

parisTours1909' :: State ClassicState Classic
parisTours1909' = do
  edition <- build
  return edition

parisTours1910 :: Classic
parisTours1910 =
  evalState parisTours1910' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1910 9 25) 248 [] []))

parisTours1910' :: State ClassicState Classic
parisTours1910' = do
  edition <- build
  return edition

parisTours1911 :: Classic
parisTours1911 =
  evalState parisTours1911' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1911 4 2) 248 [] []))

parisTours1911' :: State ClassicState Classic
parisTours1911' = do
  edition <- build
  return edition

parisTours1912 :: Classic
parisTours1912 =
  evalState parisTours1912' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1912 3 24) 246 [] []))

parisTours1912' :: State ClassicState Classic
parisTours1912' = do
  edition <- build
  return edition

parisTours1913 :: Classic
parisTours1913 =
  evalState parisTours1913' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1913 4 6) 246 [] []))

parisTours1913' :: State ClassicState Classic
parisTours1913' = do
  edition <- build
  return edition

parisTours1914 :: Classic
parisTours1914 =
  evalState parisTours1914' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1914 4 19) 316 [] []))

parisTours1914' :: State ClassicState Classic
parisTours1914' = do
  edition <- build
  return edition

parisTours1917 :: Classic
parisTours1917 =
  evalState parisTours1917' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1917 5 6) 246 [] []))

parisTours1917' :: State ClassicState Classic
parisTours1917' = do
  edition <- build
  return edition

parisTours1918 :: Classic
parisTours1918 =
  evalState parisTours1918' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1918 5 19) 246 [] []))

parisTours1918' :: State ClassicState Classic
parisTours1918' = do
  edition <- build
  return edition

parisTours1919 :: Classic
parisTours1919 =
  evalState parisTours1919' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1919 6 8) 342 [] []))

parisTours1919' :: State ClassicState Classic
parisTours1919' = do
  edition <- build
  return edition

parisTours1920 :: Classic
parisTours1920 =
  evalState parisTours1920' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1920 5 2) 342 [] []))

parisTours1920' :: State ClassicState Classic
parisTours1920' = do
  edition <- build
  return edition

parisTours1921 :: Classic
parisTours1921 =
  evalState parisTours1921' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1921 4 17) 342 [] []))

parisTours1921' :: State ClassicState Classic
parisTours1921' = do
  edition <- build
  return edition

parisTours1922 :: Classic
parisTours1922 =
  evalState parisTours1922' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1922 4 30) 342 [] []))

parisTours1922' :: State ClassicState Classic
parisTours1922' = do
  edition <- build
  return edition

parisTours1923 :: Classic
parisTours1923 =
  evalState parisTours1923' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1923 5 13) 342 [] []))

parisTours1923' :: State ClassicState Classic
parisTours1923' = do
  edition <- build
  return edition

parisTours1924 :: Classic
parisTours1924 =
  evalState parisTours1924' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1924 5 4) 342 [] []))

parisTours1924' :: State ClassicState Classic
parisTours1924' = do
  edition <- build
  return edition

parisTours1925 :: Classic
parisTours1925 =
  evalState parisTours1925' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1925 5 3) 342 [] []))

parisTours1925' :: State ClassicState Classic
parisTours1925' = do
  edition <- build
  return edition

parisTours1926 :: Classic
parisTours1926 =
  evalState parisTours1926' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1926 5 2) 324 [] []))

parisTours1926' :: State ClassicState Classic
parisTours1926' = do
  edition <- build
  return edition

parisTours1927 :: Classic
parisTours1927 =
  evalState parisTours1927' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1927 5 1) 253 [] []))

parisTours1927' :: State ClassicState Classic
parisTours1927' = do
  edition <- build
  return edition

parisTours1928 :: Classic
parisTours1928 =
  evalState parisTours1928' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1928 4 22) 253 [] []))

parisTours1928' :: State ClassicState Classic
parisTours1928' = do
  edition <- build
  return edition

parisTours1929 :: Classic
parisTours1929 =
  evalState parisTours1929' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1929 5 5) 253 [] []))

parisTours1929' :: State ClassicState Classic
parisTours1929' = do
  edition <- build
  return edition

parisTours1930 :: Classic
parisTours1930 =
  evalState parisTours1930' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1930 5 4) 253 [] []))

parisTours1930' :: State ClassicState Classic
parisTours1930' = do
  edition <- build
  return edition

parisTours1931 :: Classic
parisTours1931 =
  evalState parisTours1931' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1931 5 3) 240 [] []))

parisTours1931' :: State ClassicState Classic
parisTours1931' = do
  edition <- build
  return edition

parisTours1932 :: Classic
parisTours1932 =
  evalState parisTours1932' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1932 4 24) 253 [] []))

parisTours1932' :: State ClassicState Classic
parisTours1932' = do
  edition <- build
  return edition

parisTours1933 :: Classic
parisTours1933 =
  evalState parisTours1933' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1933 4 30) 243 [] []))

parisTours1933' :: State ClassicState Classic
parisTours1933' = do
  edition <- build
  return edition

parisTours1934 :: Classic
parisTours1934 =
  evalState parisTours1934' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1934 4 29) 243 [] []))

parisTours1934' :: State ClassicState Classic
parisTours1934' = do
  edition <- build
  return edition

parisTours1935 :: Classic
parisTours1935 =
  evalState parisTours1935' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1935 5 5) 251 [] []))

parisTours1935' :: State ClassicState Classic
parisTours1935' = do
  edition <- build
  return edition

parisTours1936 :: Classic
parisTours1936 =
  evalState parisTours1936' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1936 5 3) 251 [] []))

parisTours1936' :: State ClassicState Classic
parisTours1936' = do
  edition <- build
  return edition

parisTours1937 :: Classic
parisTours1937 =
  evalState parisTours1937' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1937 4 25) 251 [] []))

parisTours1937' :: State ClassicState Classic
parisTours1937' = do
  edition <- build
  return edition

parisTours1938 :: Classic
parisTours1938 =
  evalState parisTours1938' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1938 5 8) 251 [] []))

parisTours1938' :: State ClassicState Classic
parisTours1938' = do
  edition <- build
  return edition

parisTours1939 :: Classic
parisTours1939 =
  evalState parisTours1939' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1939 5 7) 251 [] []))

parisTours1939' :: State ClassicState Classic
parisTours1939' = do
  edition <- build
  return edition

parisTours1941 :: Classic
parisTours1941 =
  evalState parisTours1941' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1941 5 11) 249 [] []))

parisTours1941' :: State ClassicState Classic
parisTours1941' = do
  edition <- build
  return edition

parisTours1942 :: Classic
parisTours1942 =
  evalState parisTours1942' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1942 5 31) 248 [] []))

parisTours1942' :: State ClassicState Classic
parisTours1942' = do
  edition <- build
  return edition

parisTours1943 :: Classic
parisTours1943 =
  evalState parisTours1943' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1943 5 30) 241 [] []))

parisTours1943' :: State ClassicState Classic
parisTours1943' = do
  edition <- build
  return edition

parisTours1944 :: Classic
parisTours1944 =
  evalState parisTours1944' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1944 5 7) 253 [] []))

parisTours1944' :: State ClassicState Classic
parisTours1944' = do
  edition <- build
  return edition

parisTours1945 :: Classic
parisTours1945 =
  evalState parisTours1945' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1945 4 29) 253 [] []))

parisTours1945' :: State ClassicState Classic
parisTours1945' = do
  edition <- build
  return edition

parisTours1946 :: Classic
parisTours1946 =
  evalState parisTours1946' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1946 5 12) 251 [] []))

parisTours1946' :: State ClassicState Classic
parisTours1946' = do
  edition <- build
  return edition

parisTours1947 :: Classic
parisTours1947 =
  evalState parisTours1947' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1947 5 4) 251 [] []))

parisTours1947' :: State ClassicState Classic
parisTours1947' = do
  edition <- build
  return edition

parisTours1948 :: Classic
parisTours1948 =
  evalState parisTours1948' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1948 4 25) 251 [] []))

parisTours1948' :: State ClassicState Classic
parisTours1948' = do
  edition <- build
  return edition

parisTours1949 :: Classic
parisTours1949 =
  evalState parisTours1949' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1949 5 15) 251 [] []))

parisTours1949' :: State ClassicState Classic
parisTours1949' = do
  edition <- build
  return edition

parisTours1950 :: Classic
parisTours1950 =
  evalState parisTours1950' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1950 5 7) 251 [] []))

parisTours1950' :: State ClassicState Classic
parisTours1950' = do
  edition <- build
  return edition

parisTours1951 :: Classic
parisTours1951 =
  evalState parisTours1951' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1951 10 7) 251 [] []))

parisTours1951' :: State ClassicState Classic
parisTours1951' = do
  edition <- build
  return edition

parisTours1952 :: Classic
parisTours1952 =
  evalState parisTours1952' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1952 10 5) 253 [] []))

parisTours1952' :: State ClassicState Classic
parisTours1952' = do
  edition <- build
  return edition

parisTours1953 :: Classic
parisTours1953 =
  evalState parisTours1953' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1953 10 4) 253 [] []))

parisTours1953' :: State ClassicState Classic
parisTours1953' = do
  edition <- build
  return edition

parisTours1954 :: Classic
parisTours1954 =
  evalState parisTours1954' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1954 10 10) 253 [] []))

parisTours1954' :: State ClassicState Classic
parisTours1954' = do
  edition <- build
  return edition

parisTours1955 :: Classic
parisTours1955 =
  evalState parisTours1955' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1955 10 9) 253 [] []))

parisTours1955' :: State ClassicState Classic
parisTours1955' = do
  edition <- build
  return edition

parisTours1956 :: Classic
parisTours1956 =
  evalState parisTours1956' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1956 10 7) 251 [] []))

parisTours1956' :: State ClassicState Classic
parisTours1956' = do
  edition <- build
  return edition

parisTours1957 :: Classic
parisTours1957 =
  evalState parisTours1957' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1957 10 6) 251 [] []))

parisTours1957' :: State ClassicState Classic
parisTours1957' = do
  edition <- build
  return edition

parisTours1958 :: Classic
parisTours1958 =
  evalState parisTours1958' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1958 10 5) 251 [] []))

parisTours1958' :: State ClassicState Classic
parisTours1958' = do
  edition <- build
  return edition

parisTours1959 :: Classic
parisTours1959 =
  evalState parisTours1959' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1959 10 11) 267 [] []))

parisTours1959' :: State ClassicState Classic
parisTours1959' = do
  edition <- build
  return edition

parisTours1960 :: Classic
parisTours1960 =
  evalState parisTours1960' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1960 10 2) 267 [] []))

parisTours1960' :: State ClassicState Classic
parisTours1960' = do
  edition <- build
  return edition

parisTours1961 :: Classic
parisTours1961 =
  evalState parisTours1961' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1961 10 8) 267 [] []))

parisTours1961' :: State ClassicState Classic
parisTours1961' = do
  edition <- build
  return edition

parisTours1962 :: Classic
parisTours1962 =
  evalState parisTours1962' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1962 10 7) 267 [] []))

parisTours1962' :: State ClassicState Classic
parisTours1962' = do
  edition <- build
  return edition

parisTours1963 :: Classic
parisTours1963 =
  evalState parisTours1963' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1963 10 10) 255 [] []))

parisTours1963' :: State ClassicState Classic
parisTours1963' = do
  edition <- build
  return edition

parisTours1964 :: Classic
parisTours1964 =
  evalState parisTours1964' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1964 10 11) 248 [] []))

parisTours1964' :: State ClassicState Classic
parisTours1964' = do
  edition <- build
  return edition

parisTours1965 :: Classic
parisTours1965 =
  evalState parisTours1965' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1965 10 10) 247 [] []))

parisTours1965' :: State ClassicState Classic
parisTours1965' = do
  edition <- build
  return edition

parisTours1966 :: Classic
parisTours1966 =
  evalState parisTours1966' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1966 10 9) 249 [] []))

parisTours1966' :: State ClassicState Classic
parisTours1966' = do
  edition <- build
  return edition

parisTours1967 :: Classic
parisTours1967 =
  evalState parisTours1967' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1967 10 8) 249 [] []))

parisTours1967' :: State ClassicState Classic
parisTours1967' = do
  edition <- build
  return edition

parisTours1968 :: Classic
parisTours1968 =
  evalState parisTours1968' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1968 10 6) 249 [] []))

parisTours1968' :: State ClassicState Classic
parisTours1968' = do
  edition <- build
  return edition

parisTours1969 :: Classic
parisTours1969 =
  evalState parisTours1969' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1969 9 29) 286 [] []))

parisTours1969' :: State ClassicState Classic
parisTours1969' = do
  edition <- build
  return edition

parisTours1970 :: Classic
parisTours1970 =
  evalState parisTours1970' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1970 10 2) 286 [] []))

parisTours1970' :: State ClassicState Classic
parisTours1970' = do
  edition <- build
  return edition

parisTours1971 :: Classic
parisTours1971 =
  evalState parisTours1971' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1971 10 3) 285 [] []))

parisTours1971' :: State ClassicState Classic
parisTours1971' = do
  edition <- build
  return edition

parisTours1972 :: Classic
parisTours1972 =
  evalState parisTours1972' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1972 10 1) 292 [] []))

parisTours1972' :: State ClassicState Classic
parisTours1972' = do
  edition <- build
  return edition

parisTours1973 :: Classic
parisTours1973 =
  evalState parisTours1973' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1973 9 30) 264 [] []))

parisTours1973' :: State ClassicState Classic
parisTours1973' = do
  edition <- build
  return edition

parisTours1974 :: Classic
parisTours1974 =
  evalState parisTours1974' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1974 9 29) 254.4 [] []))

parisTours1974' :: State ClassicState Classic
parisTours1974' = do
  edition <- build
  return edition

parisTours1975 :: Classic
parisTours1975 =
  evalState parisTours1975' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1975 9 28) 247 [] []))

parisTours1975' :: State ClassicState Classic
parisTours1975' = do
  edition <- build
  return edition

parisTours1976 :: Classic
parisTours1976 =
  evalState parisTours1976' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1976 9 26) 253 [] []))

parisTours1976' :: State ClassicState Classic
parisTours1976' = do
  edition <- build
  return edition

parisTours1977 :: Classic
parisTours1977 =
  evalState parisTours1977' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1977 9 25) 259 [] []))

parisTours1977' :: State ClassicState Classic
parisTours1977' = do
  edition <- build
  return edition

parisTours1978 :: Classic
parisTours1978 =
  evalState parisTours1978' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1978 10 1) 271 [] []))

parisTours1978' :: State ClassicState Classic
parisTours1978' = do
  edition <- build
  return edition

parisTours1979 :: Classic
parisTours1979 =
  evalState parisTours1979' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1979 9 30) 228 [] []))

parisTours1979' :: State ClassicState Classic
parisTours1979' = do
  edition <- build
  return edition

parisTours1980 :: Classic
parisTours1980 =
  evalState parisTours1980' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1980 9 28) 228 [] []))

parisTours1980' :: State ClassicState Classic
parisTours1980' = do
  edition <- build
  return edition

parisTours1981 :: Classic
parisTours1981 =
  evalState parisTours1981' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1981 10 11) 228 [] []))

parisTours1981' :: State ClassicState Classic
parisTours1981' = do
  edition <- build
  return edition

parisTours1982 :: Classic
parisTours1982 =
  evalState parisTours1982' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1982 10 10) 228 [] []))

parisTours1982' :: State ClassicState Classic
parisTours1982' = do
  edition <- build
  return edition

parisTours1983 :: Classic
parisTours1983 =
  evalState parisTours1983' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1983 10 9) 249 [] []))

parisTours1983' :: State ClassicState Classic
parisTours1983' = do
  edition <- build
  return edition

parisTours1984 :: Classic
parisTours1984 =
  evalState parisTours1984' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1984 10 7) 249 [] []))

parisTours1984' :: State ClassicState Classic
parisTours1984' = do
  edition <- build
  return edition

parisTours1985 :: Classic
parisTours1985 =
  evalState parisTours1985' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1985 10 6) 249 [] []))

parisTours1985' :: State ClassicState Classic
parisTours1985' = do
  edition <- build
  return edition

parisTours1986 :: Classic
parisTours1986 =
  evalState parisTours1986' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1986 10 12) 253 [] []))

parisTours1986' :: State ClassicState Classic
parisTours1986' = do
  edition <- build
  return edition

parisTours1987 :: Classic
parisTours1987 =
  evalState parisTours1987' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1987 10 11) 255 [] []))

parisTours1987' :: State ClassicState Classic
parisTours1987' = do
  edition <- build
  return edition

parisTours1988 :: Classic
parisTours1988 =
  evalState parisTours1988' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1988 10 9) 290 [] []))

parisTours1988' :: State ClassicState Classic
parisTours1988' = do
  edition <- build
  return edition

parisTours1989 :: Classic
parisTours1989 =
  evalState parisTours1989' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1989 10 8) 283 [] []))

parisTours1989' :: State ClassicState Classic
parisTours1989' = do
  edition <- build
  return edition

parisTours1990 :: Classic
parisTours1990 =
  evalState parisTours1990' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1990 10 14) 283 [] []))

parisTours1990' :: State ClassicState Classic
parisTours1990' = do
  edition <- build
  return edition

parisTours1991 :: Classic
parisTours1991 =
  evalState parisTours1991' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1991 10 13) 286 [] []))

parisTours1991' :: State ClassicState Classic
parisTours1991' = do
  edition <- build
  return edition

parisTours1992 :: Classic
parisTours1992 =
  evalState parisTours1992' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1992 10 10) 286 [] []))

parisTours1992' :: State ClassicState Classic
parisTours1992' = do
  edition <- build
  return edition

parisTours1993 :: Classic
parisTours1993 =
  evalState parisTours1993' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1993 10 3) 251 [] []))

parisTours1993' :: State ClassicState Classic
parisTours1993' = do
  edition <- build
  return edition

parisTours1994 :: Classic
parisTours1994 =
  evalState parisTours1994' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1994 10 2) 250 [] []))

parisTours1994' :: State ClassicState Classic
parisTours1994' = do
  edition <- build
  return edition

parisTours1995 :: Classic
parisTours1995 =
  evalState parisTours1995' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1995 10 15) 250 [] []))

parisTours1995' :: State ClassicState Classic
parisTours1995' = do
  edition <- build
  return edition

parisTours1996 :: Classic
parisTours1996 =
  evalState parisTours1996' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1996 10 6) 253 [] []))

parisTours1996' :: State ClassicState Classic
parisTours1996' = do
  edition <- build
  return edition

parisTours1997 :: Classic
parisTours1997 =
  evalState parisTours1997' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1997 10 5) 256 [] []))

parisTours1997' :: State ClassicState Classic
parisTours1997' = do
  edition <- build
  return edition

parisTours1998 :: Classic
parisTours1998 =
  evalState parisTours1998' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1998 10 4) 254 [] []))

parisTours1998' :: State ClassicState Classic
parisTours1998' = do
  edition <- build
  return edition

parisTours1999 :: Classic
parisTours1999 =
  evalState parisTours1999' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 1999 10 3) 254 [] []))

parisTours1999' :: State ClassicState Classic
parisTours1999' = do
  edition <- build
  return edition

parisTours2000 :: Classic
parisTours2000 =
  evalState parisTours2000' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2000 10 8) 254 [] []))

parisTours2000' :: State ClassicState Classic
parisTours2000' = do
  edition <- build
  return edition

parisTours2001 :: Classic
parisTours2001 =
  evalState parisTours2001' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2001 10 7) 254.5 [] []))

parisTours2001' :: State ClassicState Classic
parisTours2001' = do
  edition <- build
  return edition

parisTours2002 :: Classic
parisTours2002 =
  evalState parisTours2002' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2002 10 6) 257 [] []))

parisTours2002' :: State ClassicState Classic
parisTours2002' = do
  edition <- build
  return edition

parisTours2003 :: Classic
parisTours2003 =
  evalState parisTours2003' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2003 10 5) 257 [] []))

parisTours2003' :: State ClassicState Classic
parisTours2003' = do
  edition <- build
  return edition

parisTours2004 :: Classic
parisTours2004 =
  evalState parisTours2004' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2004 10 10) 252.5 [] []))

parisTours2004' :: State ClassicState Classic
parisTours2004' = do
  edition <- build
  return edition

parisTours2005 :: Classic
parisTours2005 =
  evalState parisTours2005' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2005 10 9) 254 [] []))

parisTours2005' :: State ClassicState Classic
parisTours2005' = do
  edition <- build
  return edition

parisTours2006 :: Classic
parisTours2006 =
  evalState parisTours2006' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2006 10 8) 254 [] []))

parisTours2006' :: State ClassicState Classic
parisTours2006' = do
  edition <- build
  return edition

parisTours2007 :: Classic
parisTours2007 =
  evalState parisTours2007' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2007 10 14) 256 [] []))

parisTours2007' :: State ClassicState Classic
parisTours2007' = do
  edition <- build
  return edition

parisTours2008 :: Classic
parisTours2008 =
  evalState parisTours2008' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2008 10 12) 252 [] []))

parisTours2008' :: State ClassicState Classic
parisTours2008' = do
  edition <- build
  return edition

parisTours2009 :: Classic
parisTours2009 =
  evalState parisTours2009' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2009 10 11) 230 [] []))

parisTours2009' :: State ClassicState Classic
parisTours2009' = do
  edition <- build
  return edition

parisTours2010 :: Classic
parisTours2010 =
  evalState parisTours2010' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2010 10 10) 233 [] []))

parisTours2010' :: State ClassicState Classic
parisTours2010' = do
  edition <- build
  return edition

parisTours2011 :: Classic
parisTours2011 =
  evalState parisTours2011' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2011 10 9) 230.5 [] []))

parisTours2011' :: State ClassicState Classic
parisTours2011' = do
  edition <- build
  return edition

parisTours2012 :: Classic
parisTours2012 =
  evalState parisTours2012' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2012 10 7) 235 [] []))

parisTours2012' :: State ClassicState Classic
parisTours2012' = do
  edition <- build
  return edition

parisTours2013 :: Classic
parisTours2013 =
  evalState parisTours2013' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2013 10 13) 235 [] []))

parisTours2013' :: State ClassicState Classic
parisTours2013' = do
  edition <- build
  return edition

parisTours2014 :: Classic
parisTours2014 =
  evalState parisTours2014' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2014 10 12) 237.5 [] []))

parisTours2014' :: State ClassicState Classic
parisTours2014' = do
  edition <- build
  return edition

parisTours2015 :: Classic
parisTours2015 =
  evalState parisTours2015' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2015 10 11) 231 [] []))

parisTours2015' :: State ClassicState Classic
parisTours2015' = do
  edition <- build
  return edition

parisTours2016 :: Classic
parisTours2016 =
  evalState parisTours2016' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2016 10 9) 252.5 [] []))

parisTours2016' :: State ClassicState Classic
parisTours2016' = do
  edition <- build
  return edition

parisTours2017 :: Classic
parisTours2017 =
  evalState parisTours2017' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2017 10 8) 234.5 [] []))

parisTours2017' :: State ClassicState Classic
parisTours2017' = do
  edition <- build
  return edition

parisTours2018 :: Classic
parisTours2018 =
  evalState parisTours2018' (ParcoursDB.State.Classic.init (ParisTours (fromGregorian 2018 10 7) 214.5 [] []))

parisTours2018' :: State ClassicState Classic
parisTours2018' = do
  cote   153.5 "Côte de Nazelles-Négron" 103
  gravel   165 "Château de Valmer" 0.5
  gravel 166.5 "Vallee de Raye" 1.5
  gravel   175 "Grosse Pierre" 2.5
  cote     175 "Côte de Gogueme" 104
  cote   179.5 "Côte de Montfort" 106 
  gravel 179.5 "Montfort" 2
  gravel   184 "Épinettes" 1.2
  cote   185.6 "Côte de Rochère" 92
  gravel 186.5 "Coudraie" 0.9
  gravel 189.5 "Solidarité" 1.5
  cote     192 "Côte de la Vallée Chartier" 95
  gravel   192 "Peu Morier" 1.6
  cote   197.5 "Côte de Vouvray" 91
  gravel 200.5 "Rochecorbon" 0.8
  cote   202.5 "Côte de Rochecorbon" 101
  edition <- build
  return edition
