-- file StartFinishSpec.hs
module StartFinishSpec where

import Control.Monad.State (forM_)
import Data.Time
import Classics.AmstelGoldRace (amstelGoldRaceEditions)
import Classics.E3Harelbeke (e3HarelbekeEditions)
import Classics.GentWevelgem (gentWevelgemEditions)
import Classics.GrandPrixDePlouay (grandPrixDePlouayEditions)
import Classics.KuurneBrusselsKuurne (kuurneBrusselsKuurneEditions)
import Classics.LaFlecheWallonne (laFlecheWallonneEditions)
import Classics.LiegeBastogneLiege (liegeBastogneLiegeEditions)
import Classics.MilanoSanRemo (milanoSanRemoEditions)
import Classics.OmloopHetVolk (omloopHetVolkEditions)
import Classics.ParisRoubaix (parisRoubaixEditions)
import Classics.ParisTours (parisToursEditions)
import Classics.TourOfFlanders (tourOfFlandersEditions)
import Classics.TourOfLombardy (tourOfLombardyEditions)
import Countries.Belgium
import Countries.France
import Countries.Italy
import Countries.Netherlands
import Countries.Switzerland
import ParcoursDB.Classic
import ParcoursDB.Location
import Test.Hspec
import Text.Printf

data StartFinish = StartFinish { years        :: [Int]
                               , actualStart  :: Location
                               , actualFinish :: Location
                               }

matchEditionStart :: Int -> [StartFinish] -> Location
matchEditionStart year [x] = actualStart x
matchEditionStart year (x:xs)
  | year `elem` years x = actualStart x
  | otherwise           = matchEditionStart year xs

matchEditionFinish :: Int -> [StartFinish] -> Location
matchEditionFinish year [x] = actualFinish x
matchEditionFinish year (x:xs)
  | year `elem` years x = actualFinish x
  | otherwise           = matchEditionFinish year xs


amstelGoldRaceStartFinish :: [StartFinish]
amstelGoldRaceStartFinish = [ StartFinish { years = [ 1966 .. 1966 ], actualStart = breda,      actualFinish = meerssen }
                            , StartFinish { years = [ 1967 .. 1967 ], actualStart = helmond,    actualFinish = meerssen }
                            , StartFinish { years = [ 1968 .. 1968 ], actualStart = helmond,    actualFinish = elsloo }
                            , StartFinish { years = [ 1969 .. 1970 ], actualStart = helmond,    actualFinish = elsloo }
                            , StartFinish { years = [ 1971 .. 1990 ], actualStart = heerlen,    actualFinish = meerssen }
                            , StartFinish { years = [ 1991 .. 1997 ], actualStart = heerlen,    actualFinish = maastricht }
                            , StartFinish { years = [ 1998 .. 2002 ], actualStart = maastricht, actualFinish = maastricht }
                            , StartFinish { years = [ 2003 .. 2019 ], actualStart = maastricht, actualFinish = valkenburg }
                            ]

e3HarelbekeStartFinish :: [StartFinish]
e3HarelbekeStartFinish = [ StartFinish { years = [ 1958 .. 2019 ], actualStart = harelbeke, actualFinish = harelbeke } ]

gentWevelgemStartFinish :: [StartFinish]
gentWevelgemStartFinish = [ StartFinish { years = [ 1934 .. 2019 ], actualStart = ghent, actualFinish = ghent } ]

grandPrixDePlouayStartFinish :: [StartFinish]
grandPrixDePlouayStartFinish = [ StartFinish { years = [ 1931 .. 2019 ], actualStart = plouay, actualFinish = plouay } ]

kuurneBrusselsKuurneStartFinish :: [StartFinish]
kuurneBrusselsKuurneStartFinish = [ StartFinish { years = [ 1946 .. 2019 ], actualStart = kuurne, actualFinish = kuurne } ]

laFlecheWallonneStartFinish :: [StartFinish]
laFlecheWallonneStartFinish = [ StartFinish { years = [ 1936 .. 1936 ], actualStart = tournai,   actualFinish = liege }
                              , StartFinish { years = [ 1937 .. 1937 ], actualStart = tournai,   actualFinish = ans }
                              , StartFinish { years = [ 1938 .. 1938 ], actualStart = tournai,   actualFinish = rocourt }
                              , StartFinish { years = [ 1939 .. 1941 ], actualStart = mons,      actualFinish = rocourt }
                              , StartFinish { years = [ 1942 .. 1942 ], actualStart = mons,      actualFinish = marcinelle }
                              , StartFinish { years = [ 1943 .. 1945 ], actualStart = mons,      actualFinish = charleroi }
                              , StartFinish { years = [ 1946 .. 1947 ], actualStart = mons,      actualFinish = liege }
                              , StartFinish { years = [ 1948 .. 1959 ], actualStart = charleroi, actualFinish = liege }
                              , StartFinish { years = [ 1960 .. 1964 ], actualStart = liege,     actualFinish = charleroi }
                              , StartFinish { years = [ 1965 .. 1971 ], actualStart = liege,     actualFinish = marcinelle }
                              , StartFinish { years = [ 1972 .. 1973 ], actualStart = verviers,  actualFinish = marcinelle }
                              , StartFinish { years = [ 1974 .. 1978 ], actualStart = verviers,  actualFinish = verviers }
                              , StartFinish { years = [ 1979 .. 1979 ], actualStart = esneux,    actualFinish = marcinelle }
                              , StartFinish { years = [ 1980 .. 1980 ], actualStart = mons,      actualFinish = spa }
                              , StartFinish { years = [ 1981 .. 1981 ], actualStart = spa,       actualFinish = mons }
                              , StartFinish { years = [ 1982 .. 1982 ], actualStart = charleroi, actualFinish = spa }
                              , StartFinish { years = [ 1983 .. 1984 ], actualStart = charleroi, actualFinish = huy }
                              , StartFinish { years = [ 1985 .. 1985 ], actualStart = huy,       actualFinish = huy }
                              , StartFinish { years = [ 1986 .. 2019 ], actualStart = spa,       actualFinish = huy }
                              ]

liegeBastogneLiegeStartFinish :: [StartFinish]
liegeBastogneLiegeStartFinish = [ StartFinish { years = [ 1892 .. 1991 ], actualStart = liege, actualFinish = liege }
                                , StartFinish { years = [ 1992 .. 2018 ], actualStart = liege, actualFinish = ans }
                                , StartFinish { years = [ 2019 .. 2019 ], actualStart = liege, actualFinish = liege }
                                ]

milanoSanRemoStartFinish :: [StartFinish]
milanoSanRemoStartFinish = [ StartFinish { years = [ 1907 .. 2019 ], actualStart = milan, actualFinish = sanRemo } ]

omloopHetVolkStartFinish :: [StartFinish]
omloopHetVolkStartFinish = [ StartFinish { years = [ 1945 .. 1995 ], actualStart = ghent, actualFinish = ghent }
                           , StartFinish { years = [ 1996 .. 2007 ], actualStart = ghent, actualFinish = lokeren }
                           , StartFinish { years = [ 2019 .. 2019 ], actualStart = ghent, actualFinish = ghent }
                           ]

parisRoubaixStartFinish :: [StartFinish]
parisRoubaixStartFinish = [ StartFinish { years = [ 1896 .. 1897 ], actualStart = porteMaillot, actualFinish = roubaix }
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

parisToursStartFinish :: [StartFinish]
parisToursStartFinish = [ StartFinish { years = [ 1896 .. 1896 ], actualStart = paris,   actualFinish = tours }
                        , StartFinish { years = [ 1901 .. 1901 ], actualStart = paris,   actualFinish = tours }
                        , StartFinish { years = [ 1906 .. 1914 ], actualStart = paris,   actualFinish = tours }
                        , StartFinish { years = [ 1917 .. 1939 ], actualStart = paris,   actualFinish = tours }
                        , StartFinish { years = [ 1941 .. 1973 ], actualStart = paris,   actualFinish = tours }
                        , StartFinish { years = [ 1974 .. 1975 ], actualStart = tours,   actualFinish = versailles }
                        , StartFinish { years = [ 1976 .. 1977 ], actualStart = blois,   actualFinish = chaville }
                        , StartFinish { years = [ 1978 .. 1978 ], actualStart = blois,   actualFinish = autodromeDeMontlhery }
                        , StartFinish { years = [ 1979 .. 1984 ], actualStart = blois,   actualFinish = chaville }
                        , StartFinish { years = [ 1985 .. 1987 ], actualStart = creteil, actualFinish = chaville }
                        , StartFinish { years = [ 1988 .. 2018 ], actualStart = paris,   actualFinish = tours }
                        ]

tourOfFlandersStartFinish :: [StartFinish]
tourOfFlandersStartFinish = [ StartFinish { years = [ 1913 .. 1913 ], actualStart = ghent,       actualFinish = mariakerke }
                            , StartFinish { years = [ 1914 .. 1914 ], actualStart = ghent,       actualFinish = evergem }
                            , StartFinish { years = [ 1919 .. 1923 ], actualStart = ghent,       actualFinish = gentbrugge }
                            , StartFinish { years = [ 1924 .. 1927 ], actualStart = ghent,       actualFinish = ghent }
                            , StartFinish { years = [ 1928 .. 1941 ], actualStart = ghent,       actualFinish = ghent }
                            , StartFinish { years = [ 1942 .. 1944 ], actualStart = ghent,       actualFinish = ghent }
                            , StartFinish { years = [ 1945 .. 1961 ], actualStart = ghent,       actualFinish = wetteren }
                            , StartFinish { years = [ 1962 .. 1972 ], actualStart = ghent,       actualFinish = gentbrugge }
                            , StartFinish { years = [ 1973 .. 1976 ], actualStart = ghent,       actualFinish = meerbeke }
                            , StartFinish { years = [ 1977 .. 1997 ], actualStart = sintNiklaas, actualFinish = meerbeke }
                            , StartFinish { years = [ 1998 .. 2011 ], actualStart = bruges,      actualFinish = meerbeke }
                            , StartFinish { years = [ 2012 .. 2016 ], actualStart = bruges,      actualFinish = oudenaarde }
                            , StartFinish { years = [ 2016 .. 2019 ], actualStart = antwerp,     actualFinish = oudenaarde }
                            ]

tourOfLombardyStartFinish :: [StartFinish]
tourOfLombardyStartFinish = [ StartFinish { years = [ 1905 .. 1960 ], actualStart = milan,     actualFinish = milan }
                            , StartFinish { years = [ 1961 .. 1984 ], actualStart = milan,     actualFinish = como }
                            , StartFinish { years = [ 1984 .. 1989 ], actualStart = como,      actualFinish = milan }
                            , StartFinish { years = [ 1990 .. 1994 ], actualStart = milan,     actualFinish = monza }
                            , StartFinish { years = [ 1995 .. 2001 ], actualStart = varese,    actualFinish = bergamo }
                            , StartFinish { years = [ 2002 .. 2002 ], actualStart = cantu,     actualFinish = bergamo }
                            , StartFinish { years = [ 2003 .. 2003 ], actualStart = como,      actualFinish = bergamo }
                            , StartFinish { years = [ 2004 .. 2006 ], actualStart = mendrisio, actualFinish = como }
                            , StartFinish { years = [ 2007 .. 2009 ], actualStart = varese,    actualFinish = como }
                            , StartFinish { years = [ 2010 .. 2010 ], actualStart = milan,     actualFinish = como }
                            , StartFinish { years = [ 2011 .. 2011 ], actualStart = milan,     actualFinish = lecco }
                            , StartFinish { years = [ 2012 .. 2013 ], actualStart = bergamo,   actualFinish = lecco }
                            , StartFinish { years = [ 2014 .. 2014 ], actualStart = como,      actualFinish = bergamo }
                            , StartFinish { years = [ 2015 .. 2015 ], actualStart = bergamo,   actualFinish = como }
                            , StartFinish { years = [ 2016 .. 2016 ], actualStart = como,      actualFinish = bergamo }
                            , StartFinish { years = [ 2017 .. 2018 ], actualStart = bergamo,   actualFinish = como }
                            ]

startFinishSpec :: [Classic] -> [StartFinish] -> Spec
startFinishSpec editions startFinish =
  forM_ editions $ \(edition) -> do
    let raceName   = ParcoursDB.Classic.name edition
    let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
    let ctx        = printf "%s [%d]" raceName year
    context ctx $ do
      it "start location is as expected" $
        ParcoursDB.Classic.start edition `shouldBe` matchEditionStart (fromIntegral year) startFinish
      it "finish location is as expected" $
        ParcoursDB.Classic.finish edition `shouldBe` matchEditionFinish (fromIntegral year) startFinish

main :: IO ()
main = hspec $ do
  describe "Test the 'Amstel Gold Race' start and finish locations across the decades" $ do
    startFinishSpec amstelGoldRaceEditions amstelGoldRaceStartFinish
  describe "Test the 'E3 Harelbeke' start and finish locations across the decades" $ do
    startFinishSpec e3HarelbekeEditions e3HarelbekeStartFinish
  describe "Test the 'Gent-Wevelegem' start and finish locations across the decades" $ do
    startFinishSpec gentWevelgemEditions gentWevelgemStartFinish
  describe "Test the 'Grand Prix de Plouay' start and finish locations across the decades" $ do
    startFinishSpec grandPrixDePlouayEditions grandPrixDePlouayStartFinish
  describe "Test the 'Kuurne-Brussels-Kuurne' start and finish locations across the decades" $ do
    startFinishSpec kuurneBrusselsKuurneEditions kuurneBrusselsKuurneStartFinish
  describe "Test the 'La Flèche Wallonne' start and finish locations across the decades" $ do
    startFinishSpec laFlecheWallonneEditions laFlecheWallonneStartFinish
  describe "Test the 'Liège-Bastogne-Liège' start and finish locations across the decades" $ do
    startFinishSpec liegeBastogneLiegeEditions liegeBastogneLiegeStartFinish
  describe "Test the 'Milano-San Remo' start and finish locations across the decades" $ do
    startFinishSpec milanoSanRemoEditions milanoSanRemoStartFinish
  describe "Test the 'Omloop Het Volk' start and finish locations across the decades" $ do
    startFinishSpec omloopHetVolkEditions omloopHetVolkStartFinish
  describe "Test the 'Paris-Roubaix' start and finish locations across the decades" $ do
    startFinishSpec parisRoubaixEditions parisRoubaixStartFinish
  describe "Test the 'Paris-Tours' start and finish locations across the decades" $ do
    startFinishSpec parisToursEditions parisToursStartFinish
  describe "Test the 'Tour of Flanders' start and finish locations across the decades" $ do
    startFinishSpec tourOfFlandersEditions tourOfFlandersStartFinish
  describe "Test the 'Tour of Lombardy' start and finish locations across the decades" $ do
    startFinishSpec tourOfLombardyEditions tourOfLombardyStartFinish
