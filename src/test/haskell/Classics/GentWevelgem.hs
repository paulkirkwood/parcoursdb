-- file Classics.GentWevelgem.hs
module Classics.GentWevelgem
(gentWevelgemEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

gentWevelgemEditions :: [Classic]
gentWevelgemEditions = [ gentWevelgem1934
                       , gentWevelgem1935
                       , gentWevelgem1936
                       , gentWevelgem1937
                       , gentWevelgem1938
                       , gentWevelgem1939
                       , gentWevelgem1945
                       , gentWevelgem1946
                       , gentWevelgem1947
                       , gentWevelgem1948
                       , gentWevelgem1949
                       , gentWevelgem1950
                       , gentWevelgem1951
                       , gentWevelgem1952
                       , gentWevelgem1953
                       , gentWevelgem1954
                       , gentWevelgem1955
                       , gentWevelgem1956
                       , gentWevelgem1957
                       , gentWevelgem1958
                       , gentWevelgem1959
                       , gentWevelgem1960
                       , gentWevelgem1961
                       , gentWevelgem1962
                       , gentWevelgem1963
                       , gentWevelgem1964
                       , gentWevelgem1965
                       , gentWevelgem1966
                       , gentWevelgem1967
                       , gentWevelgem1968
                       , gentWevelgem1969
                       , gentWevelgem1970
                       , gentWevelgem1971
                       , gentWevelgem1972
                       , gentWevelgem1973
                       , gentWevelgem1974
                       , gentWevelgem1975
                       , gentWevelgem1976
                       , gentWevelgem1977
                       , gentWevelgem1978
                       , gentWevelgem1979
                       , gentWevelgem1980
                       , gentWevelgem1981
                       , gentWevelgem1982
                       , gentWevelgem1983
                       , gentWevelgem1984
                       , gentWevelgem1985
                       , gentWevelgem1986
                       , gentWevelgem1987
                       , gentWevelgem1988
                       , gentWevelgem1989
                       , gentWevelgem1990
                       , gentWevelgem1991
                       , gentWevelgem1992
                       , gentWevelgem1993
                       , gentWevelgem1994
                       , gentWevelgem1995
                       , gentWevelgem1996
                       , gentWevelgem1997
                       , gentWevelgem1998
                       , gentWevelgem1999
                       , gentWevelgem2000
                       , gentWevelgem2001
                       , gentWevelgem2002
                       , gentWevelgem2003
                       , gentWevelgem2004
                       , gentWevelgem2005
                       , gentWevelgem2006
                       , gentWevelgem2007
                       , gentWevelgem2008
                       , gentWevelgem2009
                       , gentWevelgem2010
                       , gentWevelgem2011
                       , gentWevelgem2012
                       , gentWevelgem2013
                       , gentWevelgem2014
                       , gentWevelgem2015
                       , gentWevelgem2016
                       , gentWevelgem2017
                       , gentWevelgem2018
                       , gentWevelgem2019
                       ]

gentWevelgem1934 :: Classic
gentWevelgem1934 =
  evalState gentWevelgem1934' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1934 9 9) 120 []))

gentWevelgem1934' :: State ClassicState Classic
gentWevelgem1934' = do
  edition <- build
  return edition

gentWevelgem1935 :: Classic
gentWevelgem1935 =
  evalState gentWevelgem1935' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1935 6 30) 120 []))

gentWevelgem1935' :: State ClassicState Classic
gentWevelgem1935' = do
  edition <- build
  return edition

gentWevelgem1936 :: Classic
gentWevelgem1936 =
  evalState gentWevelgem1936' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1936 5 28) 168 []))

gentWevelgem1936' :: State ClassicState Classic
gentWevelgem1936' = do
  edition <- build
  return edition

gentWevelgem1937 :: Classic
gentWevelgem1937 =
  evalState gentWevelgem1937' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1937 5 13) 160 []))

gentWevelgem1937' :: State ClassicState Classic
gentWevelgem1937' = do
  edition <- build
  return edition

gentWevelgem1938 :: Classic
gentWevelgem1938 =
  evalState gentWevelgem1938' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1938 6 2) 165 []))

gentWevelgem1938' :: State ClassicState Classic
gentWevelgem1938' = do
  edition <- build
  return edition

gentWevelgem1939 :: Classic
gentWevelgem1939 =
  evalState gentWevelgem1939' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1939 5 24) 155 []))

gentWevelgem1939' :: State ClassicState Classic
gentWevelgem1939' = do
  edition <- build
  return edition

gentWevelgem1945 :: Classic
gentWevelgem1945 =
  evalState gentWevelgem1945' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1945 7 29) 200 []))

gentWevelgem1945' :: State ClassicState Classic
gentWevelgem1945' = do
  edition <- build
  return edition

gentWevelgem1946 :: Classic
gentWevelgem1946 =
  evalState gentWevelgem1946' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1946 5 26) 200 []))

gentWevelgem1946' :: State ClassicState Classic
gentWevelgem1946' = do
  edition <- build
  return edition

gentWevelgem1947 :: Classic
gentWevelgem1947 =
  evalState gentWevelgem1947' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1947 3 30) 230 []))

gentWevelgem1947' :: State ClassicState Classic
gentWevelgem1947' = do
  edition <- build
  return edition

gentWevelgem1948 :: Classic
gentWevelgem1948 =
  evalState gentWevelgem1948' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1948 5 9) 276 []))

gentWevelgem1948' :: State ClassicState Classic
gentWevelgem1948' = do
  edition <- build
  return edition

gentWevelgem1949 :: Classic
gentWevelgem1949 =
  evalState gentWevelgem1949' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1949 4 3) 250 []))

gentWevelgem1949' :: State ClassicState Classic
gentWevelgem1949' = do
  edition <- build
  return edition

gentWevelgem1950 :: Classic
gentWevelgem1950 =
  evalState gentWevelgem1950' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1950 3 26) 255 []))

gentWevelgem1950' :: State ClassicState Classic
gentWevelgem1950' = do
  edition <- build
  return edition

gentWevelgem1951 :: Classic
gentWevelgem1951 =
  evalState gentWevelgem1951' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1951 3 25) 240 []))

gentWevelgem1951' :: State ClassicState Classic
gentWevelgem1951' = do
  edition <- build
  return edition

gentWevelgem1952 :: Classic
gentWevelgem1952 =
  evalState gentWevelgem1952' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1952 4 3) 240 []))

gentWevelgem1952' :: State ClassicState Classic
gentWevelgem1952' = do
  edition <- build
  return edition

gentWevelgem1953 :: Classic
gentWevelgem1953 =
  evalState gentWevelgem1953' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1953 3 29) 240 []))

gentWevelgem1953' :: State ClassicState Classic
gentWevelgem1953' = do
  edition <- build
  return edition

gentWevelgem1954 :: Classic
gentWevelgem1954 =
  evalState gentWevelgem1954' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1954 3 28) 235 []))

gentWevelgem1954' :: State ClassicState Classic
gentWevelgem1954' = do
  edition <- build
  return edition

gentWevelgem1955 :: Classic
gentWevelgem1955 =
  evalState gentWevelgem1955' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1955 4 3) 228 []))

gentWevelgem1955' :: State ClassicState Classic
gentWevelgem1955' = do
  edition <- build
  return edition

gentWevelgem1956 :: Classic
gentWevelgem1956 =
  evalState gentWevelgem1956' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1956 3 25) 228 []))

gentWevelgem1956' :: State ClassicState Classic
gentWevelgem1956' = do
  edition <- build
  return edition

gentWevelgem1957 :: Classic
gentWevelgem1957 =
  evalState gentWevelgem1957' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1957 3 27) 207 []))

gentWevelgem1957' :: State ClassicState Classic
gentWevelgem1957' = do
  edition <- build
  return edition

gentWevelgem1958 :: Classic
gentWevelgem1958 =
  evalState gentWevelgem1958' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1958 4 6) 231 []))

gentWevelgem1958' :: State ClassicState Classic
gentWevelgem1958' = do
  edition <- build
  return edition

gentWevelgem1959 :: Classic
gentWevelgem1959 =
  evalState gentWevelgem1959' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1959 4 4) 221.2 []))

gentWevelgem1959' :: State ClassicState Classic
gentWevelgem1959' = do
  edition <- build
  return edition

gentWevelgem1960 :: Classic
gentWevelgem1960 =
  evalState gentWevelgem1960' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1960 4 17) 256 []))

gentWevelgem1960' :: State ClassicState Classic
gentWevelgem1960' = do
  edition <- build
  return edition

gentWevelgem1961 :: Classic
gentWevelgem1961 =
  evalState gentWevelgem1961' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1961 4 16) 231 []))

gentWevelgem1961' :: State ClassicState Classic
gentWevelgem1961' = do
  edition <- build
  return edition

gentWevelgem1962 :: Classic
gentWevelgem1962 =
  evalState gentWevelgem1962' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1962 3 25) 237 []))

gentWevelgem1962' :: State ClassicState Classic
gentWevelgem1962' = do
  edition <- build
  return edition

gentWevelgem1963 :: Classic
gentWevelgem1963 =
  evalState gentWevelgem1963' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1963 3 24) 230 []))

gentWevelgem1963' :: State ClassicState Classic
gentWevelgem1963' = do
  edition <- build
  return edition

gentWevelgem1964 :: Classic
gentWevelgem1964 =
  evalState gentWevelgem1964' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1964 3 21) 233 []))

gentWevelgem1964' :: State ClassicState Classic
gentWevelgem1964' = do
  edition <- build
  return edition

gentWevelgem1965 :: Classic
gentWevelgem1965 =
  evalState gentWevelgem1965' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1965 3 21) 235 []))

gentWevelgem1965' :: State ClassicState Classic
gentWevelgem1965' = do
  edition <- build
  return edition

gentWevelgem1966 :: Classic
gentWevelgem1966 =
  evalState gentWevelgem1966' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1966 3 23) 252 []))

gentWevelgem1966' :: State ClassicState Classic
gentWevelgem1966' = do
  edition <- build
  return edition

gentWevelgem1967 :: Classic
gentWevelgem1967 =
  evalState gentWevelgem1967' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1967 3 29) 242 []))

gentWevelgem1967' :: State ClassicState Classic
gentWevelgem1967' = do
  edition <- build
  return edition

gentWevelgem1968 :: Classic
gentWevelgem1968 =
  evalState gentWevelgem1968' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1968 4 16) 250 []))

gentWevelgem1968' :: State ClassicState Classic
gentWevelgem1968' = do
  edition <- build
  return edition

gentWevelgem1969 :: Classic
gentWevelgem1969 =
  evalState gentWevelgem1969' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1969 4 16) 250 []))

gentWevelgem1969' :: State ClassicState Classic
gentWevelgem1969' = do
  edition <- build
  return edition

gentWevelgem1970 :: Classic
gentWevelgem1970 =
  evalState gentWevelgem1970' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1970 4 1) 236 []))

gentWevelgem1970' :: State ClassicState Classic
gentWevelgem1970' = do
  edition <- build
  return edition

gentWevelgem1971 :: Classic
gentWevelgem1971 =
  evalState gentWevelgem1971' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1971 3 31) 237 []))

gentWevelgem1971' :: State ClassicState Classic
gentWevelgem1971' = do
  edition <- build
  return edition

gentWevelgem1972 :: Classic
gentWevelgem1972 =
  evalState gentWevelgem1972' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1972 4 12) 245 []))

gentWevelgem1972' :: State ClassicState Classic
gentWevelgem1972' = do
  edition <- build
  return edition

gentWevelgem1973 :: Classic
gentWevelgem1973 =
  evalState gentWevelgem1973' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1973 4 1) 250 []))

gentWevelgem1973' :: State ClassicState Classic
gentWevelgem1973' = do
  edition <- build
  return edition

gentWevelgem1974 :: Classic
gentWevelgem1974 =
  evalState gentWevelgem1974' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1974 4 9) 244 []))

gentWevelgem1974' :: State ClassicState Classic
gentWevelgem1974' = do
  edition <- build
  return edition

gentWevelgem1975 :: Classic
gentWevelgem1975 =
  evalState gentWevelgem1975' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1975 4 9) 250 []))

gentWevelgem1975' :: State ClassicState Classic
gentWevelgem1975' = do
  edition <- build
  return edition

gentWevelgem1976 :: Classic
gentWevelgem1976 =
  evalState gentWevelgem1976' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1976 4 6) 262 []))

gentWevelgem1976' :: State ClassicState Classic
gentWevelgem1976' = do
  edition <- build
  return edition

gentWevelgem1977 :: Classic
gentWevelgem1977 =
  evalState gentWevelgem1977' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1977 4 19) 277 []))

gentWevelgem1977' :: State ClassicState Classic
gentWevelgem1977' = do
  edition <- build
  return edition

gentWevelgem1978 :: Classic
gentWevelgem1978 =
  evalState gentWevelgem1978' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1978 4 12) 246 []))

gentWevelgem1978' :: State ClassicState Classic
gentWevelgem1978' = do
  edition <- build
  return edition

gentWevelgem1979 :: Classic
gentWevelgem1979 =
  evalState gentWevelgem1979' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1979 4 1) 252 []))

gentWevelgem1979' :: State ClassicState Classic
gentWevelgem1979' = do
  edition <- build
  return edition

gentWevelgem1980 :: Classic
gentWevelgem1980 =
  evalState gentWevelgem1980' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1980 4 2) 264 []))

gentWevelgem1980' :: State ClassicState Classic
gentWevelgem1980' = do
  edition <- build
  return edition

gentWevelgem1981 :: Classic
gentWevelgem1981 =
  evalState gentWevelgem1981' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1981 4 8) 254.4 []))

gentWevelgem1981' :: State ClassicState Classic
gentWevelgem1981' = do
  edition <- build
  return edition

gentWevelgem1982 :: Classic
gentWevelgem1982 =
  evalState gentWevelgem1982' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1982 4 7) 255 []))

gentWevelgem1982' :: State ClassicState Classic
gentWevelgem1982' = do
  edition <- build
  return edition

gentWevelgem1983 :: Classic
gentWevelgem1983 =
  evalState gentWevelgem1983' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1983 4 6) 255 []))

gentWevelgem1983' :: State ClassicState Classic
gentWevelgem1983' = do
  edition <- build
  return edition

gentWevelgem1984 :: Classic
gentWevelgem1984 =
  evalState gentWevelgem1984' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1984 4 4) 255 []))

gentWevelgem1984' :: State ClassicState Classic
gentWevelgem1984' = do
  edition <- build
  return edition

gentWevelgem1985 :: Classic
gentWevelgem1985 =
  evalState gentWevelgem1985' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1985 4 10) 262 []))

gentWevelgem1985' :: State ClassicState Classic
gentWevelgem1985' = do
  edition <- build
  return edition

gentWevelgem1986 :: Classic
gentWevelgem1986 =
  evalState gentWevelgem1986' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1986 4 19) 250 []))

gentWevelgem1986' :: State ClassicState Classic
gentWevelgem1986' = do
  edition <- build
  return edition

gentWevelgem1987 :: Classic
gentWevelgem1987 =
  evalState gentWevelgem1987' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1987 4 8) 243 []))

gentWevelgem1987' :: State ClassicState Classic
gentWevelgem1987' = do
  edition <- build
  return edition

gentWevelgem1988 :: Classic
gentWevelgem1988 =
  evalState gentWevelgem1988' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1988 4 20) 275 []))

gentWevelgem1988' :: State ClassicState Classic
gentWevelgem1988' = do
  edition <- build
  return edition

gentWevelgem1989 :: Classic
gentWevelgem1989 =
  evalState gentWevelgem1989' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1989 4 5) 276 []))

gentWevelgem1989' :: State ClassicState Classic
gentWevelgem1989' = do
  edition <- build
  return edition

gentWevelgem1990 :: Classic
gentWevelgem1990 =
  evalState gentWevelgem1990' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1990 4 4) 204 []))

gentWevelgem1990' :: State ClassicState Classic
gentWevelgem1990' = do
  edition <- build
  return edition

gentWevelgem1991 :: Classic
gentWevelgem1991 =
  evalState gentWevelgem1991' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1991 4 10) 210 []))

gentWevelgem1991' :: State ClassicState Classic
gentWevelgem1991' = do
  edition <- build
  return edition

gentWevelgem1992 :: Classic
gentWevelgem1992 =
  evalState gentWevelgem1992' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1992 4 8) 210 []))

gentWevelgem1992' :: State ClassicState Classic
gentWevelgem1992' = do
  edition <- build
  return edition

gentWevelgem1993 :: Classic
gentWevelgem1993 =
  evalState gentWevelgem1993' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1993 4 7) 210 []))

gentWevelgem1993' :: State ClassicState Classic
gentWevelgem1993' = do
  edition <- build
  return edition

gentWevelgem1994 :: Classic
gentWevelgem1994 =
  evalState gentWevelgem1994' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1994 4 6) 210 []))

gentWevelgem1994' :: State ClassicState Classic
gentWevelgem1994' = do
  edition <- build
  return edition

gentWevelgem1995 :: Classic
gentWevelgem1995 =
  evalState gentWevelgem1995' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1995 4 5) 207 []))

gentWevelgem1995' :: State ClassicState Classic
gentWevelgem1995' = do
  edition <- build
  return edition

gentWevelgem1996 :: Classic
gentWevelgem1996 =
  evalState gentWevelgem1996' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1996 4 10) 208 []))

gentWevelgem1996' :: State ClassicState Classic
gentWevelgem1996' = do
  edition <- build
  return edition

gentWevelgem1997 :: Classic
gentWevelgem1997 =
  evalState gentWevelgem1997' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1997 4 9) 208 []))

gentWevelgem1997' :: State ClassicState Classic
gentWevelgem1997' = do
  edition <- build
  return edition

gentWevelgem1998 :: Classic
gentWevelgem1998 =
  evalState gentWevelgem1998' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1998 4 8) 208 []))

gentWevelgem1998' :: State ClassicState Classic
gentWevelgem1998' = do
  edition <- build
  return edition

gentWevelgem1999 :: Classic
gentWevelgem1999 =
  evalState gentWevelgem1999' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 1999 4 7) 208 []))

gentWevelgem1999' :: State ClassicState Classic
gentWevelgem1999' = do
  edition <- build
  return edition

gentWevelgem2000 :: Classic
gentWevelgem2000 =
  evalState gentWevelgem2000' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2000 4 7) 208 []))

gentWevelgem2000' :: State ClassicState Classic
gentWevelgem2000' = do
  edition <- build
  return edition

gentWevelgem2001 :: Classic
gentWevelgem2001 =
  evalState gentWevelgem2001' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2001 4 11) 214 []))

gentWevelgem2001' :: State ClassicState Classic
gentWevelgem2001' = do
  edition <- build
  return edition

gentWevelgem2002 :: Classic
gentWevelgem2002 =
  evalState gentWevelgem2002' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2002 4 10) 214 []))

gentWevelgem2002' :: State ClassicState Classic
gentWevelgem2002' = do
  edition <- build
  return edition

gentWevelgem2003 :: Classic
gentWevelgem2003 =
  evalState gentWevelgem2003' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2003 4 9) 204 []))

gentWevelgem2003' :: State ClassicState Classic
gentWevelgem2003' = do
  edition <- build
  return edition

gentWevelgem2004 :: Classic
gentWevelgem2004 =
  evalState gentWevelgem2004' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2004 4 7) 204 []))

gentWevelgem2004' :: State ClassicState Classic
gentWevelgem2004' = do
  edition <- build
  return edition

gentWevelgem2005 :: Classic
gentWevelgem2005 =
  evalState gentWevelgem2005' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2005 4 6) 208 []))

gentWevelgem2005' :: State ClassicState Classic
gentWevelgem2005' = do
  edition <- build
  return edition

gentWevelgem2006 :: Classic
gentWevelgem2006 =
  evalState gentWevelgem2006' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2006 4 5) 210 []))

gentWevelgem2006' :: State ClassicState Classic
gentWevelgem2006' = do
  edition <- build
  return edition

gentWevelgem2007 :: Classic
gentWevelgem2007 =
  evalState gentWevelgem2007' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2007 4 11) 207 []))

gentWevelgem2007' :: State ClassicState Classic
gentWevelgem2007' = do
  edition <- build
  return edition

gentWevelgem2008 :: Classic
gentWevelgem2008 =
  evalState gentWevelgem2008' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2008 4 9) 209 []))

gentWevelgem2008' :: State ClassicState Classic
gentWevelgem2008' = do
  edition <- build
  return edition

gentWevelgem2009 :: Classic
gentWevelgem2009 =
  evalState gentWevelgem2009' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2009 4 8) 209 []))

gentWevelgem2009' :: State ClassicState Classic
gentWevelgem2009' = do
  edition <- build
  return edition

gentWevelgem2010 :: Classic
gentWevelgem2010 =
  evalState gentWevelgem2010' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2010 3 28) 219 []))

gentWevelgem2010' :: State ClassicState Classic
gentWevelgem2010' = do
  edition <- build
  return edition

gentWevelgem2011 :: Classic
gentWevelgem2011 =
  evalState gentWevelgem2011' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2011 3 27) 219 []))

gentWevelgem2011' :: State ClassicState Classic
gentWevelgem2011' = do
  edition <- build
  return edition

gentWevelgem2012 :: Classic
gentWevelgem2012 =
  evalState gentWevelgem2012' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2012 3 25) 234.6 []))

gentWevelgem2012' :: State ClassicState Classic
gentWevelgem2012' = do
  edition <- build
  return edition

gentWevelgem2013 :: Classic
gentWevelgem2013 =
  evalState gentWevelgem2013' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2013 3 24) 183.4 []))

gentWevelgem2013' :: State ClassicState Classic
gentWevelgem2013' = do
  edition <- build
  return edition

gentWevelgem2014 :: Classic
gentWevelgem2014 =
  evalState gentWevelgem2014' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2014 3 30) 233 []))

gentWevelgem2014' :: State ClassicState Classic
gentWevelgem2014' = do
  edition <- build
  return edition

gentWevelgem2015 :: Classic
gentWevelgem2015 =
  evalState gentWevelgem2015' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2015 3 29) 239.1 []))

gentWevelgem2015' :: State ClassicState Classic
gentWevelgem2015' = do
  edition <- build
  return edition

gentWevelgem2016 :: Classic
gentWevelgem2016 =
  evalState gentWevelgem2016' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2016 3 27) 243 []))

gentWevelgem2016' :: State ClassicState Classic
gentWevelgem2016' = do
  edition <- build
  return edition

gentWevelgem2017 :: Classic
gentWevelgem2017 =
  evalState gentWevelgem2017' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2017 3 26) 249.2 []))

gentWevelgem2017' :: State ClassicState Classic
gentWevelgem2017' = do
  edition <- build
  return edition

gentWevelgem2018 :: Classic
gentWevelgem2018 =
  evalState gentWevelgem2018' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2018 3 25) 250.8 []))

gentWevelgem2018' :: State ClassicState Classic
gentWevelgem2018' = do
  edition <- build
  return edition

gentWevelgem2019 :: Classic
gentWevelgem2019 =
  evalState gentWevelgem2019' (ParcoursDB.State.Classic.init (GentWevelgem (fromGregorian 2019 3 31) 251.5 []))

gentWevelgem2019' :: State ClassicState Classic
gentWevelgem2019' = do
  edition <- build
  return edition

