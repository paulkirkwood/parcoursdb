-- file Classics.E3Harelbeke.hs
module Classics.E3Harelbeke
(e3HarelbekeEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

e3HarelbekeEditions :: [Classic]
e3HarelbekeEditions = [ e3Harelbeke1958
                      , e3Harelbeke1959
                      , e3Harelbeke1960
                      , e3Harelbeke1961
                      , e3Harelbeke1962
                      , e3Harelbeke1963
                      , e3Harelbeke1964
                      , e3Harelbeke1965
                      , e3Harelbeke1966
                      , e3Harelbeke1967
                      , e3Harelbeke1968
                      , e3Harelbeke1969
                      , e3Harelbeke1970
                      , e3Harelbeke1971
                      , e3Harelbeke1972
                      , e3Harelbeke1973
                      , e3Harelbeke1974
                      , e3Harelbeke1975
                      , e3Harelbeke1976
                      , e3Harelbeke1977
                      , e3Harelbeke1978
                      , e3Harelbeke1979
                      , e3Harelbeke1980
                      , e3Harelbeke1981
                      , e3Harelbeke1982
                      , e3Harelbeke1983
                      , e3Harelbeke1984
                      , e3Harelbeke1985
                      , e3Harelbeke1986
                      , e3Harelbeke1987
                      , e3Harelbeke1988
                      , e3Harelbeke1989
                      , e3Harelbeke1990
                      , e3Harelbeke1991
                      , e3Harelbeke1992
                      , e3Harelbeke1993
                      , e3Harelbeke1994
                      , e3Harelbeke1995
                      , e3Harelbeke1996
                      , e3Harelbeke1997
                      , e3Harelbeke1998
                      , e3Harelbeke1999
                      , e3Harelbeke2000
                      , e3Harelbeke2001
                      , e3Harelbeke2002
                      , e3Harelbeke2003
                      , e3Harelbeke2004
                      , e3Harelbeke2005
                      , e3Harelbeke2006
                      , e3Harelbeke2007
                      , e3Harelbeke2008
                      , e3Harelbeke2009
                      , e3Harelbeke2010
                      , e3Harelbeke2011
                      , e3Harelbeke2012
                      , e3Harelbeke2013
                      , e3Harelbeke2014
                      , e3Harelbeke2015
                      , e3Harelbeke2016
                      , e3Harelbeke2017
                      , e3Harelbeke2018
                      , e3Harelbeke2019
                      ]

e3Harelbeke1958 :: Classic
e3Harelbeke1958 =
  evalState e3Harelbeke1958' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1958 5 3) 210 []))

e3Harelbeke1958' :: State ClassicState Classic
e3Harelbeke1958' = do
  edition <- build
  return edition

e3Harelbeke1959 :: Classic
e3Harelbeke1959 =
  evalState e3Harelbeke1959' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1959 5 17) 214 []))

e3Harelbeke1959' :: State ClassicState Classic
e3Harelbeke1959' = do
  edition <- build
  return edition

e3Harelbeke1960 :: Classic
e3Harelbeke1960 =
  evalState e3Harelbeke1960' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1960 3 12) 201 []))

e3Harelbeke1960' :: State ClassicState Classic
e3Harelbeke1960' = do
  edition <- build
  return edition

e3Harelbeke1961 :: Classic
e3Harelbeke1961 =
  evalState e3Harelbeke1961' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1961 3 11) 202 []))

e3Harelbeke1961' :: State ClassicState Classic
e3Harelbeke1961' = do
  edition <- build
  return edition

e3Harelbeke1962 :: Classic
e3Harelbeke1962 =
  evalState e3Harelbeke1962' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1962 3 16) 201 []))

e3Harelbeke1962' :: State ClassicState Classic
e3Harelbeke1962' = do
  edition <- build
  return edition

e3Harelbeke1963 :: Classic
e3Harelbeke1963 =
  evalState e3Harelbeke1963' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1963 3 27) 201 []))

e3Harelbeke1963' :: State ClassicState Classic
e3Harelbeke1963' = do
  edition <- build
  return edition

e3Harelbeke1964 :: Classic
e3Harelbeke1964 =
  evalState e3Harelbeke1964' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1964 3 14) 216 []))

e3Harelbeke1964' :: State ClassicState Classic
e3Harelbeke1964' = do
  edition <- build
  return edition

e3Harelbeke1965 :: Classic
e3Harelbeke1965 =
  evalState e3Harelbeke1965' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1965 3 27) 215 []))

e3Harelbeke1965' :: State ClassicState Classic
e3Harelbeke1965' = do
  edition <- build
  return edition

e3Harelbeke1966 :: Classic
e3Harelbeke1966 =
  evalState e3Harelbeke1966' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1966 3 26) 216 []))

e3Harelbeke1966' :: State ClassicState Classic
e3Harelbeke1966' = do
  edition <- build
  return edition

e3Harelbeke1967 :: Classic
e3Harelbeke1967 =
  evalState e3Harelbeke1967' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1967 3 25) 216 []))

e3Harelbeke1967' :: State ClassicState Classic
e3Harelbeke1967' = do
  edition <- build
  return edition

e3Harelbeke1968 :: Classic
e3Harelbeke1968 =
  evalState e3Harelbeke1968' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1968 3 23) 216 []))

e3Harelbeke1968' :: State ClassicState Classic
e3Harelbeke1968' = do
  edition <- build
  return edition

e3Harelbeke1969 :: Classic
e3Harelbeke1969 =
  evalState e3Harelbeke1969' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1969 3 22) 215 []))

e3Harelbeke1969' :: State ClassicState Classic
e3Harelbeke1969' = do
  edition <- build
  return edition

e3Harelbeke1970 :: Classic
e3Harelbeke1970 =
  evalState e3Harelbeke1970' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1970 3 21) 210 []))

e3Harelbeke1970' :: State ClassicState Classic
e3Harelbeke1970' = do
  edition <- build
  return edition

e3Harelbeke1971 :: Classic
e3Harelbeke1971 =
  evalState e3Harelbeke1971' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1971 3 27) 235 []))

e3Harelbeke1971' :: State ClassicState Classic
e3Harelbeke1971' = do
  edition <- build
  return edition

e3Harelbeke1972 :: Classic
e3Harelbeke1972 =
  evalState e3Harelbeke1972' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1972 3 25) 226 []))

e3Harelbeke1972' :: State ClassicState Classic
e3Harelbeke1972' = do
  edition <- build
  return edition

e3Harelbeke1973 :: Classic
e3Harelbeke1973 =
  evalState e3Harelbeke1973' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1973 3 24) 226 []))

e3Harelbeke1973' :: State ClassicState Classic
e3Harelbeke1973' = do
  edition <- build
  return edition

e3Harelbeke1974 :: Classic
e3Harelbeke1974 =
  evalState e3Harelbeke1974' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1974 3 23) 226 []))

e3Harelbeke1974' :: State ClassicState Classic
e3Harelbeke1974' = do
  edition <- build
  return edition

e3Harelbeke1975 :: Classic
e3Harelbeke1975 =
  evalState e3Harelbeke1975' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1975 3 22) 226 []))

e3Harelbeke1975' :: State ClassicState Classic
e3Harelbeke1975' = do
  edition <- build
  return edition

e3Harelbeke1976 :: Classic
e3Harelbeke1976 =
  evalState e3Harelbeke1976' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1976 3 20) 228 []))

e3Harelbeke1976' :: State ClassicState Classic
e3Harelbeke1976' = do
  edition <- build
  return edition

e3Harelbeke1977 :: Classic
e3Harelbeke1977 =
  evalState e3Harelbeke1977' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1977 3 26) 233 []))

e3Harelbeke1977' :: State ClassicState Classic
e3Harelbeke1977' = do
  edition <- build
  return edition

e3Harelbeke1978 :: Classic
e3Harelbeke1978 =
  evalState e3Harelbeke1978' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1978 4 1) 230 []))

e3Harelbeke1978' :: State ClassicState Classic
e3Harelbeke1978' = do
  edition <- build
  return edition

e3Harelbeke1979 :: Classic
e3Harelbeke1979 =
  evalState e3Harelbeke1979' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1979 3 24) 226 []))

e3Harelbeke1979' :: State ClassicState Classic
e3Harelbeke1979' = do
  edition <- build
  return edition

e3Harelbeke1980 :: Classic
e3Harelbeke1980 =
  evalState e3Harelbeke1980' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1980 3 22) 226 []))

e3Harelbeke1980' :: State ClassicState Classic
e3Harelbeke1980' = do
  edition <- build
  return edition

e3Harelbeke1981 :: Classic
e3Harelbeke1981 =
  evalState e3Harelbeke1981' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1981 3 28) 226 []))

e3Harelbeke1981' :: State ClassicState Classic
e3Harelbeke1981' = do
  edition <- build
  return edition

e3Harelbeke1982 :: Classic
e3Harelbeke1982 =
  evalState e3Harelbeke1982' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1982 3 27) 223 []))

e3Harelbeke1982' :: State ClassicState Classic
e3Harelbeke1982' = do
  edition <- build
  return edition

e3Harelbeke1983 :: Classic
e3Harelbeke1983 =
  evalState e3Harelbeke1983' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1983 3 26) 236 []))

e3Harelbeke1983' :: State ClassicState Classic
e3Harelbeke1983' = do
  edition <- build
  return edition

e3Harelbeke1984 :: Classic
e3Harelbeke1984 =
  evalState e3Harelbeke1984' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1984 3 24) 225 []))

e3Harelbeke1984' :: State ClassicState Classic
e3Harelbeke1984' = do
  edition <- build
  return edition

e3Harelbeke1985 :: Classic
e3Harelbeke1985 =
  evalState e3Harelbeke1985' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1985 3 30) 215 []))

e3Harelbeke1985' :: State ClassicState Classic
e3Harelbeke1985' = do
  edition <- build
  return edition

e3Harelbeke1986 :: Classic
e3Harelbeke1986 =
  evalState e3Harelbeke1986' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1986 3 22) 225 []))

e3Harelbeke1986' :: State ClassicState Classic
e3Harelbeke1986' = do
  edition <- build
  return edition

e3Harelbeke1987 :: Classic
e3Harelbeke1987 =
  evalState e3Harelbeke1987' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1987 3 26) 225 []))

e3Harelbeke1987' :: State ClassicState Classic
e3Harelbeke1987' = do
  edition <- build
  return edition

e3Harelbeke1988 :: Classic
e3Harelbeke1988 =
  evalState e3Harelbeke1988' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1988 3 26) 231 []))

e3Harelbeke1988' :: State ClassicState Classic
e3Harelbeke1988' = do
  edition <- build
  return edition

e3Harelbeke1989 :: Classic
e3Harelbeke1989 =
  evalState e3Harelbeke1989' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1989 3 25) 211 []))

e3Harelbeke1989' :: State ClassicState Classic
e3Harelbeke1989' = do
  edition <- build
  return edition

e3Harelbeke1990 :: Classic
e3Harelbeke1990 =
  evalState e3Harelbeke1990' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1990 3 24) 201 []))

e3Harelbeke1990' :: State ClassicState Classic
e3Harelbeke1990' = do
  edition <- build
  return edition

e3Harelbeke1991 :: Classic
e3Harelbeke1991 =
  evalState e3Harelbeke1991' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1991 3 30) 203 []))

e3Harelbeke1991' :: State ClassicState Classic
e3Harelbeke1991' = do
  edition <- build
  return edition

e3Harelbeke1992 :: Classic
e3Harelbeke1992 =
  evalState e3Harelbeke1992' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1992 3 28) 205 []))

e3Harelbeke1992' :: State ClassicState Classic
e3Harelbeke1992' = do
  edition <- build
  return edition

e3Harelbeke1993 :: Classic
e3Harelbeke1993 =
  evalState e3Harelbeke1993' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1993 3 27) 208 []))

e3Harelbeke1993' :: State ClassicState Classic
e3Harelbeke1993' = do
  edition <- build
  return edition

e3Harelbeke1994 :: Classic
e3Harelbeke1994 =
  evalState e3Harelbeke1994' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1994 3 26) 206 []))

e3Harelbeke1994' :: State ClassicState Classic
e3Harelbeke1994' = do
  edition <- build
  return edition

e3Harelbeke1995 :: Classic
e3Harelbeke1995 =
  evalState e3Harelbeke1995' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1995 3 25) 206 []))

e3Harelbeke1995' :: State ClassicState Classic
e3Harelbeke1995' = do
  edition <- build
  return edition

e3Harelbeke1996 :: Classic
e3Harelbeke1996 =
  evalState e3Harelbeke1996' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1996 3 30) 206 []))

e3Harelbeke1996' :: State ClassicState Classic
e3Harelbeke1996' = do
  edition <- build
  return edition

e3Harelbeke1997 :: Classic
e3Harelbeke1997 =
  evalState e3Harelbeke1997' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1997 3 29) 206 []))

e3Harelbeke1997' :: State ClassicState Classic
e3Harelbeke1997' = do
  edition <- build
  return edition

e3Harelbeke1998 :: Classic
e3Harelbeke1998 =
  evalState e3Harelbeke1998' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1998 3 28) 201 []))

e3Harelbeke1998' :: State ClassicState Classic
e3Harelbeke1998' = do
  edition <- build
  return edition

e3Harelbeke1999 :: Classic
e3Harelbeke1999 =
  evalState e3Harelbeke1999' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 1999 3 27) 206 []))

e3Harelbeke1999' :: State ClassicState Classic
e3Harelbeke1999' = do
  edition <- build
  return edition

e3Harelbeke2000 :: Classic
e3Harelbeke2000 =
  evalState e3Harelbeke2000' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2000 3 25) 209 []))

e3Harelbeke2000' :: State ClassicState Classic
e3Harelbeke2000' = do
  edition <- build
  return edition

e3Harelbeke2001 :: Classic
e3Harelbeke2001 =
  evalState e3Harelbeke2001' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2001 3 31) 209 []))

e3Harelbeke2001' :: State ClassicState Classic
e3Harelbeke2001' = do
  edition <- build
  return edition

e3Harelbeke2002 :: Classic
e3Harelbeke2002 =
  evalState e3Harelbeke2002' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2002 3 30) 209 []))

e3Harelbeke2002' :: State ClassicState Classic
e3Harelbeke2002' = do
  edition <- build
  return edition

e3Harelbeke2003 :: Classic
e3Harelbeke2003 =
  evalState e3Harelbeke2003' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2003 3 29) 209 []))

e3Harelbeke2003' :: State ClassicState Classic
e3Harelbeke2003' = do
  edition <- build
  return edition

e3Harelbeke2004 :: Classic
e3Harelbeke2004 =
  evalState e3Harelbeke2004' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2004 3 27) 195 []))

e3Harelbeke2004' :: State ClassicState Classic
e3Harelbeke2004' = do
  edition <- build
  return edition

e3Harelbeke2005 :: Classic
e3Harelbeke2005 =
  evalState e3Harelbeke2005' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2005 3 26) 200 []))

e3Harelbeke2005' :: State ClassicState Classic
e3Harelbeke2005' = do
  edition <- build
  return edition

e3Harelbeke2006 :: Classic
e3Harelbeke2006 =
  evalState e3Harelbeke2006' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2006 3 25) 203 []))

e3Harelbeke2006' :: State ClassicState Classic
e3Harelbeke2006' = do
  edition <- build
  return edition

e3Harelbeke2007 :: Classic
e3Harelbeke2007 =
  evalState e3Harelbeke2007' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2007 3 31) 203 []))

e3Harelbeke2007' :: State ClassicState Classic
e3Harelbeke2007' = do
  edition <- build
  return edition

e3Harelbeke2008 :: Classic
e3Harelbeke2008 =
  evalState e3Harelbeke2008' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2008 3 29) 203 []))

e3Harelbeke2008' :: State ClassicState Classic
e3Harelbeke2008' = do
  edition <- build
  return edition

e3Harelbeke2009 :: Classic
e3Harelbeke2009 =
  evalState e3Harelbeke2009' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2009 3 28) 208 []))

e3Harelbeke2009' :: State ClassicState Classic
e3Harelbeke2009' = do
  edition <- build
  return edition

e3Harelbeke2010 :: Classic
e3Harelbeke2010 =
  evalState e3Harelbeke2010' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2010 3 27) 203 []))

e3Harelbeke2010' :: State ClassicState Classic
e3Harelbeke2010' = do
  edition <- build
  return edition

e3Harelbeke2011 :: Classic
e3Harelbeke2011 =
  evalState e3Harelbeke2011' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2011 3 26) 222 []))

e3Harelbeke2011' :: State ClassicState Classic
e3Harelbeke2011' = do
  edition <- build
  return edition

e3Harelbeke2012 :: Classic
e3Harelbeke2012 =
  evalState e3Harelbeke2012' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2012 3 23) 212 []))

e3Harelbeke2012' :: State ClassicState Classic
e3Harelbeke2012' = do
  edition <- build
  return edition

e3Harelbeke2013 :: Classic
e3Harelbeke2013 =
  evalState e3Harelbeke2013' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2013 3 22) 211 []))

e3Harelbeke2013' :: State ClassicState Classic
e3Harelbeke2013' = do
  edition <- build
  return edition

e3Harelbeke2014 :: Classic
e3Harelbeke2014 =
  evalState e3Harelbeke2014' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2014 3 28) 212 []))

e3Harelbeke2014' :: State ClassicState Classic
e3Harelbeke2014' = do
  edition <- build
  return edition

e3Harelbeke2015 :: Classic
e3Harelbeke2015 =
  evalState e3Harelbeke2015' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2015 3 27) 215.3 []))

e3Harelbeke2015' :: State ClassicState Classic
e3Harelbeke2015' = do
  edition <- build
  return edition

e3Harelbeke2016 :: Classic
e3Harelbeke2016 =
  evalState e3Harelbeke2016' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2016 3 26) 206.4 []))

e3Harelbeke2016' :: State ClassicState Classic
e3Harelbeke2016' = do
  edition <- build
  return edition

e3Harelbeke2017 :: Classic
e3Harelbeke2017 =
  evalState e3Harelbeke2017' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2017 3 24) 206.1 []))

e3Harelbeke2017' :: State ClassicState Classic
e3Harelbeke2017' = do
  edition <- build
  return edition

e3Harelbeke2018 :: Classic
e3Harelbeke2018 =
  evalState e3Harelbeke2018' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2018 3 23) 206.1 []))

e3Harelbeke2018' :: State ClassicState Classic
e3Harelbeke2018' = do
  edition <- build
  return edition

e3Harelbeke2019 :: Classic
e3Harelbeke2019 =
  evalState e3Harelbeke2019' (ParcoursDB.State.Classic.init (E3Harelbeke (fromGregorian 2019 3 29) 203.9 []))

e3Harelbeke2019' :: State ClassicState Classic
e3Harelbeke2019' = do
  edition <- build
  return edition
