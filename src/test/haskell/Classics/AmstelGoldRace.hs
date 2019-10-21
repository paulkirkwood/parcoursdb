-- file Classics.AmstelGoldRace.hs
module Classics.AmstelGoldRace
(amstelGoldRaceEditions
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.Classic

amstelGoldRaceEditions :: [Classic]
amstelGoldRaceEditions = [ amstelGoldRace1966
                         , amstelGoldRace1967
                         , amstelGoldRace1968
                         , amstelGoldRace1969
                         , amstelGoldRace1970
                         , amstelGoldRace1971
                         , amstelGoldRace1972
                         , amstelGoldRace1973
                         , amstelGoldRace1974
                         , amstelGoldRace1975
                         , amstelGoldRace1976
                         , amstelGoldRace1977
                         , amstelGoldRace1978
                         , amstelGoldRace1979
                         , amstelGoldRace1980
                         , amstelGoldRace1981
                         , amstelGoldRace1982
                         , amstelGoldRace1983
                         , amstelGoldRace1984
                         , amstelGoldRace1985
                         , amstelGoldRace1986
                         , amstelGoldRace1987
                         , amstelGoldRace1988
                         , amstelGoldRace1989
                         , amstelGoldRace1990
                         , amstelGoldRace1991
                         , amstelGoldRace1992
                         , amstelGoldRace1993
                         , amstelGoldRace1994
                         , amstelGoldRace1995
                         , amstelGoldRace1996
                         , amstelGoldRace1997
                         , amstelGoldRace1998
                         , amstelGoldRace2000
                         , amstelGoldRace2001
                         , amstelGoldRace2002
                         , amstelGoldRace2003
                         , amstelGoldRace2004
                         , amstelGoldRace2005
                         , amstelGoldRace2006
                         , amstelGoldRace2007
                         , amstelGoldRace2008
                         , amstelGoldRace2009
                         , amstelGoldRace2010
                         , amstelGoldRace2011
                         , amstelGoldRace2012
                         , amstelGoldRace2013
                         , amstelGoldRace2014
                         , amstelGoldRace2015
                         , amstelGoldRace2016
                         , amstelGoldRace2017
                         , amstelGoldRace2018
                         ]

amstelGoldRace1966 :: Classic
amstelGoldRace1966 =
  evalState amstelGoldRace1966' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1966 4 30) 302 []))

amstelGoldRace1966' :: State ClassicState Classic
amstelGoldRace1966' = do
  edition <- build
  return edition

amstelGoldRace1967 :: Classic
amstelGoldRace1967 =
  evalState amstelGoldRace1967' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1967 4 15) 213 []))

amstelGoldRace1967' :: State ClassicState Classic
amstelGoldRace1967' = do
  edition <- build
  return edition

amstelGoldRace1968 :: Classic
amstelGoldRace1968 =
  evalState amstelGoldRace1968' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1968 9 21) 245 []))

amstelGoldRace1968' :: State ClassicState Classic
amstelGoldRace1968' = do
  edition <- build
  return edition

amstelGoldRace1969 :: Classic
amstelGoldRace1969 =
  evalState amstelGoldRace1969' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1969 4 18) 259 []))

amstelGoldRace1969' :: State ClassicState Classic
amstelGoldRace1969' = do
  edition <- build
  return edition

amstelGoldRace1970 :: Classic
amstelGoldRace1970 =
  evalState amstelGoldRace1970' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1970 4 25) 240 []))

amstelGoldRace1970' :: State ClassicState Classic
amstelGoldRace1970' = do
  edition <- build
  return edition

amstelGoldRace1971 :: Classic
amstelGoldRace1971 =
  evalState amstelGoldRace1971' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1971 3 28) 233 []))

amstelGoldRace1971' :: State ClassicState Classic
amstelGoldRace1971' = do
  edition <- build
  return edition

amstelGoldRace1972 :: Classic
amstelGoldRace1972 =
  evalState amstelGoldRace1972' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1972 3 26) 237 []))

amstelGoldRace1972' :: State ClassicState Classic
amstelGoldRace1972' = do
  edition <- build
  return edition

amstelGoldRace1973 :: Classic
amstelGoldRace1973 =
  evalState amstelGoldRace1973' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1973 4 7) 238 []))

amstelGoldRace1973' :: State ClassicState Classic
amstelGoldRace1973' = do
  edition <- build
  return edition

amstelGoldRace1974 :: Classic
amstelGoldRace1974 =
  evalState amstelGoldRace1974' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1974 4 13) 238 []))

amstelGoldRace1974' :: State ClassicState Classic
amstelGoldRace1974' = do
  edition <- build
  return edition

amstelGoldRace1975 :: Classic
amstelGoldRace1975 =
  evalState amstelGoldRace1975' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1975 3 29) 238 []))

amstelGoldRace1975' :: State ClassicState Classic
amstelGoldRace1975' = do
  edition <- build
  return edition

amstelGoldRace1976 :: Classic
amstelGoldRace1976 =
  evalState amstelGoldRace1976' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1976 3 27) 230 []))

amstelGoldRace1976' :: State ClassicState Classic
amstelGoldRace1976' = do
  edition <- build
  return edition

amstelGoldRace1977 :: Classic
amstelGoldRace1977 =
  evalState amstelGoldRace1977' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1977 4 9) 230 []))

amstelGoldRace1977' :: State ClassicState Classic
amstelGoldRace1977' = do
  edition <- build
  return edition

amstelGoldRace1978 :: Classic
amstelGoldRace1978 =
  evalState amstelGoldRace1978' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1978 3 25) 230 []))

amstelGoldRace1978' :: State ClassicState Classic
amstelGoldRace1978' = do
  edition <- build
  return edition

amstelGoldRace1979 :: Classic
amstelGoldRace1979 =
  evalState amstelGoldRace1979' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1979 4 14) 237 []))

amstelGoldRace1979' :: State ClassicState Classic
amstelGoldRace1979' = do
  edition <- build
  return edition

amstelGoldRace1980 :: Classic
amstelGoldRace1980 =
  evalState amstelGoldRace1980' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1980 4 5) 238 []))

amstelGoldRace1980' :: State ClassicState Classic
amstelGoldRace1980' = do
  edition <- build
  return edition

amstelGoldRace1981 :: Classic
amstelGoldRace1981 =
  evalState amstelGoldRace1981' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1981 4 2) 237 []))

amstelGoldRace1981' :: State ClassicState Classic
amstelGoldRace1981' = do
  edition <- build
  return edition

amstelGoldRace1982 :: Classic
amstelGoldRace1982 =
  evalState amstelGoldRace1982' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1982 4 24) 237 []))

amstelGoldRace1982' :: State ClassicState Classic
amstelGoldRace1982' = do
  edition <- build
  return edition

amstelGoldRace1983 :: Classic
amstelGoldRace1983 =
  evalState amstelGoldRace1983' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1983 4 23) 242 []))

amstelGoldRace1983' :: State ClassicState Classic
amstelGoldRace1983' = do
  edition <- build
  return edition

amstelGoldRace1984 :: Classic
amstelGoldRace1984 =
  evalState amstelGoldRace1984' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1984 4 21) 247 []))

amstelGoldRace1984' :: State ClassicState Classic
amstelGoldRace1984' = do
  edition <- build
  return edition

amstelGoldRace1985 :: Classic
amstelGoldRace1985 =
  evalState amstelGoldRace1985' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1985 4 27) 242 []))

amstelGoldRace1985' :: State ClassicState Classic
amstelGoldRace1985' = do
  edition <- build
  return edition

amstelGoldRace1986 :: Classic
amstelGoldRace1986 =
  evalState amstelGoldRace1986' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1986 4 26) 242 []))

amstelGoldRace1986' :: State ClassicState Classic
amstelGoldRace1986' = do
  edition <- build
  return edition

amstelGoldRace1987 :: Classic
amstelGoldRace1987 =
  evalState amstelGoldRace1987' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1987 4 25) 242 []))

amstelGoldRace1987' :: State ClassicState Classic
amstelGoldRace1987' = do
  edition <- build
  return edition

amstelGoldRace1988 :: Classic
amstelGoldRace1988 =
  evalState amstelGoldRace1988' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1988 4 23) 242 []))

amstelGoldRace1988' :: State ClassicState Classic
amstelGoldRace1988' = do
  edition <- build
  return edition

amstelGoldRace1989 :: Classic
amstelGoldRace1989 =
  evalState amstelGoldRace1989' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1989 4 22) 242 []))

amstelGoldRace1989' :: State ClassicState Classic
amstelGoldRace1989' = do
  edition <- build
  return edition

amstelGoldRace1990 :: Classic
amstelGoldRace1990 =
  evalState amstelGoldRace1990' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1990 4 21) 249 []))

amstelGoldRace1990' :: State ClassicState Classic
amstelGoldRace1990' = do
  edition <- build
  return edition

amstelGoldRace1991 :: Classic
amstelGoldRace1991 =
  evalState amstelGoldRace1991' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1991 4 27) 244 []))

amstelGoldRace1991' :: State ClassicState Classic
amstelGoldRace1991' = do
  edition <- build
  return edition

amstelGoldRace1992 :: Classic
amstelGoldRace1992 =
  evalState amstelGoldRace1992' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1992 4 25) 247.5 []))

amstelGoldRace1992' :: State ClassicState Classic
amstelGoldRace1992' = do
  edition <- build
  return edition

amstelGoldRace1993 :: Classic
amstelGoldRace1993 =
  evalState amstelGoldRace1993' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1993 4 24) 249 []))

amstelGoldRace1993' :: State ClassicState Classic
amstelGoldRace1993' = do
  edition <- build
  return edition

amstelGoldRace1994 :: Classic
amstelGoldRace1994 =
  evalState amstelGoldRace1994' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1994 4 23) 250 []))

amstelGoldRace1994' :: State ClassicState Classic
amstelGoldRace1994' = do
  edition <- build
  return edition

amstelGoldRace1995 :: Classic
amstelGoldRace1995 =
  evalState amstelGoldRace1995' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1995 4 22) 256 []))

amstelGoldRace1995' :: State ClassicState Classic
amstelGoldRace1995' = do
  edition <- build
  return edition

amstelGoldRace1996 :: Classic
amstelGoldRace1996 =
  evalState amstelGoldRace1996' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1996 4 27) 253 []))

amstelGoldRace1996' :: State ClassicState Classic
amstelGoldRace1996' = do
  edition <- build
  return edition

amstelGoldRace1997 :: Classic
amstelGoldRace1997 =
  evalState amstelGoldRace1997' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1997 4 26) 258 []))

amstelGoldRace1997' :: State ClassicState Classic
amstelGoldRace1997' = do
  edition <- build
  return edition

amstelGoldRace1998 :: Classic
amstelGoldRace1998 =
  evalState amstelGoldRace1998' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1998 4 25) 257.3 []))

amstelGoldRace1998' :: State ClassicState Classic
amstelGoldRace1998' = do
  edition <- build
  return edition

amstelGoldRace1999 :: Classic
amstelGoldRace1999 =
  evalState amstelGoldRace1999' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 1999 4 24) 253 []))

amstelGoldRace1999' :: State ClassicState Classic
amstelGoldRace1999' = do
  edition <- build
  return edition

amstelGoldRace2000 :: Classic
amstelGoldRace2000 =
  evalState amstelGoldRace2000' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2000 4 22) 257 []))

amstelGoldRace2000' :: State ClassicState Classic
amstelGoldRace2000' = do
  edition <- build
  return edition

amstelGoldRace2001 :: Classic
amstelGoldRace2001 =
  evalState amstelGoldRace2001' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2001 4 28) 257 []))

amstelGoldRace2001' :: State ClassicState Classic
amstelGoldRace2001' = do
  edition <- build
  return edition

amstelGoldRace2002 :: Classic
amstelGoldRace2002 =
  evalState amstelGoldRace2002' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2002 4 28) 254.4 []))

amstelGoldRace2002' :: State ClassicState Classic
amstelGoldRace2002' = do
  edition <- build
  return edition

amstelGoldRace2003 :: Classic
amstelGoldRace2003 =
  evalState amstelGoldRace2003' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2003 4 20) 250.7 []))

amstelGoldRace2003' :: State ClassicState Classic
amstelGoldRace2003' = do
  edition <- build
  return edition

amstelGoldRace2004 :: Classic
amstelGoldRace2004 =
  evalState amstelGoldRace2004' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2004 4 18) 251.1 []))

amstelGoldRace2004' :: State ClassicState Classic
amstelGoldRace2004' = do
  edition <- build
  return edition

amstelGoldRace2005 :: Classic
amstelGoldRace2005 =
  evalState amstelGoldRace2005' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2005 4 17) 250.7 []))

amstelGoldRace2005' :: State ClassicState Classic
amstelGoldRace2005' = do
  edition <- build
  return edition

amstelGoldRace2006 :: Classic
amstelGoldRace2006 =
  evalState amstelGoldRace2006' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2006 4 16) 253.1 []))

amstelGoldRace2006' :: State ClassicState Classic
amstelGoldRace2006' = do
  edition <- build
  return edition

amstelGoldRace2007 :: Classic
amstelGoldRace2007 =
  evalState amstelGoldRace2007' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2007 4 22) 253.1 []))

amstelGoldRace2007' :: State ClassicState Classic
amstelGoldRace2007' = do
  edition <- build
  return edition

amstelGoldRace2008 :: Classic
amstelGoldRace2008 =
  evalState amstelGoldRace2008' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2008 4 20) 257.4 []))

amstelGoldRace2008' :: State ClassicState Classic
amstelGoldRace2008' = do
  edition <- build
  return edition

amstelGoldRace2009 :: Classic
amstelGoldRace2009 =
  evalState amstelGoldRace2009' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2009 4 19) 257.4 []))

amstelGoldRace2009' :: State ClassicState Classic
amstelGoldRace2009' = do
  edition <- build
  return edition

amstelGoldRace2010 :: Classic
amstelGoldRace2010 =
  evalState amstelGoldRace2010' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2010 4 18) 257.4 []))

amstelGoldRace2010' :: State ClassicState Classic
amstelGoldRace2010' = do
  edition <- build
  return edition

amstelGoldRace2011 :: Classic
amstelGoldRace2011 =
  evalState amstelGoldRace2011' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2011 4 17) 260.4 []))

amstelGoldRace2011' :: State ClassicState Classic
amstelGoldRace2011' = do
  edition <- build
  return edition

amstelGoldRace2012 :: Classic
amstelGoldRace2012 =
  evalState amstelGoldRace2012' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2012 4 15) 256.5 []))

amstelGoldRace2012' :: State ClassicState Classic
amstelGoldRace2012' = do
  edition <- build
  return edition

amstelGoldRace2013 :: Classic
amstelGoldRace2013 =
  evalState amstelGoldRace2013' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2013 4 14) 251.8 []))

amstelGoldRace2013' :: State ClassicState Classic
amstelGoldRace2013' = do
  edition <- build
  return edition

amstelGoldRace2014 :: Classic
amstelGoldRace2014 =
  evalState amstelGoldRace2014' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2014 4 20) 251 []))

amstelGoldRace2014' :: State ClassicState Classic
amstelGoldRace2014' = do
  edition <- build
  return edition

amstelGoldRace2015 :: Classic
amstelGoldRace2015 =
  evalState amstelGoldRace2015' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2015 4 19) 258 []))

amstelGoldRace2015' :: State ClassicState Classic
amstelGoldRace2015' = do
  edition <- build
  return edition

amstelGoldRace2016 :: Classic
amstelGoldRace2016 =
  evalState amstelGoldRace2016' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2016 4 17) 248.7 []))

amstelGoldRace2016' :: State ClassicState Classic
amstelGoldRace2016' = do
  edition <- build
  return edition

amstelGoldRace2017 :: Classic
amstelGoldRace2017 =
  evalState amstelGoldRace2017' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2017 4 16) 264.6 []))

amstelGoldRace2017' :: State ClassicState Classic
amstelGoldRace2017' = do
  edition <- build
  return edition

amstelGoldRace2018 :: Classic
amstelGoldRace2018 =
  evalState amstelGoldRace2018' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2018 4 15) 263 []))

amstelGoldRace2018' :: State ClassicState Classic
amstelGoldRace2018' = do
  edition <- build
  return edition

amstelGoldRace2019 :: Classic
amstelGoldRace2019 =
  evalState amstelGoldRace2019' (ParcoursDB.State.Classic.init (AmstelGoldRace (fromGregorian 2019 4 21) 265.7 []))

amstelGoldRace2019' :: State ClassicState Classic
amstelGoldRace2019' = do
  edition <- build
  return edition
