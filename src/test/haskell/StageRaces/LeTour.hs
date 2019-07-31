-- file StageRaces.LeTour.hs
module StageRaces.LeTour
(tdf1903
,tdf1904
,tdf1970
,tdf1971
,tdf2018
,tourDeFranceEditions
)where

import Control.Monad.State
import Countries.Andorra
import Countries.Belgium
import Countries.France
import Countries.Germany
import Countries.Ireland
import Countries.Italy
import Countries.Luxembourg
import Countries.Monaco
import Countries.Netherlands
import Countries.Spain
import Countries.Switzerland
import Countries.WestGermany
import Countries.UnitedKingdom
import Data.Time
import Mountains.Alpes
import Mountains.MassifArmorican
import Mountains.MassifCentral
import Mountains.Pyrenees
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.NonConsecutiveStageRace hiding (roadStage,teamTimeTrial)
import ParcoursDB.State.StageRace

tourDeFranceEditions :: [StageRace]
tourDeFranceEditions = [ tdf1903
                       , tdf1904
                       , tdf1905
                       , tdf1906
                       , tdf1907
                       , tdf1908
                       , tdf1909
                       , tdf1910
                       , tdf1911
                       , tdf1912
                       , tdf1913
                       , tdf1914
                       , tdf1919
                       , tdf1920
                       , tdf1921
                       , tdf1922
                       , tdf1923
                       , tdf1924
                       , tdf1925
                       , tdf1926
                       , tdf1927
                       , tdf1928
                       , tdf1929
                       , tdf1930
                       , tdf1931
                       , tdf1932
                       , tdf1933
                       , tdf1934
                       , tdf1935
                       , tdf1936
                       , tdf1937
                       , tdf1938
                       , tdf1939
                       , tdf1947
                       , tdf1948
                       , tdf1949
                       , tdf1950
                       , tdf1951
                       , tdf1952
                       , tdf1953
                       , tdf1954
                       , tdf1955
                       , tdf1956
                       , tdf1957
                       , tdf1958
                       , tdf1959
                       , tdf1960
                       , tdf1961
                       , tdf1962
                       , tdf1963
                       , tdf1964
                       , tdf1965
                       , tdf1966
                       , tdf1967
                       , tdf1968
                       , tdf1969
                       , tdf1970
                       , tdf1971
                       , tdf1972
                       , tdf1978
                       , tdf1979
                       , tdf1980
                       , tdf1981
                       , tdf1982
                       , tdf1983
                       , tdf1984
                       , tdf1985
                       , tdf1986
                       , tdf1987
                       , tdf1988
                       , tdf1989
                       , tdf1990
                       , tdf1981
                       , tdf1992
                       , tdf1993
                       , tdf1994
                       , tdf1995
                       , tdf1996
                       , tdf1997
                       , tdf1998
                       , tdf1999
                       , tdf2000
                       , tdf2001
                       , tdf2002
                       , tdf2003
                       , tdf2004
                       , tdf2005
                       , tdf2006
                       , tdf2007
                       , tdf2008
                       , tdf2009
                       , tdf2010
                       , tdf2011
                       , tdf2012
                       , tdf2013
                       , tdf2014
                       , tdf2015
                       , tdf2016
                       , tdf2017
                       , tdf2018
                       ]

tdf1903Stages :: [NonConsecutiveStage]
tdf1903Stages = [ NonConsecutiveRoadStage {month=7, day=1,  start=paris,     finish=lyon,      distance=467}
                , NonConsecutiveRoadStage {month=7, day=5,  start=lyon,      finish=marseille, distance=374}
                , NonConsecutiveRoadStage {month=7, day=8,  start=marseille, finish=toulouse,  distance=423}
                , NonConsecutiveRoadStage {month=7, day=12, start=toulouse,  finish=bordeaux,  distance=268}
                , NonConsecutiveRoadStage {month=7, day=13, start=bordeaux,  finish=nantes,    distance=425}
                , NonConsecutiveRoadStage {month=7, day=18, start=nantes,    finish=paris,     distance=471}
                ]

tdf1904Stages :: [NonConsecutiveStage]
tdf1904Stages = [ NonConsecutiveRoadStage {month=7, day=2,  start=montgeron, finish=lyon,      distance=467}
                , NonConsecutiveRoadStage {month=7, day=9,  start=lyon,      finish=marseille, distance=374}
                , NonConsecutiveRoadStage {month=7, day=13, start=marseille, finish=toulouse,  distance=424}
                , NonConsecutiveRoadStage {month=7, day=17, start=toulouse,  finish=bordeaux,  distance=268}
                , NonConsecutiveRoadStage {month=7, day=20, start=bordeaux,  finish=nantes,    distance=425}
                , NonConsecutiveRoadStage {month=7, day=23, start=nantes,    finish=paris,     distance=471}
                ]

tdf1905Stages :: [NonConsecutiveStage]
tdf1905Stages = [ NonConsecutiveRoadStage {month=7, day=9,  start=paris,      finish=nancy,      distance=340.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=nancy,      finish=besancon,   distance=299.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=besancon,   finish=grenoble,   distance=327.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=grenoble,   finish=toulon,     distance=348.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=toulon,     finish=nimes,      distance=192.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=nimes,      finish=toulouse,   distance=307.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=toulouse,   finish=bordeaux,   distance=268.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=bordeaux,   finish=laRochelle, distance=257.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=laRochelle, finish=rennes,     distance=263.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=rennes,     finish=caen,       distance=167.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=caen,       finish=paris,      distance=253.0}
                ]

tdf1906Stages :: [NonConsecutiveStage]
tdf1906Stages = [ NonConsecutiveRoadStage {month=7, day=4, start=paris, finish=lille, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=douai, finish=nancy, distance=400.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=nancy, finish=dijon, distance=416.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=dijon, finish=grenoble, distance=311.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=grenoble, finish=nice, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=nice, finish=marseille, distance=292.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=marseille, finish=toulouse, distance=480.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=toulouse, finish=bayonne, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=bayonne, finish=bordeaux, distance=338.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=bordeaux, finish=nantes, distance=391.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=nantes, finish=brest, distance=321.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=brest, finish=caen, distance=415.0}
                , NonConsecutiveRoadStage {month=7, day=29, start=caen, finish=paris, distance=259.0}
                ]

tdf1907Stages :: [NonConsecutiveStage]
tdf1907Stages = [ NonConsecutiveRoadStage {month=7, day=8, start=paris, finish=roubaix, distance=272.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=roubaix, finish=metz, distance=398.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=metz, finish=belfort, distance=259.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=belfort, finish=lyon, distance=309.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=lyon, finish=grenoble, distance=311.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=grenoble, finish=nice, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=nice, finish=nimes, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=nimes, finish=toulouse, distance=303.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=toulouse, finish=bayonne, distance=299.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=bayonne, finish=bordeaux, distance=269.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=bordeaux, finish=nantes, distance=391.0}
                , NonConsecutiveRoadStage {month=7, day=30, start=nantes, finish=brest, distance=321.0}
                , NonConsecutiveRoadStage {month=8, day=1, start=brest, finish=caen, distance=415.0}
                , NonConsecutiveRoadStage {month=8, day=4, start=caen, finish=paris, distance=251.0}
                ]

tdf1908Stages :: [NonConsecutiveStage]
tdf1908Stages = [ NonConsecutiveRoadStage {month=7, day=13, start=paris, finish=roubaix, distance=272.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=roubaix, finish=metz, distance=398.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=metz, finish=belfort, distance=259.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=belfort, finish=lyon, distance=309.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=lyon, finish=grenoble, distance=311.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=grenoble, finish=nice, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=nice, finish=nimes, distance=354.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=nimes, finish=toulouse, distance=303.0}
                , NonConsecutiveRoadStage {month=7, day=29, start=toulouse, finish=bayonne, distance=299.0}
                , NonConsecutiveRoadStage {month=7, day=31, start=bayonne, finish=bordeaux, distance=269.0}
                , NonConsecutiveRoadStage {month=8, day=2, start=bordeaux, finish=nantes, distance=391.0}
                , NonConsecutiveRoadStage {month=8, day=4, start=nantes, finish=brest, distance=321.0}
                , NonConsecutiveRoadStage {month=8, day=6, start=brest, finish=caen, distance=415.0}
                , NonConsecutiveRoadStage {month=8, day=9, start=caen, finish=paris, distance=251.0}
                ]

tdf1909Stages :: [NonConsecutiveStage]
tdf1909Stages = [ NonConsecutiveRoadStage {month=7, day=5, start=paris, finish=roubaix, distance=272.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=roubaix, finish=metz, distance=398.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=metz, finish=belfort, distance=259.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=belfort, finish=lyon, distance=309.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=lyon, finish=grenoble, distance=311.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=grenoble, finish=nice, distance=346.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=nice, finish=nimes, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=nimes, finish=toulouse, distance=303.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=toulouse, finish=bayonne, distance=299.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=bayonne, finish=bordeaux, distance=269.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=bordeaux, finish=nantes, distance=391.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=nantes, finish=brest, distance=321.0}
                , NonConsecutiveRoadStage {month=7, day=29, start=brest, finish=caen, distance=424.0}
                , NonConsecutiveRoadStage {month=8, day=1, start=caen, finish=paris, distance=250.0}
                ]

tdf1910Stages :: [NonConsecutiveStage]
tdf1910Stages = [ NonConsecutiveRoadStage {month=7, day=3, start=paris, finish=roubaix, distance=269.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=roubaix, finish=metz, distance=398.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=metz, finish=belfort, distance=259.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=belfort, finish=lyon, distance=309.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=lyon, finish=grenoble, distance=311.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=grenoble, finish=nice, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=nice, finish=nimes, distance=345.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=nimes, finish=perpignan, distance=216.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=perpignan, finish=luchon, distance=289.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=bayonne, finish=bordeaux, distance=269.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=bordeaux, finish=nantes, distance=391.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=nantes, finish=brest, distance=321.0}
                , NonConsecutiveRoadStage {month=7, day=29, start=brest, finish=caen, distance=424.0}
                , NonConsecutiveRoadStage {month=7, day=31, start=caen, finish=paris, distance=262.0}
                ]

tdf1911Stages :: [NonConsecutiveStage]
tdf1911Stages = [ NonConsecutiveRoadStage {month=7, day=2, start=paris, finish=dunkerque, distance=351.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=dunkerque, finish=longwy, distance=388.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=longwy, finish=belfort, distance=331.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=belfort, finish=chamonix, distance=344.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=chamonix, finish=grenoble, distance=366.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=grenoble, finish=nice, distance=348.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=nice, finish=marseille, distance=334.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=marseille, finish=perpignan, distance=335.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=perpignan, finish=luchon, distance=289.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=luchon, finish=bayonne, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=bayonne, finish=laRochelle, distance=379.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=laRochelle, finish=brest, distance=470.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=brest, finish=cherbourg, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=cherbourg, finish=leHavre, distance=361.0}
                , NonConsecutiveRoadStage {month=7, day=30, start=leHavre, finish=paris, distance=317.0}
                ]

tdf1912Stages :: [NonConsecutiveStage]
tdf1912Stages = [ NonConsecutiveRoadStage {month=6, day=30, start=paris, finish=dunkerque, distance=351.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=dunkerque, finish=longwy, distance=388.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=longwy, finish=belfort, distance=331.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=belfort, finish=chamonix, distance=344.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=chamonix, finish=grenoble, distance=366.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=grenoble, finish=nice, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=nice, finish=marseille, distance=334.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=marseille, finish=perpignan, distance=335.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=perpignan, finish=luchon, distance=289.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=luchon, finish=bayonne, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=bayonne, finish=laRochelle, distance=379.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=laRochelle, finish=brest, distance=470.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=brest, finish=cherbourg, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=cherbourg, finish=leHavre, distance=361.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=leHavre, finish=paris, distance=317.0}
                ]

tdf1913Stages :: [NonConsecutiveStage]
tdf1913Stages = [ NonConsecutiveRoadStage {month=6, day=29, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=brest, finish=laRochelle, distance=470.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=laRochelle, finish=bayonne, distance=379.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=luchon, finish=perpignan, distance=324.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=perpignan, finish=aixEnProvence, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=aixEnProvence, finish=nice, distance=356.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=grenoble, finish=geneva, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=geneva, finish=belfort, distance=335.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=belfort, finish=longwy, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=longwy, finish=dunkerque, distance=393.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1914Stages :: [NonConsecutiveStage]
tdf1914Stages = [ NonConsecutiveRoadStage {month=6, day=28, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=brest, finish=laRochelle, distance=470.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=laRochelle, finish=bayonne, distance=376.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=perpignan, finish=marseille, distance=370.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=marseille, finish=nice, distance=338.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=nice, finish=grenoble, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=grenoble, finish=geneva, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=geneva, finish=belfort, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=belfort, finish=longwy, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=longwy, finish=dunkerque, distance=390.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1919Stages :: [NonConsecutiveStage]
tdf1919Stages = [ NonConsecutiveRoadStage {month=6, day=29, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=perpignan, finish=marseille, distance=370.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=marseille, finish=nice, distance=338.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=grenoble, finish=geneva, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=geneva, finish=strasbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=strasbourg, finish=metz, distance=315.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=metz, finish=dunkerque, distance=468.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1920Stages :: [NonConsecutiveStage]
tdf1920Stages = [ NonConsecutiveRoadStage {month=6, day=27, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=6, day=29, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=perpignan, finish=aixEnProvence, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=aixEnProvence, finish=nice, distance=356.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=grenoble, finish=gex, distance=362.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=gex, finish=strasbourg, distance=354.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=strasbourg, finish=metz, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1921Stages :: [NonConsecutiveStage]
tdf1921Stages = [ NonConsecutiveRoadStage {month=6, day=26, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=perpignan, finish=toulon, distance=411.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=toulon, finish=nice, distance=272.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=grenoble, finish=geneva, distance=325.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=geneva, finish=strasbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=strasbourg, finish=metz, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1922Stages :: [NonConsecutiveStage]
tdf1922Stages = [ NonConsecutiveRoadStage {month=6, day=25, start=paris, finish=leHavre, distance=388.0}
                , NonConsecutiveRoadStage {month=6, day=27, start=leHavre, finish=cherbourg, distance=364.0}
                , NonConsecutiveRoadStage {month=6, day=29, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=perpignan, finish=toulon, distance=411.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=toulon, finish=nice, distance=284.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=nice, finish=briancon, distance=274.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=briancon, finish=geneva, distance=260.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=geneva, finish=strasbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=strasbourg, finish=metz, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=dunkerque, finish=paris, distance=340.0}
                ]

tdf1923Stages :: [NonConsecutiveStage]
tdf1923Stages = [ NonConsecutiveRoadStage {month=6, day=24, start=paris, finish=leHavre, distance=381.0}
                , NonConsecutiveRoadStage {month=6, day=26, start=leHavre, finish=cherbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=perpignan, finish=toulon, distance=427.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=toulon, finish=nice, distance=281.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=nice, finish=briancon, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=briancon, finish=geneva, distance=260.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=geneva, finish=strasbourg, distance=377.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=strasbourg, finish=metz, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=dunkerque, finish=paris, distance=343.0}
                ]

tdf1924Stages :: [NonConsecutiveStage]
tdf1924Stages = [ NonConsecutiveRoadStage {month=6, day=22, start=paris, finish=leHavre, distance=381.0}
                , NonConsecutiveRoadStage {month=6, day=24, start=leHavre, finish=cherbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=6, day=26, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=lesSablesD'Olonne, finish=bayonne, distance=482.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=perpignan, finish=toulon, distance=427.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=toulon, finish=nice, distance=280.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=nice, finish=briancon, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=briancon, finish=gex, distance=307.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=gex, finish=strasbourg, distance=360.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=strasbourg, finish=metz, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=dunkerque, finish=paris, distance=343.0}
                ]

tdf1925Stages :: [NonConsecutiveStage]
tdf1925Stages = [ NonConsecutiveRoadStage {month=6, day=21, start=paris, finish=leHavre, distance=340.0}
                , NonConsecutiveRoadStage {month=6, day=23, start=leHavre, finish=cherbourg, distance=371.0}
                , NonConsecutiveRoadStage {month=6, day=25, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=6, day=26, start=brest, finish=vannes, distance=208.0}
                , NonConsecutiveRoadStage {month=6, day=27, start=vannes, finish=lesSablesD'Olonne, distance=204.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=lesSablesD'Olonne, finish=bordeaux, distance=293.0}
                , NonConsecutiveRoadStage {month=6, day=29, start=bordeaux, finish=bayonne, distance=189.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=perpignan, finish=nimes, distance=215.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=nimes, finish=toulon, distance=215.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=toulon, finish=nice, distance=280.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=nice, finish=briancon, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=briancon, finish=evian, distance=303.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=evian, finish=mulhouse, distance=373.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=mulhouse, finish=metz, distance=334.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=dunkerque, finish=paris, distance=343.0}
                ]

tdf1926Stages :: [NonConsecutiveStage]
tdf1926Stages = [ NonConsecutiveRoadStage {month=6, day=20, start=evian, finish=mulhouse, distance=373.0}
                , NonConsecutiveRoadStage {month=6, day=22, start=mulhouse, finish=metz, distance=334.0}
                , NonConsecutiveRoadStage {month=6, day=24, start=metz, finish=dunkerque, distance=433.0}
                , NonConsecutiveRoadStage {month=6, day=26, start=dunkerque, finish=leHavre, distance=361.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=leHavre, finish=cherbourg, distance=357.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=cherbourg, finish=brest, distance=405.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=brest, finish=lesSablesD'Olonne, distance=412.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=lesSablesD'Olonne, finish=bordeaux, distance=285.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=bordeaux, finish=bayonne, distance=189.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=perpignan, finish=toulon, distance=427.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=toulon, finish=nice, distance=280.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=nice, finish=briancon, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=briancon, finish=evian, distance=303.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=evian, finish=dijon, distance=321.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=dijon, finish=paris, distance=341.0}
                ]

tdf1927Stages :: [NonConsecutiveStage]
tdf1927Stages = [ NonConsecutiveTTT {month=6, day=19, start=paris, finish=dieppe, distance=180.0}
                , NonConsecutiveTTT {month=6, day=20, start=dieppe, finish=leHavre, distance=103.0}
                , NonConsecutiveTTT {month=6, day=21, start=leHavre, finish=caen, distance=225.0}
                , NonConsecutiveTTT {month=6, day=22, start=caen, finish=cherbourg, distance=140.0}
                , NonConsecutiveTTT {month=6, day=23, start=cherbourg, finish=dinan, distance=199.0}
                , NonConsecutiveTTT {month=6, day=24, start=dinan, finish=brest, distance=206.0}
                , NonConsecutiveTTT {month=6, day=25, start=brest, finish=vannes, distance=207.0}
                , NonConsecutiveTTT {month=6, day=26, start=vannes, finish=lesSablesD'Olonne, distance=204.0}
                , NonConsecutiveTTT {month=6, day=27, start=lesSablesD'Olonne, finish=bordeaux, distance=285.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=bordeaux, finish=bayonne, distance=189.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=bayonne, finish=luchon, distance=326.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=perpignan, finish=marseille, distance=360.0}
                , NonConsecutiveTTT {month=7, day=5, start=marseille, finish=toulon, distance=120.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=toulon, finish=nice, distance=220.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=nice, finish=briancon, distance=275.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=briancon, finish=evian, distance=283.0}
                , NonConsecutiveTTT {month=7, day=11, start=evian, finish=pontarlier, distance=213.0}
                , NonConsecutiveTTT {month=7, day=12, start=pontarlier, finish=belfort, distance=119.0}
                , NonConsecutiveTTT {month=7, day=13, start=belfort, finish=strasbourg, distance=145.0}
                , NonConsecutiveTTT {month=7, day=14, start=strasbourg, finish=metz, distance=165.0}
                , NonConsecutiveTTT {month=7, day=15, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveTTT {month=7, day=16, start=charleville, finish=dunkerque, distance=270.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=dunkerque, finish=paris, distance=344.0}
                ]

tdf1928Stages :: [NonConsecutiveStage]
tdf1928Stages = [ NonConsecutiveTTT {month=6, day=17, start=paris, finish=caen, distance=207.0}
                , NonConsecutiveTTT {month=6, day=18, start=caen, finish=cherbourg, distance=140.0}
                , NonConsecutiveTTT {month=6, day=19, start=cherbourg, finish=dinan, distance=199.0}
                , NonConsecutiveTTT {month=6, day=20, start=dinan, finish=brest, distance=206.0}
                , NonConsecutiveTTT {month=6, day=21, start=brest, finish=vannes, distance=208.0}
                , NonConsecutiveTTT {month=6, day=22, start=vannes, finish=lesSablesD'Olonne, distance=204.0}
                , NonConsecutiveTTT {month=6, day=23, start=lesSablesD'Olonne, finish=bordeaux, distance=285.0}
                , NonConsecutiveTTT {month=6, day=24, start=bordeaux, finish=hendaye, distance=225.0}
                , NonConsecutiveRoadStage {month=6, day=26, start=hendaye, finish=luchon, distance=387.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=perpignan, finish=marseille, distance=363.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=marseille, finish=nice, distance=330.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=grenoble, finish=evian, distance=329.0}
                , NonConsecutiveTTT {month=7, day=8, start=evian, finish=pontarlier, distance=213.0}
                , NonConsecutiveTTT {month=7, day=9, start=pontarlier, finish=belfort, distance=119.0}
                , NonConsecutiveTTT {month=7, day=10, start=belfort, finish=strasbourg, distance=145.0}
                , NonConsecutiveTTT {month=7, day=11, start=strasbourg, finish=metz, distance=165.0}
                , NonConsecutiveTTT {month=7, day=12, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveTTT {month=7, day=13, start=charleville, finish=maloLesBains, distance=271.0}
                , NonConsecutiveTTT {month=7, day=14, start=maloLesBains, finish=dunkerque, distance=234.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=dieppe, finish=paris, distance=331.0}
                ]

tdf1929Stages :: [NonConsecutiveStage]
tdf1929Stages = [ NonConsecutiveRoadStage {month=6, day=30, start=paris, finish=caen, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=caen, finish=cherbourg, distance=140.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=cherbourg, finish=dinan, distance=199.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=dinan, finish=brest, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=brest, finish=vannes, distance=208.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=vannes, finish=lesSablesD'Olonne, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=lesSablesD'Olonne, finish=bordeaux, distance=285.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=bordeaux, finish=bayonne, distance=182.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=bayonne, finish=luchon, distance=363.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=luchon, finish=perpignan, distance=323.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=perpignan, finish=marseille, distance=366.0}
                , NonConsecutiveTTT {month=7, day=15, start=marseille, finish=cannes, distance=191.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=cannes, finish=nice, distance=133.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=grenoble, finish=evian, distance=329.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=evian, finish=belfort, distance=283.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=belfort, finish=strasbourg, distance=145.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=strasbourg, finish=metz, distance=165.0}
                , NonConsecutiveTTT {month=7, day=25, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveTTT {month=7, day=26, start=charleville, finish=maloLesBains, distance=270.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=maloLesBains, finish=dunkerque, distance=234.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=dieppe, finish=paris, distance=332.0}
                ]

tdf1930Stages :: [NonConsecutiveStage]
tdf1930Stages = [ NonConsecutiveRoadStage {month=7, day=2, start=paris, finish=caen, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=caen, finish=dinan, distance=203.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=dinan, finish=brest, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=brest, finish=vannes, distance=210.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=vannes, finish=lesSablesD'Olonne, distance=202.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=lesSablesD'Olonne, finish=bordeaux, distance=285.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=bordeaux, finish=hendaye, distance=222.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=hendaye, finish=pau, distance=146.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=pau, finish=luchon, distance=231.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=luchon, finish=perpignan, distance=322.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=perpignan, finish=montpellier, distance=164.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=montpellier, finish=marseille, distance=209.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=marseille, finish=cannes, distance=181.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=cannes, finish=nice, distance=132.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=nice, finish=grenoble, distance=333.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=grenoble, finish=evian, distance=331.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=evian, finish=belfort, distance=282.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=belfort, finish=metz, distance=223.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=charleville, finish=maloLesBains, distance=271.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=maloLesBains, finish=paris, distance=300.0}
                ]

tdf1931Stages :: [NonConsecutiveStage]
tdf1931Stages = [ NonConsecutiveRoadStage {month=6, day=30, start=paris, finish=caen, distance=208.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=caen, finish=dinan, distance=212.0}
                , NonConsecutiveRoadStage {month=7, day=2, start=dinan, finish=brest, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=brest, finish=vannes, distance=211.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=vannes, finish=lesSablesD'Olonne, distance=202.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=lesSablesD'Olonne, finish=bordeaux, distance=338.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=bordeaux, finish=bayonne, distance=180.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=bayonne, finish=pau, distance=106.0}
                , NonConsecutiveRoadStage {month=7, day=8, start=pau, finish=luchon, distance=231.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=luchon, finish=perpignan, distance=322.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=perpignan, finish=montpellier, distance=164.0}
                , NonConsecutiveRoadStage {month=7, day=13, start=montpellier, finish=marseille, distance=207.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=marseille, finish=cannes, distance=181.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=cannes, finish=nice, distance=132.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=nice, finish=gap, distance=233.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=gap, finish=grenoble, distance=102.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=grenoble, finish=aixLesBains, distance=230.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=aixLesBains, finish=evian, distance=204.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=evian, finish=belfort, distance=282.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=belfort, finish=colmar, distance=209.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=colmar, finish=metz, distance=192.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=charleville, finish=maloLesBains, distance=271.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=maloLesBains, finish=paris, distance=313.0}
                ]

tdf1932Stages :: [NonConsecutiveStage]
tdf1932Stages = [ NonConsecutiveRoadStage {month=7, day=6, start=paris, finish=caen, distance=208.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=caen, finish=nantes, distance=300.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=nantes, finish=bordeaux, distance=387.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=bordeaux, finish=pau, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=pau, finish=luchon, distance=229.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=luchon, finish=perpignan, distance=322.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=perpignan, finish=montpellier, distance=168.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=montpellier, finish=marseille, distance=206.0}
                , NonConsecutiveRoadStage {month=7, day=18, start=marseille, finish=cannes, distance=191.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=cannes, finish=nice, distance=132.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=nice, finish=gap, distance=233.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=gap, finish=grenoble, distance=102.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=grenoble, finish=aixLesBains, distance=230.0}
                , NonConsecutiveRoadStage {month=7, day=24, start=aixLesBains, finish=evian, distance=204.0}
                , NonConsecutiveRoadStage {month=7, day=25, start=evian, finish=belfort, distance=291.0}
                , NonConsecutiveRoadStage {month=7, day=26, start=belfort, finish=strasbourg, distance=145.0}
                , NonConsecutiveRoadStage {month=7, day=27, start=strasbourg, finish=metz, distance=165.0}
                , NonConsecutiveRoadStage {month=7, day=28, start=metz, finish=charleville, distance=159.0}
                , NonConsecutiveRoadStage {month=7, day=29, start=charleville, finish=maloLesBains, distance=271.0}
                , NonConsecutiveRoadStage {month=7, day=30, start=maloLesBains, finish=amiens, distance=212.0}
                , NonConsecutiveRoadStage {month=7, day=31, start=amiens, finish=paris, distance=159.0}
                ]

tdf1933Stages :: [NonConsecutiveStage]
tdf1933Stages = [ NonConsecutiveRoadStage {month=6, day=27, start=paris, finish=lille, distance=262.0}
                , NonConsecutiveRoadStage {month=6, day=28, start=lille, finish=charleville, distance=192.0}
                , NonConsecutiveRoadStage {month=6, day=29, start=charleville, finish=metz, distance=166.0}
                , NonConsecutiveRoadStage {month=6, day=30, start=metz, finish=belfort, distance=220.0}
                , NonConsecutiveRoadStage {month=7, day=1, start=belfort, finish=evian, distance=293.0}
                , NonConsecutiveRoadStage {month=7, day=3, start=evian, finish=aixLesBains, distance=207.0}
                , NonConsecutiveRoadStage {month=7, day=4, start=aixLesBains, finish=grenoble, distance=229.0}
                , NonConsecutiveRoadStage {month=7, day=5, start=grenoble, finish=gap, distance=102.0}
                , NonConsecutiveRoadStage {month=7, day=6, start=gap, finish=digne, distance=227.0}
                , NonConsecutiveRoadStage {month=7, day=7, start=digne, finish=nice, distance=156.0}
                , NonConsecutiveRoadStage {month=7, day=9, start=nice, finish=cannes, distance=128.0}
                , NonConsecutiveRoadStage {month=7, day=10, start=cannes, finish=marseille, distance=208.0}
                , NonConsecutiveRoadStage {month=7, day=11, start=marseille, finish=montpellier, distance=168.0}
                , NonConsecutiveRoadStage {month=7, day=12, start=montpellier, finish=perpignan, distance=166.0}
                , NonConsecutiveRoadStage {month=7, day=14, start=perpignan, finish=axLesThermes, distance=158.0}
                , NonConsecutiveRoadStage {month=7, day=15, start=axLesThermes, finish=luchon, distance=165.0}
                , NonConsecutiveRoadStage {month=7, day=16, start=luchon, finish=tarbes, distance=91.0}
                , NonConsecutiveRoadStage {month=7, day=17, start=tarbes, finish=pau, distance=185.0}
                , NonConsecutiveRoadStage {month=7, day=19, start=pau, finish=bordeaux, distance=233.0}
                , NonConsecutiveRoadStage {month=7, day=20, start=bordeaux, finish=laRochelle, distance=183.0}
                , NonConsecutiveRoadStage {month=7, day=21, start=laRochelle, finish=rennes, distance=266.0}
                , NonConsecutiveRoadStage {month=7, day=22, start=rennes, finish=caen, distance=169.0}
                , NonConsecutiveRoadStage {month=7, day=23, start=caen, finish=paris, distance=222.0}
                ]

tdf1903 :: StageRace
tdf1903 = evalState tdf1903' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1903)

tdf1903' = do
  nonConsecutiveStages tdf1903Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1904 :: StageRace
tdf1904 = evalState tdf1904' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1904)

tdf1904' :: State NonConsecutiveStageRaceState StageRace
tdf1904' = do
  nonConsecutiveStages tdf1904Stages
  race <- ParcoursDB.State.NonConsecutiveStageRace.build
  return race

tdf1905 :: StageRace
tdf1905 = evalState tdf1905' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1905)

tdf1905' :: State NonConsecutiveStageRaceState StageRace
tdf1905' = do
  nonConsecutiveStages tdf1905Stages
  race <- ParcoursDB.State.NonConsecutiveStageRace.build
  return race

tdf1906 :: StageRace
tdf1906 = evalState tdf1906' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1906)

tdf1906' :: State NonConsecutiveStageRaceState StageRace
tdf1906' = do
  nonConsecutiveStages tdf1906Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1907 :: StageRace
tdf1907 = evalState tdf1907' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1907)

tdf1907' :: State NonConsecutiveStageRaceState StageRace
tdf1907' = do
  nonConsecutiveStages tdf1907Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1908 :: StageRace
tdf1908 = evalState tdf1908' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1908)

tdf1908' :: State NonConsecutiveStageRaceState StageRace
tdf1908' = do
  nonConsecutiveStages tdf1908Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1909 :: StageRace
tdf1909 = evalState tdf1909' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1909)

tdf1909' :: State NonConsecutiveStageRaceState StageRace
tdf1909' = do
  nonConsecutiveStages tdf1909Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1910 :: StageRace
tdf1910 = evalState tdf1910' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1910)

tdf1910' :: State NonConsecutiveStageRaceState StageRace
tdf1910' = do
  nonConsecutiveStages tdf1910Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1911 :: StageRace
tdf1911 = evalState tdf1911' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1911)

tdf1911' :: State NonConsecutiveStageRaceState StageRace
tdf1911' = do
  nonConsecutiveStages tdf1911Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1912 :: StageRace
tdf1912 = evalState tdf1912' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1912)

tdf1912' :: State NonConsecutiveStageRaceState StageRace
tdf1912' = do
  nonConsecutiveStages tdf1912Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1913 :: StageRace
tdf1913 = evalState tdf1913' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1913)

tdf1913' :: State NonConsecutiveStageRaceState StageRace
tdf1913' = do
  nonConsecutiveStages tdf1913Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1914 :: StageRace
tdf1914 = evalState tdf1914' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1914)

tdf1914' :: State NonConsecutiveStageRaceState StageRace
tdf1914' = do
  nonConsecutiveStages tdf1914Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1919 :: StageRace
tdf1919 = evalState tdf1919' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1919)

tdf1919' :: State NonConsecutiveStageRaceState StageRace
tdf1919' = do
  nonConsecutiveStages tdf1919Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1920 :: StageRace
tdf1920 = evalState tdf1920' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1920)

tdf1920' :: State NonConsecutiveStageRaceState StageRace
tdf1920' = do
  nonConsecutiveStages tdf1920Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1921 :: StageRace
tdf1921 = evalState tdf1921' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1921)

tdf1921' :: State NonConsecutiveStageRaceState StageRace
tdf1921' = do
  nonConsecutiveStages tdf1921Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1922 :: StageRace
tdf1922 = evalState tdf1922' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1922)

tdf1922' :: State NonConsecutiveStageRaceState StageRace
tdf1922' = do
  nonConsecutiveStages tdf1922Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1923 :: StageRace
tdf1923 = evalState tdf1923' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1923)

tdf1923' :: State NonConsecutiveStageRaceState StageRace
tdf1923' = do
  nonConsecutiveStages tdf1923Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1924 :: StageRace
tdf1924 = evalState tdf1924' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1924)

tdf1924' :: State NonConsecutiveStageRaceState StageRace
tdf1924' = do
  nonConsecutiveStages tdf1924Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1925 :: StageRace
tdf1925 = evalState tdf1925' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1925)

tdf1925' :: State NonConsecutiveStageRaceState StageRace
tdf1925' = do
  nonConsecutiveStages tdf1925Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1926 :: StageRace
tdf1926 = evalState tdf1926' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1926)

tdf1926' :: State NonConsecutiveStageRaceState StageRace
tdf1926' = do
  nonConsecutiveStages tdf1926Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1927 :: StageRace
tdf1927 = evalState tdf1927' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1927)

tdf1927' :: State NonConsecutiveStageRaceState StageRace
tdf1927' = do
  nonConsecutiveStages tdf1927Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1928 :: StageRace
tdf1928 = evalState tdf1928' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1928)

tdf1928' :: State NonConsecutiveStageRaceState StageRace
tdf1928' = do
  nonConsecutiveStages tdf1928Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1929 :: StageRace
tdf1929 = evalState tdf1929' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1929)

tdf1929' :: State NonConsecutiveStageRaceState StageRace
tdf1929' = do
  nonConsecutiveStages tdf1929Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1930 :: StageRace
tdf1930 = evalState tdf1930' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1930)

tdf1930' :: State NonConsecutiveStageRaceState StageRace
tdf1930' = do
  nonConsecutiveStages tdf1930Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1931 :: StageRace
tdf1931 = evalState tdf1931' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1931)

tdf1931' :: State NonConsecutiveStageRaceState StageRace
tdf1931' = do
  nonConsecutiveStages tdf1931Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1932 :: StageRace
tdf1932 = evalState tdf1932' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1932)

tdf1932' :: State NonConsecutiveStageRaceState StageRace
tdf1932' = do
  nonConsecutiveStages tdf1932Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1933 :: StageRace
tdf1933 = evalState tdf1933' (ParcoursDB.State.NonConsecutiveStageRace.init (TourDeFrance []) 1933)

tdf1933' :: State NonConsecutiveStageRaceState StageRace
tdf1933' = do
  nonConsecutiveStages tdf1933Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

tdf1934 :: StageRace
tdf1934 = evalState tdf1934' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1934 7 3))

tdf1934' :: State StageRaceState StageRace
tdf1934' = do
  -- Stage 1
  plainStage paris lille 262.0

  -- Stage 2
  plainStage lille charleville 192.0

  -- Stage 3
  plainStage charleville metz 161.0

  -- Stage 4
  plainStage metz belfort 220.0

  -- Stage 5
  plainStage belfort evian 293.0

  restDay (Left evian)

  -- Stage 6
  plainStage evian aixLesBains 207.0

  -- Stage 7
  plainStage aixLesBains grenoble 229.0

  -- Stage 8
  plainStage grenoble gap 102.0

  -- Stage 9
  plainStage gap digne 227.0

  -- Stage 10
  plainStage digne nice 156.0

  restDay (Left nice)

  -- Stage 11
  plainStage nice cannes 126.0

  -- Stage 12
  plainStage cannes marseille 195.0

  -- Stage 13
  plainStage marseille montpellier 172.0

  -- Stage 14
  plainStage montpellier perpignan 177.0

  restDay (Left perpignan)

  -- Stage 15
  plainStage perpignan axLesThermes 158.0

  -- Stage 16
  plainStage axLesThermes luchon 165.0

  -- Stage 17
  plainStage luchon tarbes 91.0

  -- Stage 18
  plainStage tarbes pau 172.0

  restDay (Left pau)

  -- Stage 19
  plainStage pau bordeaux 215.0

  -- Stage 20
  plainStage bordeaux laRochelle 183.0

  -- Stages 21a & 21b
  enableSplitStages
  plainStage laRochelle laRocheSurYon 81.0
  individualTimeTrial laRocheSurYon nantes 90.0
  disableSplitStages

  -- Stage 21
  plainStage nantes caen 275.0

  -- Stage 22
  plainStage caen paris 221.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1935 :: StageRace
tdf1935 = evalState tdf1935' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1935 7 4))

tdf1935' :: State StageRaceState StageRace
tdf1935' = do
  -- Stage 1
  plainStage paris lille 262.0

  -- Stage 2
  plainStage lille charleville 192.0

  -- Stage 3
  plainStage charleville metz 161.0

  -- Stage 4
  plainStage metz belfort 220.0

  -- Stages 5a & 5b
  enableSplitStages
  plainStage belfort geneva 262.0
  individualTimeTrial geneva evian 58.0
  disableSplitStages

  restDay (Left evian)

  -- Stage 6
  plainStage evian aixLesBains 207.0

  -- Stage 7
  plainStage aixLesBains grenoble 229.0

  -- Stage 8
  plainStage grenoble gap 102.0

  -- Stage 9
  plainStage gap digne 227.0

  -- Stage 10
  plainStage digne nice 156.0

  restDay (Left nice)

  -- Stage 11
  plainStage nice cannes 126.0

  -- Stage 12
  plainStage cannes marseille 195.0

  -- Stages 13a & 13b
  enableSplitStages
  plainStage marseille nimes 112.0
  individualTimeTrial nimes montpellier 56.0
  disableSplitStages

  -- Stages 14a & 14b
  enableSplitStages
  plainStage montpellier narbonne 103.0
  individualTimeTrial narbonne perpignan 63.0
  disableSplitStages

  -- Stage 15
  plainStage perpignan luchon 325.0

  restDay (Left luchon)

  -- Stage 16
  plainStage luchon pau 194.0

  restDay (Left pau)

  -- Stage 17
  plainStage pau bordeaux 224.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage bordeaux Countries.France.rochefort 103.0
  individualTimeTrial Countries.France.rochefort laRochelle 33.0
  disableSplitStages

  -- Stages 19a & 19b
  enableSplitStages
  plainStage laRochelle laRocheSurYon 81.0
  individualTimeTrial laRocheSurYon nantes 90.0
  disableSplitStages

  -- Stages 20a & 20b
  enableSplitStages
  plainStage nantes vire 220.0
  individualTimeTrial vire caen 55.0
  disableSplitStages

  -- Stage 21
  plainStage caen paris 221.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1936 :: StageRace
tdf1936 = evalState tdf1936' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1936 7 7))

tdf1936' :: State StageRaceState StageRace
tdf1936' = do
  -- Stage 1
  plainStage paris lille 258.0

  -- Stage 2
  plainStage lille charleville 192.0

  -- Stage 3
  plainStage charleville metz 161.0

  -- Stage 4
  plainStage metz belfort 220.0

  -- Stage 5
  plainStage belfort evianLesBains 298.0

  restDay (Left evianLesBains)

  -- Stage 6
  plainStage evianLesBains aixLesBains 212.0

  -- Stage 7
  plainStage aixLesBains grenoble 230.0

  -- Stage 8
  plainStage grenoble briancon 194.0

  -- Stage 9
  plainStage briancon digne 220.0

  restDay (Left digne)

  -- Stage 10
  plainStage digne nice 156.0

  -- Stage 11
  plainStage nice cannes 126.0

  restDay (Left cannes)

  -- Stage 12
  plainStage cannes marseille 195.0

  -- Stages 13a & 13b
  enableSplitStages
  plainStage marseille nimes 112.0
  individualTimeTrial nimes montpellier 52.0
  disableSplitStages

  -- Stages 14a & 14b
  enableSplitStages
  plainStage montpellier narbonne 103.0
  individualTimeTrial narbonne perpignan 63.0
  disableSplitStages

  restDay (Left perpignan)

  -- Stage 15
  plainStage perpignan luchon 325.0

  restDay (Left luchon)

  -- Stage 16
  plainStage luchon pau 194.0

  restDay (Left pau)

  -- Stage 17
  plainStage pau bordeaux 229.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage bordeaux saintes 117.0
  individualTimeTrial saintes laRochelle 75.0
  disableSplitStages

  -- Stages 19a, 19b & 19c
  enableSplitStages
  plainStage laRochelle laRocheSurYon 81.0
  individualTimeTrial laRocheSurYon cholet 65.0
  plainStage cholet angers 67.0
  disableSplitStages

  -- Stages 20a & 20b
  enableSplitStages
  plainStage angers vire 204.0
  individualTimeTrial vire caen 55.0
  disableSplitStages

  -- Stage 21
  plainStage caen paris 234.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1937 :: StageRace
tdf1937 = evalState tdf1937' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1937 6 30))

tdf1937' :: State StageRaceState StageRace
tdf1937' = do
  -- Stage 1
  plainStage paris lille 263.0

  -- Stage 2
  plainStage lille charleville 192.0

  -- Stage 3
  plainStage charleville metz 161.0

  -- Stage 4
  plainStage metz belfort 220.0

  -- Stages 5a, 5b & 5c
  enableSplitStages
  plainStage belfort lonsLeSaunier 175.0
  teamTimeTrial lonsLeSaunier champagnole 34.0
  plainStage champagnole geneva 93.0
  disableSplitStages

  restDay (Left geneva)

  -- Stage 6
  plainStage geneva aixLesBains 180.0

  -- Stage 7
  plainStage aixLesBains grenoble 228.0

  -- Stage 8
  plainStage grenoble briancon 194.0

  -- Stage 9
  plainStage briancon digne 220.0

  restDay (Left digne)

  -- Stage 10
  plainStage digne nice 251.0

  restDay (Left nice)

  -- Stages 11a & 11b
  enableSplitStages
  plainStage nice toulon 169.0
  teamTimeTrial toulon marseille 65.0
  disableSplitStages

  -- Stages 12a & 12b
  enableSplitStages
  plainStage marseille nimes 112.0
  plainStage nimes montpellier 51.0
  disableSplitStages

  -- Stages 13a & 13b
  enableSplitStages
  plainStage montpellier narbonne 51.0
  plainStage narbonne perpignan 63.0
  disableSplitStages

  restDay (Left perpignan)

  -- Stages 14a, 14b & 14c
  enableSplitStages
  plainStage perpignan bourgMadame 99.0
  plainStage bourgMadame axLesThermes 59.0
  plainStage axLesThermes luchon 167.0
  disableSplitStages

  restDay (Left luchon)

  -- Stage 15
  plainStage luchon pau 194.0

  restDay (Left pau)

  -- Stage 16
  plainStage pau bordeaux 235.0

  -- Stages 17a, 17b & 17c
  enableSplitStages
  plainStage bordeaux royan 123.0
  plainStage royan saintes 37.0
  plainStage saintes laRochelle 37.0
  disableSplitStages

  -- Stages 18a & 18b
  enableSplitStages
  teamTimeTrial laRochelle laRocheSurYon 82.0
  plainStage laRocheSurYon rennes 172.0
  disableSplitStages

  -- Stages 19a & 19b
  enableSplitStages
  plainStage rennes vire 114.0
  individualTimeTrial vire caen 59.0
  disableSplitStages

  -- Stage 20
  plainStage caen paris 234.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1938 :: StageRace
tdf1938 = evalState tdf1938' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1938 7 5))

tdf1938' :: State StageRaceState StageRace
tdf1938' = do
  -- Stage 1
  plainStage paris caen 215.0

  -- Stage 2
  plainStage caen saintBrieuc 237.0

  -- Stage 3
  plainStage saintBrieuc nantes 238.0

  -- Stages 4a, 4b & 4c
  enableSplitStages
  plainStage nantes laRocheSurYon 62.0
  plainStage laRocheSurYon laRochelle 83.0
  plainStage laRochelle royan 83.0
  disableSplitStages

  restDay (Left royan)

  -- Stage 5
  plainStage royan bordeaux 198.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage bordeaux arcachon 53.0
  plainStage arcachon bayonne 171.0
  disableSplitStages

  -- Stage 7
  plainStage bayonne pau 115.0

  restDay (Left pau)

  -- Stage 8
  plainStage pau luchon 193.0

  restDay (Left luchon)

  -- Stage 9
  plainStage luchon perpignan 260.0

  -- Stages 10a, 10b & 10c
  enableSplitStages
  plainStage perpignan narbonne 63.0
  individualTimeTrial narbonne beziers 27.0
  plainStage beziers montpellier 73.0
  disableSplitStages

  -- Stage 11
  plainStage montpellier marseille 223.0

  -- Stage 12
  plainStage marseille cannes 199.0

  restDay (Left cannes)

  -- Stage 13
  plainStage cannes digne 284.0

  -- Stage 14
  plainStage digne briancon 219.0

  -- Stage 15
  plainStage briancon aixLesBains 311.0

  restDay (Left aixLesBains)

  -- Stage 16
  plainStage aixLesBains besancon 284.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage besancon belfort 89.0
  plainStage belfort strasbourg 143.0
  disableSplitStages

  -- Stage 18
  plainStage strasbourg metz 186.0

  -- Stage 19
  plainStage metz reims 196.0

  restDay (Left reims)

  -- Stages 20a, 20b & 20c
  enableSplitStages
  plainStage reims laon 48.0
  individualTimeTrial laon saintQuentin 42.0
  plainStage saintQuentin lille 107.0
  disableSplitStages

  -- Stage 21
  plainStage lille paris 279.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1939 :: StageRace
tdf1939 = evalState tdf1939' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1939 7 10))

tdf1939' :: State StageRaceState StageRace
tdf1939' = do
  -- Stage 1
  plainStage paris caen 215.0

  -- Stages 2a & 2b
  enableSplitStages
  individualTimeTrial caen vire 64.0
  plainStage vire rennes 119.0
  disableSplitStages

  -- Stage 3
  plainStage rennes brest 244.0

  -- Stage 4
  plainStage brest lorient 174.0

  -- Stage 5
  plainStage lorient nantes 207.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage nantes laRochelle 144.0
  plainStage laRochelle royan 107.0
  disableSplitStages

  restDay (Left royan)

  -- Stage 7
  plainStage royan bordeaux 198.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage bordeaux saliesDeBearn 210.0
  individualTimeTrial saliesDeBearn pau 69.0
  disableSplitStages

  -- Stage 9
  plainStage pau toulouse 311.0

  restDay (Left toulouse)

  -- Stages 10a, 10b & 10c
  enableSplitStages
  plainStage toulouse narbonne 149.0
  individualTimeTrial narbonne beziers 27.0
  plainStage beziers montpellier 70.0
  disableSplitStages

  -- Stage 11
  plainStage montpellier marseille 212.0

  -- Stages 12a & 12b
  enableSplitStages
  plainStage marseille saintRaphael 157.0
  plainStage saintRaphael monaco 122.0
  disableSplitStages

  -- Stage 13
  plainStage monaco monaco 101.0

  -- Stage 14
  plainStage monaco digne 175.0

  -- Stage 15
  plainStage digne briancon 219.0

  -- Stages 16a, 16b & 16c
  enableSplitStages
  plainStage briancon briancon 126.0
  individualTimeTrial bonneval bourgSaintMaurice 64.0
  plainStage bourgSaintMaurice annecy 104.0
  disableSplitStages

  restDay (Left annecy)

  -- Stages 17a & 17b
  enableSplitStages
  plainStage annecy dole 226.0
  individualTimeTrial dole dijon 59.0
  disableSplitStages

  -- Stages 18a & 18b
  enableSplitStages
  plainStage dijon troyes 151.0
  plainStage troyes paris 201.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1947 :: StageRace
tdf1947 = evalState tdf1947' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1947 6 25))

tdf1947' :: State StageRaceState StageRace
tdf1947' = do
  -- Stage 1
  plainStage paris lille 236.0

  -- Stage 2
  plainStage lille brussels 182.0

  -- Stage 3
  plainStage brussels luxembourgCity 314.0

  -- Stage 4
  plainStage luxembourgCity strasbourg 223.0

  -- Stage 5
  plainStage strasbourg besancon 248.0

  restDay (Left besancon)

  -- Stage 6
  plainStage besancon lyon 249.0

  -- Stage 7
  plainStage lyon grenoble 172.0

  -- Stage 8
  plainStage grenoble briancon 185.0

  restDay (Left briancon)

  -- Stage 9
  plainStage briancon digne 217.0

  -- Stage 10
  plainStage digne nice 255.0

  restDay (Left nice)

  -- Stage 11
  plainStage nice marseille 230.0

  -- Stage 12
  plainStage marseille montpellier 165.0

  -- Stage 13
  plainStage montpellier carcassonne 172.0

  -- Stage 14
  plainStage carcassonne luchon 253.0

  restDay (Left luchon)

  -- Stage 15
  plainStage luchon pau 195.0

  -- Stage 16
  plainStage pau bordeaux 195.0

  -- Stage 17
  plainStage bordeaux lesSablesD'Olonne 272.0

  -- Stage 18
  plainStage lesSablesD'Olonne vannes 236.0

  restDay (Left vannes)

  -- Stage 19
  individualTimeTrial vannes saintBrieuc 139.0

  -- Stage 20
  plainStage saintBrieuc caen 235.0

  -- Stage 21
  plainStage caen paris 257.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1948 :: StageRace
tdf1948 = evalState tdf1948' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1948 6 30))

tdf1948' :: State StageRaceState StageRace
tdf1948' = do
  -- Stage 1
  plainStage paris trouville 237.0

  -- Stage 2
  plainStage trouville dinard 259.0

  -- Stage 3
  plainStage dinard nantes 251.0

  -- Stage 4
  plainStage nantes laRochelle 166.0

  -- Stage 5
  plainStage laRochelle bordeaux 262.0

  -- Stage 6
  plainStage bordeaux biarritz 244.0

  restDay (Left biarritz)

  -- Stage 7
  plainStage biarritz lourdes 219.0

  -- Stage 8
  plainStage lourdes toulouse 261.0

  restDay (Left toulouse)

  -- Stage 9
  plainStage toulouse montpellier 246.0

  -- Stage 10
  plainStage montpellier marseille 248.0

  -- Stage 11
  plainStage marseille sanRemo 245.0

  -- Stage 12
  plainStage sanRemo cannes 170.0

  restDay (Left cannes)

  -- Stage 13
  plainStage cannes briancon 274.0

  -- Stage 14
  plainStage briancon aixLesBains 263.0

  restDay (Left aixLesBains)

  -- Stage 15
  plainStage aixLesBains lausanne 256.0

  -- Stage 16
  plainStage lausanne mulhouse 243.0

  restDay (Left mulhouse)

  -- Stage 17
  individualTimeTrial mulhouse strasbourg 120.0

  -- Stage 18
  plainStage strasbourg metz 195.0

  -- Stage 19
  plainStage metz liege 249.0

  -- Stage 20
  plainStage liege roubaix 228.0

  -- Stage 21
  plainStage roubaix paris 286.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1949 :: StageRace
tdf1949 = evalState tdf1949' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1949 6 30))

tdf1949' :: State StageRaceState StageRace
tdf1949' = do
  -- Stage 1
  plainStage paris reims 182.0

  -- Stage 2
  plainStage reims brussels 273.0

  -- Stage 3
  plainStage brussels boulogneSurMer 211.0

  -- Stage 4
  plainStage boulogneSurMer rouen 185.0

  -- Stage 5
  plainStage rouen saintMalo 293.0

  -- Stage 6
  plainStage saintMalo lesSablesD'Olonne 305.0

  restDay (Left lesSablesD'Olonne)

  -- Stage 7
  individualTimeTrial lesSablesD'Olonne laRochelle 92.0

  -- Stage 8
  plainStage laRochelle bordeaux 262.0

  -- Stage 9
  plainStage bordeaux sanSebastian 228.0

  -- Stage 10
  plainStage sanSebastian pau 192.0

  restDay (Left pau)

  -- Stage 11
  plainStage pau luchon 193.0

  -- Stage 12
  plainStage luchon toulouse 134.0

  -- Stage 13
  plainStage toulouse nimes 289.0

  -- Stage 14
  plainStage nimes marseille 199.0

  -- Stage 15
  plainStage marseille cannes 215.0

  restDay (Left cannes)

  -- Stage 16
  plainStage cannes briancon 275.0

  -- Stage 17
  plainStage briancon aosta 257.0

  restDay (Left aosta)

  -- Stage 18
  plainStage aosta lausanne 265.0

  -- Stage 19
  plainStage lausanne colmar 283.0

  -- Stage 20
  individualTimeTrial colmar nancy 137.0

  -- Stage 21
  plainStage nancy paris 340.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1950 :: StageRace
tdf1950 = evalState tdf1950' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1950 7 13))

tdf1950' :: State StageRaceState StageRace
tdf1950' = do
  -- Stage 1
  plainStage paris metz 307.0

  -- Stage 2
  plainStage metz liege 241.0

  -- Stage 3
  plainStage liege lille 232.5

  -- Stage 4
  plainStage lille rouen 231.0

  -- Stage 5
  plainStage rouen dinard 316.0

  restDay (Left dinard)

  -- Stage 6
  individualTimeTrial dinard saintBrieuc 78.0

  -- Stage 7
  plainStage saintBrieuc angers 248.0

  -- Stage 8
  plainStage angers niort 181.0

  -- Stage 9
  plainStage niort bordeaux 206.0

  -- Stage 10
  plainStage bordeaux pau 202.0

  restDay (Left pau)

  -- Stage 11
  plainStage pau saintGaudens 230.0

  -- Stage 12
  plainStage saintGaudens perpignan 233.0

  -- Stage 13
  plainStage perpignan nimes 215.0

  -- Stage 14
  plainStage nimes toulon 222.0

  -- Stage 15
  plainStage toulon menton 205.5

  -- Stage 16
  plainStage menton nice 96.0

  restDay (Left nice)

  -- Stage 17
  plainStage nice gap 229.0

  -- Stage 18
  plainStage gap briancon 165.0

  -- Stage 19
  plainStage briancon saintÉTienne 291.0

  restDay (Left saintÉTienne)

  -- Stage 20
  individualTimeTrial saintÉTienne lyon 98.0

  -- Stage 21
  plainStage lyon dijon 233.0

  -- Stage 22
  plainStage dijon paris 314.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1951 :: StageRace
tdf1951 = evalState tdf1951' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1951 7 4))

tdf1951' :: State StageRaceState StageRace
tdf1951' = do
  -- Stage 1
  plainStage metz reims 185.0

  -- Stage 2
  plainStage reims ghent 228.0

  -- Stage 3
  plainStage ghent leTreport 219.0

  -- Stage 4
  plainStage leTreport paris 188.0

  -- Stage 5
  plainStage paris caen 215.0

  -- Stage 6
  plainStage caen rennes 182.0

  -- Stage 7
  individualTimeTrial laGuercheDeBretagne angers 85.0

  -- Stage 8
  plainStage angers limoges 241.0

  restDay (Left limoges)

  -- Stage 9
  plainStage limoges clermontFerrand 236.0

  -- Stage 10
  plainStage clermontFerrand brive 216.0

  -- Stage 11
  plainStage brive agen 177.0

  -- Stage 12
  plainStage agen dax 185.0

  -- Stage 13
  plainStage dax tarbes 201.0

  -- Stage 14
  plainStage tarbes luchon 142.0

  -- Stage 15
  plainStage luchon carcassonne 213.0

  -- Stage 16
  plainStage carcassonne montpellier 192.0

  restDay (Left montpellier)

  -- Stage 17
  plainStage montpellier avignon 224.0

  -- Stage 18
  plainStage avignon marseille 173.0

  -- Stage 19
  plainStage marseille gap 208.0

  -- Stage 20
  plainStage gap briancon 165.0

  -- Stage 21
  plainStage briancon aixLesBains 201.0

  -- Stage 22
  individualTimeTrial aixLesBains geneva 97.0

  -- Stage 23
  plainStage geneva dijon 197.0

  -- Stage 24
  plainStage dijon paris 322.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1952 :: StageRace
tdf1952 = evalState tdf1952' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1952 6 25))

tdf1952' :: State StageRaceState StageRace
tdf1952' = do
  -- Stage 1
  plainStage brest rennes 246.0

  -- Stage 2
  plainStage rennes leMans 181.0

  -- Stage 3
  plainStage leMans rouen 189.0

  -- Stage 4
  plainStage rouen roubaix 232.0

  -- Stage 5
  plainStage roubaix namur 197.0

  -- Stage 6
  plainStage namur metz 228.0

  -- Stage 7
  individualTimeTrial metz nancy 60.0

  -- Stage 8
  plainStage nancy mulhouse 252.0

  -- Stage 9
  plainStage mulhouse lausanne 238.0

  -- Stage 10
  summitFinishStage lausanne 266.0
  addCol 266 alpeD'Huez

  restDay (Right alpeD'Huez)

  -- Stage 11
  plainStage leBourgD'Oisans sestriere 182.0

  -- Stage 12
  plainStage sestriere monaco 251.0

  -- Stage 13
  plainStage monaco aixEnProvence 214.0

  -- Stage 14
  plainStage aixEnProvence avignon 178.0

  -- Stage 15
  plainStage avignon perpignan 275.0

  -- Stage 16
  plainStage perpignan toulouse 200.0

  restDay (Left toulouse)

  -- Stage 17
  plainStage toulouse bagneresDeBigorre 204.0

  -- Stage 18
  plainStage bagneresDeBigorre pau 149.0

  -- Stage 19
  plainStage pau bordeaux 195.0

  -- Stage 20
  plainStage bordeaux limoges 228.0

  -- Stage 21
  plainStage limoges puyDeDome 245.0

  -- Stage 22
  individualTimeTrial clermontFerrand vichy 63.0

  -- Stage 23
  plainStage vichy paris 354.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1953 :: StageRace
tdf1953 = evalState tdf1953' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1953 7 3))

tdf1953' :: State StageRaceState StageRace
tdf1953' = do
  -- Stage 1
  plainStage strasbourg metz 195.0

  -- Stage 2
  plainStage metz liege 227.0

  -- Stage 3
  plainStage liege lille 221.0

  -- Stage 4
  plainStage lille dieppe 188.0

  -- Stage 5
  plainStage dieppe caen 200.0

  -- Stage 6
  plainStage caen leMans 206.0

  -- Stage 7
  plainStage leMans nantes 181.0

  -- Stage 8
  plainStage nantes bordeaux 345.0

  restDay (Left bordeaux)

  -- Stage 9
  plainStage bordeaux pau 197.0

  -- Stage 10
  plainStage pau cauterets 103.0

  -- Stage 11
  plainStage cauterets luchon 115.0

  -- Stage 12
  plainStage luchon albi 228.0

  -- Stage 13
  plainStage albi beziers 189.0

  -- Stage 14
  plainStage beziers nimes 214.0

  -- Stage 15
  plainStage nimes marseille 173.0

  -- Stage 16
  plainStage marseille monaco 236.0

  restDay (Left monaco)

  -- Stage 17
  plainStage monaco gap 261.0

  -- Stage 18
  plainStage gap briancon 165.0

  -- Stage 19
  plainStage briancon lyon 227.0

  -- Stage 20
  individualTimeTrial lyon saintÉTienne 70.0

  -- Stage 21
  plainStage saintÉTienne montlucon 210.0

  -- Stage 22
  plainStage montlucon paris 328.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1954 :: StageRace
tdf1954 = evalState tdf1954' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1954 7 8))

tdf1954' :: State StageRaceState StageRace
tdf1954' = do
  -- Stage 1
  plainStage amsterdam brasschaat 216.0

  -- Stage 2
  plainStage beveren lille 255.0

  -- Stage 3
  plainStage lille rouen 219.0

  -- Stages 4a & 4b
  enableSplitStages
  teamTimeTrial rouen circuitDesEssarts 10.4
  plainStage rouen caen 131.0
  disableSplitStages

  -- Stage 5
  plainStage caen saintBrieuc 224.0

  -- Stage 6
  plainStage saintBrieuc brest 179.0

  -- Stage 7
  plainStage brest vannes 211.0

  -- Stage 8
  plainStage vannes angers 190.0

  -- Stage 9
  plainStage angers bordeaux 343.0

  restDay (Left bordeaux)

  -- Stage 10
  plainStage bordeaux bayonne 202.0

  -- Stage 11
  plainStage bayonne pau 241.0

  -- Stage 12
  plainStage pau luchon 161.0

  -- Stage 13
  plainStage luchon mulhouse 203.0

  -- Stage 14
  plainStage mulhouse millau 225.0

  -- Stage 15
  plainStage millau lePuy 197.0

  -- Stage 16
  plainStage lePuy lyon 194.0

  restDay (Left lyon)

  -- Stage 17
  plainStage lyon grenoble 182.0

  -- Stage 18
  plainStage grenoble briancon 216.0

  -- Stage 19
  plainStage briancon aixLesBains 221.0

  -- Stage 20
  plainStage aixLesBains besancon 243.0

  -- Stages 21a & 21b
  enableSplitStages
  plainStage besancon epinal 134.0
  individualTimeTrial epinal nancy 72.0
  disableSplitStages

  -- Stage 22
  plainStage nancy troyes 216.0

  -- Stage 23
  plainStage troyes paris 180.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1955 :: StageRace
tdf1955 = evalState tdf1955' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1955 7 7))

tdf1955' :: State StageRaceState StageRace
tdf1955' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage leHavre dieppe 102.0
  teamTimeTrial dieppe dieppe 12.5
  disableSplitStages

  -- Stage 2
  plainStage dieppe roubaix 204.0

  -- Stage 3
  plainStage roubaix namur 210.0

  -- Stage 4
  plainStage namur metz 225.0

  -- Stage 5
  plainStage metz colmar 229.0

  -- Stage 6
  plainStage colmar zurich 195.0

  -- Stage 7
  plainStage zurich thononLesBains 267.0

  -- Stage 8
  plainStage thononLesBains briancon 253.0

  -- Stage 9
  plainStage briancon monaco 275.0

  restDay (Left monaco)

  -- Stage 10
  plainStage monaco marseille 240.0

  -- Stage 11
  plainStage marseille avignon 198.0

  -- Stage 12
  plainStage avignon millau 240.0

  -- Stage 13
  plainStage millau albi 205.0

  -- Stage 14
  plainStage albi narbonne 156.0

  -- Stage 15
  plainStage narbonne axLesThermes 151.0

  restDay (Left axLesThermes)

  -- Stage 16
  plainStage axLesThermes toulouse 123.0

  -- Stage 17
  plainStage toulouse saintGaudens 250.0

  -- Stage 18
  plainStage saintGaudens pau 205.0

  -- Stage 19
  plainStage pau bordeaux 195.0

  -- Stage 20
  plainStage bordeaux poitiers 243.0

  -- Stage 21
  individualTimeTrial chatellerault tours 68.6

  -- Stage 22
  plainStage tours paris 229.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1956 :: StageRace
tdf1956 = evalState tdf1956' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1956 7 5))

tdf1956' :: State StageRaceState StageRace
tdf1956' = do
  -- Stage 1
  plainStage reims liege 223.0

  -- Stage 2
  plainStage liege lille 217.0

  -- Stage 3
  plainStage lille rouen 225.0

  -- Stages 4a & 4b
  enableSplitStages
  individualTimeTrial circuitDeRouenLesEssarts circuitDeRouenLesEssarts 15.1
  plainStage rouen caen 125.0
  disableSplitStages

  -- Stage 5
  plainStage caen saintMalo 189.0

  -- Stage 6
  plainStage saintMalo lorient 192.0

  -- Stage 7
  plainStage lorient angers 244.0

  -- Stage 8
  plainStage angers laRochelle 180.0

  -- Stage 9
  plainStage laRochelle bordeaux 219.0

  restDay (Left bordeaux)

  -- Stage 10
  plainStage bordeaux bayonne 201.0

  -- Stage 11
  plainStage bayonne pau 255.0

  -- Stage 12
  plainStage pau luchon 130.0

  -- Stage 13
  plainStage luchon toulouse 176.0

  -- Stage 14
  plainStage toulouse montpellier 231.0

  -- Stage 15
  plainStage montpellier aixEnProvence 204.0

  restDay (Left aixEnProvence)

  -- Stage 16
  plainStage aixEnProvence gap 203.0

  -- Stage 17
  plainStage gap turin 234.0

  -- Stage 18
  plainStage turin grenoble 250.0

  -- Stage 19
  plainStage grenoble saintÉTienne 173.0

  -- Stage 20
  individualTimeTrial saintÉTienne lyon 73.0

  -- Stage 21
  plainStage lyon montlucon 237.0

  -- Stage 22
  plainStage montlucon paris 331.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1957 :: StageRace
tdf1957 = evalState tdf1957' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1957 6 27))

tdf1957' :: State StageRaceState StageRace
tdf1957' = do
  -- Stage 1
  plainStage nantes granville 204.0

  -- Stage 2
  plainStage granville caen 226.0

  -- Stages 3a & 3b
  enableSplitStages
  teamTimeTrial circuitDeLaPrairie circuitDeLaPrairie 15.0
  plainStage caen rouen 134.0
  disableSplitStages

  -- Stage 4
  plainStage rouen roubaix 232.0

  -- Stage 5
  plainStage roubaix charleroi 170.0

  -- Stage 6
  plainStage charleroi metz 248.0

  -- Stage 7
  plainStage metz colmar 223.0

  -- Stage 8
  plainStage colmar besancon 192.0

  -- Stage 9
  plainStage besancon thononLesBains 188.0

  restDay (Left thononLesBains)

  -- Stage 10
  plainStage thononLesBains briancon 247.0

  -- Stage 11
  plainStage briancon cannes 286.0

  -- Stage 12
  plainStage cannes marseille 239.0

  -- Stage 13
  plainStage marseille ales 160.0

  -- Stage 14
  plainStage ales perpignan 246.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage perpignan barcelona 197.0
  individualTimeTrial montjuicCircuit montjuicCircuit 9.8
  disableSplitStages

  restDay (Left barcelona)

  -- Stage 16
  plainStage barcelona axLesThermes 220.0

  -- Stage 17
  plainStage axLesThermes saintGaudens 236.0

  -- Stage 18
  plainStage saintGaudens pau 207.0

  -- Stage 19
  plainStage pau bordeaux 194.0

  -- Stage 20
  individualTimeTrial bordeaux libourne 66.0

  -- Stage 21
  plainStage libourne tours 317.0

  -- Stage 22
  plainStage tours paris 227.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1958 :: StageRace
tdf1958 = evalState tdf1958' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1958 6 26))

tdf1958' :: State StageRaceState StageRace
tdf1958' = do
  -- Stage 1
  plainStage brussels ghent 184.0

  -- Stage 2
  plainStage ghent dunkerque 198.0

  -- Stage 3
  plainStage dunkerque mersLesBains 177.0

  -- Stage 4
  plainStage leTreport versailles 205.0

  -- Stage 5
  plainStage versailles caen 232.0

  -- Stage 6
  plainStage caen saintBrieuc 223.0

  -- Stage 7
  plainStage saintBrieuc brest 170.0

  -- Stage 8
  individualTimeTrial chateaulin chateaulin 46.0

  -- Stage 9
  plainStage quimper saintNazaire 206.0

  -- Stage 10
  plainStage saintNazaire royan 255.0

  -- Stage 11
  plainStage royan bordeaux 137.0

  -- Stage 12
  plainStage bordeaux dax 161.0

  -- Stage 13
  plainStage dax pau 230.0

  -- Stage 14
  plainStage pau luchon 129.0

  -- Stage 15
  plainStage luchon toulouse 176.0

  -- Stage 16
  plainStage toulouse beziers 187.0

  -- Stage 17
  plainStage beziers nimes 189.0

  -- Stage 18
  mountainTimeTrial bedoin 21.0
  addCol 21 montVentoux

  -- Stage 19
  plainStage carpentras gap 178.0

  -- Stage 20
  plainStage gap briancon 165.0

  -- Stage 21
  plainStage briancon aixLesBains 219.0

  -- Stage 22
  plainStage aixLesBains besancon 237.0

  -- Stage 23
  individualTimeTrial besancon dijon 74.0

  -- Stage 24
  plainStage dijon paris 320.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1959 :: StageRace
tdf1959 = evalState tdf1959' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1959 6 25))

tdf1959' :: State StageRaceState StageRace
tdf1959' = do
  -- Stage 1
  plainStage mulhouse metz 238.0

  -- Stage 2
  plainStage metz namur 234.0

  -- Stage 3
  plainStage namur roubaix 217.0

  -- Stage 4
  plainStage roubaix rouen 230.0

  -- Stage 5
  plainStage rouen rennes 286.0

  -- Stage 6
  individualTimeTrial blain nantes 45.0

  -- Stage 7
  plainStage nantes laRochelle 190.0

  -- Stage 8
  plainStage laRochelle bordeaux 201.0

  -- Stage 9
  plainStage bordeaux bayonne 207.0

  restDay (Left bayonne)

  -- Stage 10
  plainStage bayonne bagneresDeBigorre 235.0

  -- Stage 11
  plainStage bagneresDeBigorre saintGaudens 119.0

  -- Stage 12
  plainStage saintGaudens albi 184.0

  -- Stage 13
  plainStage albi aurillac 219.0

  -- Stage 14
  plainStage aurillac clermontFerrand 231.0

  -- Stage 15
  individualTimeTrial puyDeDome puyDeDome 12.0

  -- Stage 16
  plainStage clermontFerrand saintÉTienne 210.0

  restDay (Left saintÉTienne)

  -- Stage 17
  plainStage saintÉTienne grenoble 197.0

  -- Stage 18
  plainStage grenoble saintVincent 243.0

  -- Stage 19
  plainStage saintVincent annecy 251.0

  -- Stage 20
  plainStage annecy chalonSurSaone 202.0

  -- Stage 21
  individualTimeTrial seurre dijon 69.0

  -- Stage 22
  plainStage dijon paris 331.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1960 :: StageRace
tdf1960 = evalState tdf1960' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1960 6 26))

tdf1960' :: State StageRaceState StageRace
tdf1960' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage lille brussels 108.0
  individualTimeTrial brussels brussels 27.8
  disableSplitStages

  -- Stage 2
  plainStage brussels dunkerque 206.0

  -- Stage 3
  plainStage dunkerque dieppe 209.0

  -- Stage 4
  plainStage dieppe caen 211.0

  -- Stage 5
  plainStage caen saintMalo 189.0

  -- Stage 6
  plainStage saintMalo lorient 191.0

  -- Stage 7
  plainStage lorient angers 244.0

  -- Stage 8
  plainStage angers limoges 240.0

  -- Stage 9
  plainStage limoges bordeaux 225.0

  -- Stage 10
  plainStage montDeMarsan pau 228.0

  -- Stage 11
  plainStage pau luchon 161.0

  -- Stage 12
  plainStage luchon toulouse 176.0

  -- Stage 13
  plainStage toulouse millau 224.0

  restDay (Left millau)

  -- Stage 14
  plainStage millau avignon 217.0

  -- Stage 15
  plainStage avignon gap 187.0

  -- Stage 16
  plainStage gap briancon 172.0

  -- Stage 17
  plainStage briancon aixLesBains 229.0

  -- Stage 18
  plainStage aixLesBains thononLesBains 215.0

  -- Stage 19
  individualTimeTrial pontarlier besancon 83.0

  -- Stage 20
  plainStage besancon troyes 229.0

  -- Stage 21
  plainStage troyes paris 200.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1961 :: StageRace
tdf1961 = evalState tdf1961' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1961 6 25))

tdf1961' :: State StageRaceState StageRace
tdf1961' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage rouen versailles 136.5
  individualTimeTrial versailles versailles 28.5
  disableSplitStages

  -- Stage 2
  plainStage pontoise roubaix 230.5

  -- Stage 3
  plainStage roubaix charleroi 197.5

  -- Stage 4
  plainStage charleroi metz 237.5

  -- Stage 5
  plainStage metz strasbourg 221.0

  -- Stage 6
  plainStage strasbourg belfort 180.5

  -- Stage 7
  plainStage belfort chalonSurSaone 214.5

  -- Stage 8
  plainStage chalonSurSaone saintÉTienne 240.5

  -- Stage 9
  plainStage saintÉTienne grenoble 230.0

  -- Stage 10
  plainStage grenoble turin 250.5

  -- Stage 11
  plainStage turin antibes 225.0

  -- Stage 12
  plainStage antibes aixEnProvence 199.0

  -- Stage 13
  plainStage aixEnProvence montpellier 177.5

  restDay (Left montpellier)

  -- Stage 14
  plainStage montpellier perpignan 174.0

  -- Stage 15
  plainStage perpignan toulouse 206.0

  -- Stage 16
  plainStage toulouse superbagneres 208.0

  -- Stage 17
  plainStage luchon pau 197.0

  -- Stage 18
  plainStage pau bordeaux 207.0

  -- Stage 19
  individualTimeTrial bergerac perigueux 74.5

  -- Stage 20
  plainStage perigueux tours 309.5

  -- Stage 21
  plainStage tours paris 252.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1962 :: StageRace
tdf1962 = evalState tdf1962' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1962 6 24))

tdf1962' :: State StageRaceState StageRace
tdf1962' = do
  -- Stage 1
  plainStage nancy spa 253.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage spa herentals 147.0
  teamTimeTrial herentals herentals 23.0
  disableSplitStages

  -- Stage 3
  plainStage brussels amiens 210.0

  -- Stage 4
  plainStage amiens leHavre 196.5

  -- Stage 5
  plainStage pontL'Eveque saintMalo 215.0

  -- Stage 6
  plainStage dinard brest 235.5

  -- Stage 7
  plainStage quimper saintNazaire 201.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage saintNazaire lucon 155.0
  individualTimeTrial lucon laRochelle 43.0
  disableSplitStages

  -- Stage 9
  plainStage laRochelle bordeaux 214.0

  -- Stage 10
  plainStage bordeaux bayonne 184.5

  -- Stage 11
  plainStage bayonne pau 155.5

  -- Stage 12
  plainStage pau saintGaudens 207.5

  -- Stage 13
  individualTimeTrial luchon superbagneres 18.5

  -- Stage 14
  plainStage luchon carcassonne 215.0

  -- Stage 15
  plainStage carcassonne montpellier 196.5

  -- Stage 16
  plainStage montpellier aixEnProvence 185.0

  -- Stage 17
  plainStage aixEnProvence antibes 201.0

  -- Stage 18
  plainStage antibes briancon 241.5

  -- Stage 19
  plainStage briancon aixLesBains 204.5

  -- Stage 20
  individualTimeTrial bourgoin lyon 68.0

  -- Stage 21
  plainStage lyon nevers 232.0

  -- Stage 22
  plainStage nevers paris 271.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1963 :: StageRace
tdf1963 = evalState tdf1963' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1963 6 23))

tdf1963' :: State StageRaceState StageRace
tdf1963' = do
  -- Stage 1
  plainStage paris epernay 152.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage reims jambes 186.0
  teamTimeTrial jambes jambes 22.0
  disableSplitStages

  -- Stage 3
  plainStage jambes roubaix 223.0

  -- Stage 4
  plainStage roubaix rouen 236.0

  -- Stage 5
  plainStage rouen rennes 285.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage rennes angers 118.0
  individualTimeTrial angers angers 25.0
  disableSplitStages

  -- Stage 7
  plainStage angers limoges 236.0

  -- Stage 8
  plainStage limoges bordeaux 232.0

  -- Stage 9
  plainStage bordeaux pau 202.0

  -- Stage 10
  plainStage pau bagneresDeBigorre 148.0

  -- Stage 11
  plainStage bagneresDeBigorre luchon 131.0

  -- Stage 12
  plainStage luchon toulouse 173.0

  -- Stage 13
  plainStage toulouse aurillac 234.0

  restDay (Left aurillac)

  -- Stage 14
  plainStage aurillac saintÉTienne 237.0

  -- Stage 15
  plainStage saintÉTienne grenoble 174.0

  -- Stage 16
  plainStage grenoble valD'Isere 202.0

  -- Stage 17
  plainStage valD'Isere chamonix 228.0

  -- Stage 18
  plainStage chamonix lonsLeSaunier 225.0

  -- Stage 19
  individualTimeTrial arbois besancon 54.0

  -- Stage 20
  plainStage besancon troyes 234.0

  -- Stage 21
  plainStage troyes paris 185.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1964 :: StageRace
tdf1964 = evalState tdf1964' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1964 6 22))

tdf1964' :: State StageRaceState StageRace
tdf1964' = do
  -- Stage 1
  plainStage rennes lisieux 215.0

  -- Stage 2
  plainStage lisieux amiens 208.0

  -- Stages 3a & 3b
  enableSplitStages
  plainStage amiens forest 197.0
  teamTimeTrial forest forest 21.0
  disableSplitStages

  -- Stage 4
  plainStage forest metz 292.0

  -- Stage 5
  plainStage luneville Countries.WestGermany.freiburg 161.0

  -- Stage 6
  plainStage Countries.WestGermany.freiburg besancon 200.0

  -- Stage 7
  plainStage besancon thononLesBains 195.0

  -- Stage 8
  plainStage thononLesBains briancon 249.0

  -- Stage 9
  plainStage briancon monaco 239.0

  -- Stages 10a & 10b
  enableSplitStages
  plainStage monaco hyeres 187.0
  individualTimeTrial hyeres toulon 21.0
  disableSplitStages

  -- Stage 11
  plainStage toulon montpellier 250.0

  -- Stage 12
  plainStage montpellier perpignan 174.0

  -- Stage 13
  plainStage perpignan andorra 170.0

  restDay (Left andorra)

  -- Stage 14
  plainStage andorra toulouse 186.0

  -- Stage 15
  plainStage toulouse luchon 203.0

  -- Stage 16
  plainStage luchon pau 197.0

  -- Stage 17
  individualTimeTrial peyrehorade bayonne 43.0

  -- Stage 18
  plainStage bayonne bordeaux 187.0

  -- Stage 19
  plainStage bordeaux brive 215.0

  -- Stage 20
  plainStage brive puyDeDome 217.0

  -- Stage 21
  plainStage clermontFerrand orleans 311.0

  -- Stages 22a & 22b
  enableSplitStages
  plainStage orleans versailles 119.0
  individualTimeTrial versailles paris 27.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1965 :: StageRace
tdf1965 = evalState tdf1965' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1965 6 22))

tdf1965' :: State StageRaceState StageRace
tdf1965' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage Countries.WestGermany.cologne liege 149.0
  teamTimeTrial liege liege 22.5
  disableSplitStages

  -- Stage 2
  plainStage liege roubaix 200.5

  -- Stage 3
  plainStage roubaix rouen 240.0

  -- Stage 4
  plainStage caen saintBrieuc 227.0

  -- Stages 5a & 5b
  enableSplitStages
  plainStage saintBrieuc chateaulin 147.0
  individualTimeTrial chateaulin chateaulin 26.7
  disableSplitStages

  -- Stage 6
  plainStage quimper laBaule 210.5

  -- Stage 7
  plainStage laBaule laRochelle 219.0

  -- Stage 8
  plainStage laRochelle bordeaux 197.5

  -- Stage 9
  plainStage dax bagneresDeBigorre 226.5

  -- Stage 10
  plainStage bagneresDeBigorre axLesThermes 222.5

  -- Stage 11
  plainStage axLesThermes barcelona 240.5

  restDay (Left barcelona)

  -- Stage 12
  plainStage barcelona perpignan 219.0

  -- Stage 13
  plainStage perpignan montpellier 164.0

  -- Stage 14
  summitFinishStage montpellier 173.0
  addCol 173 montVentoux

  -- Stage 15
  plainStage carpentras gap 167.5

  -- Stage 16
  plainStage gap briancon 177.0

  -- Stage 17
  plainStage briancon aixLesBains 193.5

  -- Stage 18
  individualTimeTrial aixLesBains leRevard 26.9

  -- Stage 19
  plainStage aixLesBains lyon 165.0

  -- Stage 20
  plainStage lyon auxerre 198.5

  -- Stage 21
  plainStage auxerre versailles 225.5

  -- Stage 22
  individualTimeTrial versailles paris 37.8

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1966 :: StageRace
tdf1966 = evalState tdf1966' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1966 6 21))

tdf1966' :: State StageRaceState StageRace
tdf1966' = do
  -- Stage 1
  plainStage nancy charleville 209.0

  -- Stage 2
  plainStage charleville tournai 198.0

  -- Stages 3a & 3b
  enableSplitStages
  teamTimeTrial tournai tournai 21.0
  plainStage tournai dunkerque 131.0
  disableSplitStages

  -- Stage 4
  plainStage dunkerque dieppe 205.0

  -- Stage 5
  plainStage dieppe caen 178.0

  -- Stage 6
  plainStage caen angers 217.0

  -- Stage 7
  plainStage angers royan 252.0

  -- Stage 8
  plainStage royan bordeaux 138.0

  -- Stage 9
  plainStage bordeaux bayonne 201.0

  -- Stage 10
  plainStage bayonne pau 234.0

  -- Stage 11
  plainStage pau luchon 188.0

  restDay (Left luchon)

  -- Stage 12
  plainStage luchon revel 219.0

  -- Stage 13
  plainStage revel sete 191.0

  -- Stages 14a & 14b
  enableSplitStages
  plainStage montpellier valsLesBains 144.0
  individualTimeTrial valsLesBains valsLesBains 20.0
  disableSplitStages

  -- Stage 15
  plainStage privas leBourgD'Oisans 203.0

  -- Stage 16
  plainStage leBourgD'Oisans briancon 148.0

  -- Stage 17
  plainStage briancon turin 160.0

  restDay (Left turin)

  -- Stage 18
  plainStage ivrea chamonix 188.0

  -- Stage 19
  plainStage chamonix saintÉTienne 265.0

  -- Stage 20
  plainStage saintÉTienne montlucon 223.0

  -- Stage 21
  plainStage montlucon orleans 232.0

  -- Stages 22a & 22b
  enableSplitStages
  plainStage orleans rambouillet 111.0
  individualTimeTrial rambouillet paris 51.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1967 :: StageRace
tdf1967 = evalState tdf1967' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1967 6 29))

tdf1967' :: State StageRaceState StageRace
tdf1967' = do
  -- Stage 1
  prologue angers angers 5.8

  -- Stage 2
  plainStage angers saintMalo 185.5

  -- Stage 3
  plainStage saintMalo caen 180.0

  -- Stage 4
  plainStage caen amiens 248.0

  -- Stage 5
  plainStage amiens roubaix 191.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage roubaix jambes 172.0
  teamTimeTrial jambes jambes 17.0
  disableSplitStages

  -- Stage 7
  plainStage jambes metz 238.0

  -- Stage 8
  plainStage metz strasbourg 205.5

  -- Stage 9
  plainStage metz belfort 215.0

  restDay (Left belfort)

  -- Stage 10
  plainStage belfort divonneLesBains 238.5

  -- Stage 11
  plainStage divonneLesBains briancon 243.0

  -- Stage 12
  plainStage briancon digne 197.0

  -- Stage 13
  plainStage digne marseille 207.5

  -- Stage 14
  plainStage marseille carpentras 211.5

  -- Stage 15
  plainStage carpentras sete 201.5

  restDay (Left sete)

  -- Stage 16
  plainStage sete toulouse 230.5

  -- Stage 17
  plainStage toulouse luchon 188.0

  -- Stage 18
  plainStage luchon pau 250.0

  -- Stage 19
  plainStage pau bordeaux 206.5

  -- Stage 20
  plainStage bordeaux limoges 217.0

  -- Stage 21
  plainStage limoges puyDeDome 222.0

  -- Stage 22
  plainStage clermontFerrand fontainebleau 359.0

  -- Stages 23a & 23b
  enableSplitStages
  plainStage fontainebleau versailles 104.0
  individualTimeTrial versailles paris 46.6
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1968 :: StageRace
tdf1968 = evalState tdf1968' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1968 6 27))

tdf1968' :: State StageRaceState StageRace
tdf1968' = do
  -- Stage 1
  prologue vittel vittel 6.1

  -- Stage 2
  plainStage vittel eschSurAlzette 189.0

  -- Stage 3
  plainStage arlon forest 210.5

  -- Stages 4a & 4b
  enableSplitStages
  teamTimeTrial forest forest 22.0
  plainStage forest roubaix 112.0
  disableSplitStages

  -- Stage 5
  plainStage roubaix rouen 238.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage rouen bagnolesDeL'Orne 165.0
  plainStage bagnolesDeL'Orne dinard 154.5
  disableSplitStages

  -- Stage 7
  plainStage dinard lorient 188.0

  -- Stage 8
  plainStage lorient nantes 190.0

  -- Stage 9
  plainStage nantes royan 233.0

  restDay (Left royan)

  -- Stage 10
  plainStage royan bordeaux 137.5

  -- Stage 11
  plainStage bordeaux bayonne 202.5

  -- Stage 12
  plainStage bayonne pau 183.5

  -- Stage 13
  plainStage pau saintGaudens 226.5

  -- Stage 14
  plainStage saintGaudens laSeuD'Urgell 208.5

  -- Stage 15
  plainStage laSeuD'Urgell perpignan 231.5

  restDay (Left fontRomeuOdeilloVia)

  -- Stage 16
  plainStage fontRomeuOdeilloVia albi 250.5

  -- Stage 17
  plainStage albi aurillac 199.0

  -- Stage 18
  plainStage aurillac saintÉTienne 236.5

  -- Stage 19
  plainStage saintÉTienne grenoble 235.0

  -- Stage 20
  plainStage grenoble sallanches 200.0

  -- Stage 21
  plainStage sallanches besancon 242.5

  -- Stage 22
  plainStage besancon auxerre 242.0

  -- Stages 23a & 23b
  enableSplitStages
  plainStage auxerre melun 136.0
  individualTimeTrial melun paris 55.2
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1969 :: StageRace
tdf1969 = evalState tdf1969' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1969 6 28))

tdf1969' :: State StageRaceState StageRace
tdf1969' = do
  -- Prologue
  prologue' roubaix 10.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage roubaix sintPietersWoluwe 147.0
  teamTimeTrial sintPietersWoluwe sintPietersWoluwe 16.0
  disableSplitStages

  -- Stage 3
  plainStage sintPietersWoluwe maastricht 182.0

  -- Stage 4
  plainStage maastricht charlevilleMezieres 213.0

  -- Stage 5
  plainStage charlevilleMezieres nancy 214.0

  -- Stage 6
  plainStage nancy mulhouse 194.0

  -- Stage 7
  plainStage mulhouse ballonD'Alsace 133.0

  -- Stage 8
  plainStage belfort divonneLesBains 241.0

  -- Stages 9a & 9b
  enableSplitStages
  individualTimeTrial divonneLesBains divonneLesBains 9.0
  plainStage divonneLesBains thononLesBains 137.0
  disableSplitStages

  -- Stage 10
  plainStage thononLesBains chamonix 111.0

  -- Stage 11
  plainStage chamonix briancon 221.0

  -- Stage 12
  plainStage briancon digne 198.0

  -- Stage 13
  plainStage digne aubagne 161.0

  -- Stage 14
  plainStage aubagne laGrandeMotte 196.0

  -- Stage 15
  plainStage laGrandeMotte revel 234.0

  restDay (Left revel)

  -- Stage 16
  plainStage castelnaudary luchon 199.0

  -- Stage 17
  plainStage luchon mourenx 214.0

  -- Stage 18
  plainStage mourenx bordeaux 201.0

  -- Stage 19
  plainStage bordeaux brive 193.0

  -- Stage 20
  plainStage brive puyDeDome 198.0

  -- Stage 21
  plainStage clermontFerrand montargis 329.0

  -- Stages 22a & 22b
  enableSplitStages
  plainStage montargis creteil 111.0
  individualTimeTrial creteil paris 37.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1970 :: StageRace
tdf1970 = evalState tdf1970' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1970 6 26))

tdf1970' :: State StageRaceState StageRace
tdf1970' = do
  -- Prologue
  prologue' limoges 7.4

  -- Stage 2
  plainStage limoges laRochelle 224.0

  -- Stage 3
  plainStage laRochelle angers 200.0

  -- Stages 4a & 4b
  enableSplitStages
  outAndBackTeamTimeTrial angers 10.7
  plainStage angers rennes 140.0
  disableSplitStages

  -- Stage 5
  plainStage rennes lisieux 229.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage lisieux rouen 94.5
  plainStage rouen amiens 223.0
  disableSplitStages

  -- Stage 7
  plainStage amiens valenciennes 135.5

  -- Stages 8a & 8b
  enableSplitStages
  plainStage valenciennes forest 120.0
  outAndBackIndividualTimeTrial forest 7.2
  disableSplitStages

  -- Stage 9
  plainStage ciney felsberg 232.5

  -- Stage 10
  plainStage saarlouis mulhouse 269.5

  -- Stage 11
  plainStage belfort divonneLesBains 241.0

  -- Stages 12a & 12b
  enableSplitStages
  outAndBackIndividualTimeTrial divonneLesBains 8.8
  plainStage divonneLesBains thononLesBains 139.5
  disableSplitStages

  -- Stage 13
  plainStage divonneLesBains grenoble 194.0

  -- Stage 14
  plainStage grenoble gap 194.5

  -- Stage 15
  summitFinishStage gap 170.0
  addCol 170 montVentoux

  -- Stage 16
  plainStage carpentras montpellier 140.5

  -- Stage 17
  plainStage montpellier toulouse 160.0

  -- Stage 18
  plainStage toulouse saintGaudens 190.0

  -- Stage 19
  plainStage saintGaudens laMongie 135.5

  -- Stage 20
  plainStage bagneresDeBigorre mourenx 185.5

  -- Stages 21a & 21b
  enableSplitStages
  plainStage mourenx bordeaux 223.5
  outAndBackIndividualTimeTrial bordeaux 8.2
  disableSplitStages

  -- Stage 22
  plainStage ruffex tours 191.5

  -- Stage 23
  plainStage tours versailles 238.5

  -- Stage 24
  individualTimeTrial versailles paris 54.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1971 :: StageRace
tdf1971 = evalState tdf1971' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1971 6 26))

tdf1971' :: State StageRaceState StageRace
tdf1971' = do
  -- Prologue
  prologue' mulhouse 11.0

  -- Stages 2a, 2b & 2c
  enableSplitStages
  plainStage mulhouse basel 59.5
  plainStage basel Countries.WestGermany.freiburg 90.0
  plainStage Countries.WestGermany.freiburg mulhouse 74.5
  disableSplitStages

  -- Stage 3
  plainStage mulhouse strasbourg 144.0

  -- Stage 4
  plainStage strasbourg nancy 165.6

  -- Stage 5
  plainStage nancy marcheEnFamenne 242.0

  -- Stage 6
  plainStage dinant roubaix 208.5

  -- Stages 7a & 7b
  enableSplitStages
  plainStage roubaix amiens 127.5
  plainStage amiens leTouquet 133.5
  disableSplitStages

  restDay (Left leTouquet)

  -- Stage 8
  plainStage rungis nevers 257.5

  -- Stage 9
  plainStage nevers puyDeDome 221.0

  -- Stage 10
  plainStage clermontFerrand saintÉTienne 153.0

  -- Stage 11
  plainStage saintÉTienne grenoble 188.5

  -- Stage 12
  plainStage grenoble orcieres 134.0

  restDay (Left orcieres)

  -- Stage 13
  plainStage orcieres marseille 251.0

  criterium albi 16.3

  -- Stage 15
  plainStage revel luchon 214.5

  -- Stage 16
  plainStage luchon superbagneres 19.6

  -- Stages 17a & 17b
  enableSplitStages
  plainStage luchon gourette 145.0
  plainStage gourette pau 57.5
  disableSplitStages

  -- Stage 18
  plainStage montDeMarsan bordeaux 188.0

  -- Stage 19
  plainStage bordeaux poitiers 244.0

  -- Stage 20
  plainStage blois versailles 244.0

  -- Stage 21
  individualTimeTrial versailles paris 53.8

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1972 :: StageRace
tdf1972 = evalState tdf1972' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1972 7 1))

tdf1972' :: State StageRaceState StageRace
tdf1972' = do
  -- Prologue
  prologue' angers 7.2

  -- Stage 2
  plainStage angers saintBrieuc 235.5

  -- Stage 3
  plainStage saintBrieuc laBaule 206.5

  -- Stages 4a & 4b
  enableSplitStages
  plainStage pornichet saintJeanDeMonts 161.0
  outAndBackIndividualTimeTrial merlinPlage 16.2
  disableSplitStages

  -- Stage 5
  plainStage melinPlage royan 236.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage royan bordeaux 133.5
  outAndBackIndividualTimeTrial bordeaux 12.7
  disableSplitStages

  -- Stage 7
  plainStage bordeaux bayonne 205.0

  restDay (Left bayonne)

  -- Stage 8
  plainStage bayonne pau 220.5

  -- Stage 9
  plainStage pau luchon 163.5

  -- Stage 10
  plainStage luchon colombiers 179.0

  -- Stage 11
  plainStage castres laGrandMotte 210.0

  -- Stage 12
  summitFinishStage carnonPlage 207.0
  addCol 207 montVentoux

  -- Stage 13
  plainStage carpentras orcieres 192.0

  restDay (Left orcieres)

  -- Stage 14
  plainStage orcieres briancon 201.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage briancon valloire 51.0
  plainStage valloire aixLesBains 151.0
  disableSplitStages

  -- Stage 16
  plainStage aixLesBains leRevard 28.0

  -- Stage 17
  plainStage aixLesBains pontarlier 198.5

  -- Stage 18
  plainStage pontarlier ballonD'Alsace 213.0

  -- Stage 19
  plainStage vesoul auxerre 257.5

  -- Stage 20
  plainStage auxerre versailles 230.0

  -- Stages 21a & 21b
  enableSplitStages
  outAndBackIndividualTimeTrial versailles 42.0
  plainStage versailles paris 89.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1978 :: StageRace
tdf1978 = evalState tdf1978' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1978 6 29))

tdf1978' :: State StageRaceState StageRace
tdf1978' = do
  -- Prologue
  prologue' leiden 5.0

  -- Stages 1a & 1b
  enableSplitStages
  plainStage leiden sintWillebrord 135.0
  plainStage sintWillebrord brussels 100.0
  disableSplitStages

  -- Stage 2
  plainStage brussels saintAmandLesEaux 199.0

  -- Stage 3
  plainStage saintAmandLesEaux saintGermainEnLaye 244.0

  -- Stage 4
  teamTimeTrial evreux caen 153.0

  -- Stage 5
  plainStage caen mazeMontgeoffroy 244.0

  -- Stage 6
  plainStage mazeMontgeoffroy poitiers 162.0

  -- Stage 7
  plainStage poitiers bordeaux 242.0

  -- Stage 8
  individualTimeTrial saintEmilion sainteFoyLaGrande 59.0

  -- Stage 9
  plainStage bordeaux biarritz 233.0

  restDay (Left biarritz)

  -- Stage 10
  plainStage biarritz pau 192.0

  -- Stage 11
  plainStage pau saintLarySoulanPlaD'Adet 161.0

  -- Stages 12 & 12b
  enableSplitStages
  plainStage tarbes valenceD'Agen 158.0
  plainStage valenceD'Agen toulouse 96
  disableSplitStages

  -- Stage 14
  plainStage figeac superBesse 221.0

  -- Stage 15
  individualTimeTrial besseEnChandesse puyDeDome 52.0

  -- Stage 16
  plainStage saintDierD'Auvergne saintÉTienne 196.0

  -- Stage 17
  summitFinishStage saintÉTienne 241.0
  addCol 241 alpeD'Huez

  restDay (Right alpeD'Huez)

  -- Stage 18
  plainStage grenoble morzine 225.0

  -- Stage 19
  plainStage morzine lausanne 137.0

  -- Stage 20
  plainStage lausanne belfort 182.0

  -- Stage 21
  individualTimeTrial metz nancy 72.0

  -- Stage 22
  plainStage epernay senlis 207.0

  -- Stage 23
  plainStage saintGermainEnLaye paris 162.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1979 :: StageRace
tdf1979 = evalState tdf1979' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1979 6 27))

tdf1979' :: State StageRaceState StageRace
tdf1979' = do
  -- Prologue
  prologue' fleurance 5.0

  -- Stage 2
  plainStage fleurance luchon 225.0

  -- Stage 3
  individualTimeTrial luchon superbagneres 24.0

  -- Stage 4
  plainStage luchon pau 180.0

  -- Stage 5
  teamTimeTrial captieux bordeaux 87.0

  -- Stage 6
  plainStage neuvilleDePoitou angers 145.0

  -- Stage 7
  plainStage angers saintBrieuc 239.0

  -- Stage 8
  plainStage saintHilaireDuHarcouet deauville 158.0

  -- Stage 9
  teamTimeTrial deauville leHavre 90.0

  -- Stage 10
  plainStage amiens roubaix 201.0

  -- Stage 11
  plainStage roubaix brussels 124.0

  -- Stage 12
  outAndBackIndividualTimeTrial brussels 33.0

  -- Stage 13
  plainStage Countries.Belgium.rochefort metz 193.0

  -- Stage 14
  plainStage metz ballonD'Alsace 202.0

  -- Stage 15
  plainStage belfort evianLesBains 248.0

  -- Stage 16
  individualTimeTrial evianLesBains morzineAvoriaz 54.0

  -- Stage 17
  plainStage morzineAvoriaz lesMenuires 201.0

  restDay (Left lesMenuires)

  -- Stage 18
  summitFinishStage lesMenuires 167.0
  addCol 167 alpeD'Huez

  -- Stage 19
  roadStage (Right alpeD'Huez) Nothing 119.0
  addCol 119 alpeD'Huez

  -- Stage 20
  roadStage (Right alpeD'Huez) (Just saintPriest) 162.0

  -- Stage 21
  plainStage saintPriest dijon 240.0

  -- Stage 22
  outAndBackIndividualTimeTrial dijon 49.0

  -- Stage 23
  plainStage dijon auxerre 189.0

  -- Stage 24
  plainStage auxerre nogentSurMarne 205.0

  -- Stage 25
  plainStage lePerreuxSurMarne paris 180.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1980 :: StageRace
tdf1980 = evalState tdf1980' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1980 6 26))

tdf1980' :: State StageRaceState StageRace
tdf1980' = do
  -- Prologue
  prologue' frankfurt 8.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage frankfurt wiesbaden 133.0
  teamTimeTrial wiesbaden frankfurt 46.0
  disableSplitStages

  -- Stage 3
  plainStage frankfurt metz 276.0

  -- Stage 4
  plainStage metz liege 282.0

  -- Stage 5
  outAndBackIndividualTimeTrial spa 35.0

  -- Stage 6
  plainStage liege lille 249.0

  -- Stage 7
  plainStage lille compiegne 216.0

  -- Stages 8a & 8b
  enableSplitStages
  teamTimeTrial compiegne beauvais 65.0
  plainStage beauvais rouen 92.0
  disableSplitStages

  -- Stage 9
  plainStage flers saintMalo 164.0

  restDay (Left saintMalo)

  -- Stage 10
  plainStage saintMalo nantes 205.0

  -- Stage 11
  plainStage Countries.France.rochefort bordeaux 163.0

  -- Stage 12
  individualTimeTrial damazan laplume 52.0

  -- Stage 13
  plainStage agen pau 194.0

  -- Stage 14
  plainStage pau bagneresDeLuchon 200.0

  -- Stage 15
  plainStage lezignanCorbieres montpellier 189.0

  -- Stage 16
  plainStage montpellier martigues 160.0

  -- Stage 17
  plainStage trets praLoup 209.0

  -- Stage 18
  plainStage serreChevalier morzine 242.0

  restDay (Left morzine)

  -- Stage 19
  plainStage morzine prapoutel 199.0

  -- Stage 20
  plainStage voreppe saintÉTienne 140.0

  -- Stage 21
  outAndBackIndividualTimeTrial saintÉTienne 34.0

  -- Stage 22
  plainStage auxerre fontenaySousBois 208.0

  -- Stage 23
  plainStage fontenaySousBois paris 186.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1981 :: StageRace
tdf1981 = evalState tdf1981' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1981 6 25))

tdf1981' :: State StageRaceState StageRace
tdf1981' = do
  -- Prologue
  prologue' nice 6.0

  -- Stages 2a & 2b
  enableSplitStages
  criterium nice 97.0
  outAndBackTeamTimeTrial nice 40.0
  disableSplitStages

  -- Stage 3
  plainStage nice martingues 254.0

  -- Stage 4
  plainStage martingues narbonne 232.0

  -- Stage 5
  teamTimeTrial narbonne carcassonne 77.0

  -- Stage 6
  plainStage saintGaudens plaD'Adet 117.0

  -- Stage 7
  individualTimeTrial nay pau 27.0

  -- Stage 8
  plainStage pau bordeaux 227.0

  -- Stage 9
  plainStage Countries.France.rochefort nantes 182.0

  restDay (Left nantes)

  -- Stage 10
  plainStage nantes leMans 197.0

  -- Stage 11
  plainStage leMans aulnaySousBois 264.0

  -- Stage 12
  plainStage compiegne roubaix 246.0

  -- Stages 13a & 13b
  enableSplitStages
  plainStage roubaix brussels 107.0
  plainStage brussels circuitZolder 138.0
  disableSplitStages

  -- Stage 14
  plainStage beringen hasselt 157.0

  -- Stage 15
  outAndBackIndividualTimeTrial mulhouse 38.0

  -- Stage 16
  plainStage besancon thononLesBains 231.0

  -- Stage 17
  plainStage thononLesBains morzine 200.0

  restDay (Left morzine)

  -- Stage 18
  summitFinishStage morzine 230.0
  addCol 230 alpeD'Huez

  -- Stage 19
  plainStage leBourgD'Oisans lePleynet 134.0

  -- Stage 20
  plainStage veurey saintPriest 118.0

  -- Stage 21
  outAndBackIndividualTimeTrial saintPriest 46.0

  -- Stage 22
  plainStage auxerre fontenaySousBois 207.0

  -- Stage 23
  plainStage fontenaySousBois paris 187.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1982 :: StageRace
tdf1982 = evalState tdf1982' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1982 7 2))

tdf1982' :: State StageRaceState StageRace
tdf1982' = do
  -- Prologue
  prologue' basel 7.0

  -- Stage 2
  plainStage basel mohin 207.0

  -- Stage 3
  plainStage basel nancy 250.0

  -- Stage 4
  plainStage nancy longwy 134.0

  -- Stage 5
  plainStage beauraing mouscron 219.0

  -- Stage 6
  teamTimeTrial orchies fontaineAuPire 73.0

  -- Stage 7
  outAndBackTeamTimeTrial lille 73.0

  restDay (Left lille)

  -- Stage 8
  plainStage cancale concarneau 235.0

  -- Stage 9
  plainStage concarneau chateaulin 201.0

  -- Stages 10a & 10b
  enableSplitStages
  teamTimeTrial lorient plumelec 69.0
  plainStage plumelec nantes 138.0
  disableSplitStages

  -- Stage 11
  plainStage saintes bordeaux 147.0

  -- Stage 12
  outAndBackIndividualTimeTrial valenceD'Agen 57.0

  -- Stage 13
  plainStage fleurence pau 249.0

  -- Stage 14
  plainStage pau saintLarySoulanPlaD'Adet 122.0

  restDay (Left martigues)

  -- Stage 15
  outAndBackIndividualTimeTrial martigues 33.0

  -- Stage 16
  plainStage manosque orcieresMerlette 208.0

  -- Stage 17
  summitFinishStage orcieresMerlette 123.0
  addCol 123 alpeD'Huez

  -- Stage 18
  plainStage leBourgD'Oisans morzine 251.0

  -- Stage 19
  plainStage morzine saintPriest 233.0

  -- Stage 20
  outAndBackIndividualTimeTrial saintPriest 48.0

  -- Stage 21
  plainStage sens aulnaySousBois 161.0

  -- Stage 22
  plainStage fontenaySousBois paris 187.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1983 :: StageRace
tdf1983 = evalState tdf1983' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1983 7 1))

tdf1983' :: State StageRaceState StageRace
tdf1983' = do
  -- Prologue
  prologue' fontenaySousBois 6.0

  -- Stage 2
  plainStage nogentSurMarne creteil 163.0

  -- Stage 3
  plainStage soissons fontaineAuPire 100.0

  -- Stage 4
  plainStage valenciennes roubaix 152.0

  -- Stage 5
  plainStage roubaix leHavre 300.0

  -- Stage 6
  plainStage leHavre leMans 257.0

  -- Stage 7
  individualTimeTrial chateaubriant nantes 58.0

  -- Stage 8
  plainStage nantes ileD'Oleron 216.0

  -- Stage 9
  plainStage laRochelle bordeaux 222.0

  -- Stage 10
  plainStage bordeaux pau 207.0

  -- Stage 11
  plainStage pau bagneresDeLuchon 201.0

  -- Stage 12
  plainStage bagneresDeLuchon fleurance 177.0

  -- Stage 13
  plainStage fleurance roquefortSurSoulzon 261.0

  -- Stage 14
  plainStage roquefortSurSoulzon aurillac 210.0

  -- Stage 15
  plainStage aurillac issoire 149.0

  -- Stage 16
  individualTimeTrial clermontFerrand puyDeDome 16.0

  -- Stage 17
  plainStage issoire saintÉTienne 144.0

  -- Stage 18
  summitFinishStage laTourDuPin 233.0
  addCol 233 alpeD'Huez

  restDay (Right alpeD'Huez)

  -- Stage 19
  plainStage leBourgD'Oisans morzine 247.0

  -- Stage 20
  individualTimeTrial morzine avoriaz 15.0

  -- Stage 21
  plainStage morzine dijon 291.0

  -- Stage 22
  outAndBackIndividualTimeTrial dijon 50.0

  -- Stage 23
  plainStage alfortville paris 195.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1984 :: StageRace
tdf1984 = evalState tdf1984' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1984 6 29))

tdf1984' :: State StageRaceState StageRace
tdf1984' = do
  -- Stage 1
  prologue montreuil noisyLeSec 5.0

  -- Stage 2
  plainStage bondy saintDenis 149.0

  -- Stage 3
  plainStage bobigny louvroil 249.0

  -- Stages 4a & 4b
  enableSplitStages
  teamTimeTrial louvroil valenciennes 51.0
  plainStage valenciennes bethune 83.0
  disableSplitStages

  -- Stage 5
  plainStage bethune cergyPontoise 207.0

  -- Stage 6
  plainStage cergyPontoise alencon 202.0

  -- Stage 7
  individualTimeTrial alencon leMans 67.0

  -- Stage 8
  plainStage leMans nantes 192.0

  -- Stage 9
  plainStage nantes bordeaux 338.0

  -- Stage 10
  plainStage langon pau 198.0

  -- Stage 11
  plainStage pau guzetNeige 227.0

  -- Stage 12
  plainStage saintGirons blagnac 111.0

  -- Stage 13
  plainStage blagnac rodez 220.0

  -- Stage 14
  plainStage rodez domaineDuRouret 228.0

  -- Stage 15
  plainStage domaineDuRouret grenoble 241.0

  restDay (Left grenoble)

  -- Stage 16
  individualTimeTrial lesEchelles laRuchere 22.0

  -- Stage 17
  summitFinishStage grenoble 151.0
  addCol 151 alpeD'Huez

  -- Stage 18
  plainStage leBourgD'Oisans laPlagne 185.0

  -- Stage 19
  plainStage laPlagne morzine 186.0

  -- Stage 20
  plainStage morzine cransMontana 141.0

  -- Stage 21
  plainStage cransMontana villefrancheSurSaone 320.0

  -- Stage 22
  individualTimeTrial villieMorgon villefrancheSurSaone 51.0

  -- Stage 23
  plainStage pantin paris 197.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1985 :: StageRace
tdf1985 = evalState tdf1985' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1985 6 28))

tdf1985' :: State StageRaceState StageRace
tdf1985' = do
  -- Prologue
  prologue' plumelec 6.0

  -- Stage 1
  plainStage vannes lanester 256.0

  -- Stage 2
  plainStage lorient vitre 242.0

  -- Stage 3
  plainStage vitre fougeres 242.0

  -- Stage 4
  plainStage fougeres pontAudemer 239.0

  -- Stage 5
  plainStage neufchatelEnBray roubaix 224.0

  -- Stage 6
  plainStage roubaix reims 222.0

  -- Stage 7
  plainStage reims nancy 217.0

  -- Stage 8
  individualTimeTrial sarrebourg strasbourg 75.0

  -- Stage 9
  plainStage strasbourg epinal 174.0

  -- Stage 10
  plainStage epinal pontarlier 204.0

  -- Stage 11
  plainStage pontarlier morzineAvoriaz 195.0

  -- Stage 12
  plainStage morzineAvoriaz lansEnVercors 269.0

  -- Stage 13
  outAndBackIndividualTimeTrial villardDeLans 32.0

  restDay (Left villardDeLans)

  -- Stage 14
  plainStage autrans saintÉTienne 179.0

  -- Stage 15
  plainStage saintÉTienne aurillac 238.0

  -- Stage 16
  plainStage aurillac toulouse 247.0

  -- Stage 17
  plainStage toulouse luzArdiden 209.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage luzSaintSauveur aubisque 53.0
  plainStage laruns pau 83.0
  disableSplitStages

  -- Stage 19
  plainStage pau bordeaux 203.0

  -- Stage 20
  plainStage montponMenesterol limoges 225.0

  -- Stage 21
  outAndBackIndividualTimeTrial lacDeVassiviere 46.0

  -- Stage 22
  plainStage orleans paris 196.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1986 :: StageRace
tdf1986 = evalState tdf1986' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1986 7 4))

tdf1986' :: State StageRaceState StageRace
tdf1986' = do
  -- Prologue
  prologue' boulogneBillancourt 4.6

  -- Stage 1
  enableMorningStage
  plainStage nanterre sceaux 85.0

  -- Stage 2
  teamTimeTrial meudon saintQuentinEnYvelines 56.0

  -- Stage 3
  plainStage levalloisPerret lievin 214.0

  -- Stage 4
  plainStage lievin evreux 243.0

  -- Stage 5
  plainStage evreux villersSurMer 124.5

  -- Stage 6
  plainStage villersSurMer cherbourg 200.0

  -- Stage 7
  plainStage cherbourg saintHilaireDuHarcouet 201.0

  -- Stage 8
  plainStage saintHilaireDuHarcouet nantes 204.0

  -- Stage 9
  outAndBackIndividualTimeTrial nantes 61.5

  -- Stage 10
  plainStage nantes futuroscope 183.0

  -- Stage 11
  plainStage futuroscope bordeaux 258.3

  -- Stage 12
  plainStage bayonne pau 217.5

  -- Stage 13
  plainStage pau superbagneres 186.0

  -- Stage 15
  plainStage superbagneres blagnac 154.0

  -- Stage 16
  plainStage carcassonne nimes 225.5

  -- Stage 17
  plainStage nimes gap 246.5

  -- Stage 18
  plainStage gap serreChevalier 190.0

  -- Stage 19
  summitFinishStage briancon 162.5
  addCol 162.5 alpeD'Huez

  restDay (Right alpeD'Huez)

  -- Stage 20
  plainStage villardDeLans saintÉTienne 179.5

  -- Stage 21
  outAndBackIndividualTimeTrial saintÉTienne 58.0

  -- Stage 22
  plainStage saintÉTienne puyDeDome 190.0

  -- Stage 23
  plainStage clermontFerrand nevers 194.0

  -- Stage 24
  plainStage cosneSurLoire paris 255.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1987 :: StageRace
tdf1987 = evalState tdf1987' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1987 7 1))

tdf1987' :: State StageRaceState StageRace
tdf1987' = do
  -- Prologue
  prologue' westBerlin 6.0

  -- Stage 1
  enableMorningStage
  criterium westBerlin 105.0

  -- Stage 2
  outAndBackTeamTimeTrial westBerlin 40.5

  transferDay

  -- Stage 3
  plainStage Countries.WestGermany.karlsruhe Countries.WestGermany.stuttgart 219.0

  -- Stage 4
  enableMorningStage
  plainStage Countries.WestGermany.stuttgart Countries.WestGermany.pforzheim 79.0

  -- Stage 5
  plainStage Countries.WestGermany.pforzheim strasbourg 112.5

  -- Stage 6
  plainStage strasbourg epinal 169.0

  -- Stage 7
  plainStage epinal troyes 211.0

  -- Stage 8
  plainStage troyes epnaySousSenart 205.5

  -- Stage 9
  plainStage orleans renaze 260.0

  -- Stage 10
  individualTimeTrial saumur futuroscope 87.5

  -- Stage 11
  plainStage poitiers chaumeil 255.0

  -- Stage 12
  plainStage brive bordeaux 228.0

  -- Stage 13
  plainStage bayonne pau 219.0

  -- Stage 14
  plainStage pau luzArdiden 166.0

  -- Stage 15
  plainStage tarbes blagnac 164.0

  -- Stage 16
  plainStage blagnac millau 216.5

  -- Stage 17
  plainStage millau avignon 239.0

  restDay (Left avignon)

  -- Stage 18
  mountainTimeTrial carpentras 36.5
  addCol 36.5 montVentoux

  -- Stage 19
  plainStage valreas villardDeLans 185.0

  -- Stage 20
  summitFinishStage villardDeLans 201
  addCol 201 alpeD'Huez

  -- Stage 21
  plainStage leBourgD'Oisans laPlagne 185.5

  -- Stage 22
  plainStage laPlagne morzine 186.0

  -- Stage 23
  plainStage saintJulienEnGenevois dijon 224.5

  -- Stage 24
  outAndBackIndividualTimeTrial dijon 38.0

  -- Stage 25
  plainStage creteil paris 192.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1988 :: StageRace
tdf1988 = evalState tdf1988' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1988 7 3))

tdf1988' :: State StageRaceState StageRace
tdf1988' = do
  -- Stage 1
  prologue pornichet laBaule 1.0

  -- Stage 2
  enableMorningStage
  plainStage pontchateau machecoul 91.5

  -- Stage 3
  teamTimeTrial laHaieFouassiere ancenis 48.0

  -- Stage 4
  plainStage nantes leMans 213.5

  -- Stage 5
  plainStage leMans evreux 158.0

  -- Stage 6
  plainStage neufchatelEnBray lievin 147.5

  -- Stage 7
  individualTimeTrial lievin wasquehal 52.0

  -- Stage 8
  plainStage wasquehal reims 225.5

  -- Stage 9
  plainStage reims nancy 219.0

  -- Stage 10
  plainStage nancy strasbourg 160.5

  -- Stage 11
  plainStage belfort besancon 149.5

  -- Stage 12
  plainStage besancon morzine 232.0

  -- Stage 13
  summitFinishStage morzine 227
  addCol 227 alpeD'Huez

  -- Stage 14
  individualTimeTrial grenoble villardDeLans 38.0

  restDay (Left blagnac)

  -- Stage 15
  plainStage blagnac guzetNeige 163.0

  -- Stage 16
  plainStage saintGirons luzArdiden 187.5

  -- Stage 17
  enableMorningStage
  plainStage luzArdiden pau 38.0

  -- Stage 18
  plainStage pau bordeaux 210.0

  -- Stage 19
  plainStage ruelleSurTourve limoges 93.5

  -- Stage 20
  plainStage limoges puyDeDome 188.0

  -- Stage 21
  plainStage clermontFerrand chalonSurSaone 233.5

  -- Stage 22
  outAndBackIndividualTimeTrial santennay 48.0

  -- Stage 23
  plainStage nemours paris 172.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1989 :: StageRace
tdf1989 = evalState tdf1989' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1989 7 1))

tdf1989' :: State StageRaceState StageRace
tdf1989' = do
  -- Prologue
  prologue' luxembourgCity 7.8

  -- Stage 1
  enableMorningStage
  criterium luxembourgCity 135.5

  -- Stage 2
  outAndBackTeamTimeTrial luxembourgCity 46.0

  -- Stage 3
  plainStage luxembourgCity spa 241.0

  -- Stage 4
  plainStage liege wasquehal 255.0

  restDay (Left dinard)

  -- Stage 5
  individualTimeTrial dinard rennes 73.0

  -- Stage 6
  plainStage rennes futuroscope 259.0

  -- Stage 7
  plainStage poitiers bordeaux 258.5

  -- Stage 8
  plainStage labastideD'Armagnac pau 157.0

  -- Stage 9
  plainStage pau cauterets 147.0

  -- Stage 110
  plainStage cauterets superbagneres 136.0

  -- Stage 11
  plainStage luchon blagnac 158.5

  -- Stage 12
  plainStage toulouse montpellier 242.0

  -- Stage 13
  plainStage montpellier marseille 179.0

  -- Stage 14
  plainStage marseille gap 240.0

  -- Stage 15
  individualTimeTrial gap orcieresMerlette 39.0

  restDay (Left orcieresMerlette)

  -- Stage 16
  plainStage gap briancon 175.0

  -- Stage 17
  summitFinishStage briancon 165
  addCol 165 alpeD'Huez

  -- Stage 18
  plainStage leBourgD'Oisans villardDeLans 91.5

  -- Stage 19
  plainStage villardDeLans aixLesBains 125.0

  -- Stage 20
  plainStage aixLesBains l'IsleD'Abeau 130.0

  -- Stage 21
  individualTimeTrial versailles paris 24.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1990 :: StageRace
tdf1990 = evalState tdf1990' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1990 6 30))

tdf1990' :: State StageRaceState StageRace
tdf1990' = do
  -- Prologue
  prologue' futuroscope 6.3

  -- Stage 1
  enableMorningStage
  criterium futuroscope 138.5

  -- Stage 2
  outAndBackTeamTimeTrial futuroscope 44.5

  -- Stage 3
  plainStage poitiers nantes 233.0

  -- Stage 4
  plainStage nantes montSaintMichel 203.0

  -- Stage 5
  plainStage avranches rouen 301.0

  restDay (Left rouen)

  -- Stage 6
  plainStage sarrebourg vittel 202.5

  -- Stage 7
  individualTimeTrial vittel epinal 61.5

  -- Stage 8
  plainStage epinal besancon 181.5

  -- Stage 9
  plainStage besancon geneva 196.0

  -- Stage 10
  plainStage geneva saintGervais 118.5

  -- Stage 11
  summitFinishStage saintGervais 182.5
  addCol 182.5 alpeD'Huez

  -- Stage 12
  individualTimeTrial fontaine villardDeLans 33.5

  restDay (Left villardDeLans)

  -- Stage 13
  plainStage villardDeLans saintÉTienne 149.0

  -- Stage 14
  plainStage lePuyEnVelay millau 205.0

  -- Stage 15
  plainStage millau revel 170.0

  -- Stage 16
  plainStage blagnac luzArdiden 215.0

  -- Stage 17
  plainStage lourdes pau 150.0

  -- Stage 18
  plainStage pau bordeaux 202.0

  -- Stage 19
  plainStage castillonLaBataille limoges 182.5

  -- Stage 20
  outAndBackIndividualTimeTrial lacDeVassiviere 45.5

  -- Stage 21
  plainStage bretignySurOrge paris 182.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1991 :: StageRace
tdf1991 = evalState tdf1991' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1991 7 6))

tdf1991' :: State StageRaceState StageRace
tdf1991' = do
  -- Prologue
  prologue' lyon 5.4

  -- Stage 1
  enableMorningStage
  criterium lyon 114.5

  -- Stage 2
  teamTimeTrial bron chassieu 36.5

  -- Stage 3
  plainStage villeurbanne dijon 210.5

  -- Stage 4
  plainStage dijon reims 286.0

  -- Stage 5
  plainStage reims valenciennes 149.5

  -- Stage 6
  plainStage arras leHavre 259.0

  -- Stage 7
  plainStage leHavre argentan 167.0

  -- Stage 8
  individualTimeTrial argentan alencon 73.0

  -- Stage 9
  plainStage alencon rennes 161.0

  -- Stage 10
  plainStage rennes quimper 207.5

  -- Stage 11
  plainStage quimper saintHerblain 246.0

  restDay (Left pau)

  -- Stage 12
  plainStage pau jaca 192.0

  -- Stage 13
  plainStage jaca valLouron 232.0

  -- Stage 14
  plainStage saintGaudens castres 172.5

  -- Stage 15
  plainStage albi ales 235.0

  -- Stage 16
  plainStage ales gap 215.0

  -- Stage 17
  summitFinishStage gap 125
  addCol 125 alpeD'Huez

  -- Stage 18
  plainStage leBourgD'Oisans morzine 255.0

  -- Stage 19
  plainStage morzine aixLesBains 177.0

  -- Stage 20
  plainStage aixLesBains macon 166.0

  -- Stage 21
  individualTimeTrial lugny macon 57.0

  -- Stage 22
  plainStage melun paris 178.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1992 :: StageRace
tdf1992 = evalState tdf1992' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1992 7 4))

tdf1992' :: State StageRaceState StageRace
tdf1992' = do
  -- Prologue
  prologue' sanSebastian 8.0

  -- Stage 1
  criterium sanSebastian 194.5

  -- Stage 2
  plainStage sanSebastian pau 255.0

  -- Stage 3
  plainStage pau bordeaux 210.0

  -- Stage 4
  outAndBackTeamTimeTrial libourne 63.5

  -- Stage 5
  plainStage nogentSurOise wasquehal 196.0

  -- Stage 6
  plainStage roubaix brussels 167.0

  -- Stage 7
  plainStage brussels valkenburg 196.5

  -- Stage 8
  plainStage valkenburg koblenz 206.5

  -- Stage 9
  outAndBackIndividualTimeTrial luxembourgCity 65.0

  -- Stage 10
  plainStage luxembourgCity strasbourg 217.0

  -- Stage 11
  plainStage strasbourg mulhouse 249.5

  -- Stage 12
  plainStage dole saintGervais 267.5

  restDay (Left dole)

  -- Stage 13
  plainStage saintGervais sestriere 254.5

  -- Stage 14
  summitFinishStage sestriere 186.5
  addCol 186.5 alpeD'Huez

  -- Stage 15
  plainStage leBourgD'Oisans saintÉTienne 198.0

  -- Stage 16
  plainStage saintÉTienne laBourboule 212.0

  -- Stage 17
  plainStage laBourboule montlucon 189.0

  -- Stage 18
  plainStage montlucon tours 212.0

  -- Stage 19
  individualTimeTrial tours blois 64.0

  -- Stage 20
  plainStage blois nanterre 222.0

  -- Stage 21
  plainStage laDefense paris 141.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1993 :: StageRace
tdf1993 = evalState tdf1993' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1993 7 3))

tdf1993' :: State StageRaceState StageRace
tdf1993' = do
  -- Prologue
  prologue' lePuyDuFou 6.8

  -- Stage 1
  plainStage lucon lesSablesD'Olonne 215.0

  -- Stage 2
  plainStage lesSablesD'Olonne vannes 227.5

  -- Stage 3
  plainStage vannes dinard 189.5

  -- Stage 4
  teamTimeTrial dinard avranches 81.0

  -- Stage 5
  plainStage avranches evreux 225.5

  -- Stage 6
  plainStage evreux amiens 158.0

  -- Stage 7
  plainStage peronne chalonsSurMarne 199.0

  -- Stage 8
  plainStage chalonsSurMarne verdun 184.5

  -- Stage 9
  outAndBackIndividualTimeTrial lacDeMadine 59.0

  restDay (Left villardDeLans)

  -- Stage 10
  plainStage villardDeLans serreChevalier 203.0

  -- Stage 11
  plainStage serreChevalier isola_2000 179.0

  -- Stage 12
  plainStage isola marseille 286.5

  -- Stage 13
  plainStage marseille montpellier 181.5

  -- Stage 14
  plainStage montpellier perpignan 223.0

  -- Stage 15
  plainStage perpignan pal 231.5

  restDay (Left pal)

  -- Stage 16
  plainStage pal saintLarySoulanPlaD'Adet 230.0

  -- Stage 17
  plainStage tarbes pau 190.0

  -- Stage 18
  plainStage orthez bordeaux 195.5

  -- Stage 19
  individualTimeTrial bretignySurOrge montlhery 48.0

  -- Stage 20
  plainStage viryChatillon paris 196.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1994 :: StageRace
tdf1994 = evalState tdf1994' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1994 7 2))

tdf1994' :: State StageRaceState StageRace
tdf1994' = do
  -- Prologue
  prologue' lille 7.2

  -- Stage 1
  plainStage lille armentieres 234.0

  -- Stage 2
  plainStage roubaix boulogneSurMer 203.5

  -- Stage 3
  teamTimeTrial calais eurotunnel 66.5

  -- Stage 4
  plainStage dover brighton 204.5

  -- Stage 5
  criterium portsmouth 187.0

  -- Stage 6
  plainStage cherbourg rennes 270.5

  -- Stage 7
  plainStage rennes futuroscope 259.5

  -- Stage 8
  plainStage poitiers trelissac 218.5

  -- Stage 9
  individualTimeTrial perigueux bergerac 64.0

  -- Stage 10
  plainStage bergerac cahors 160.5

  -- Stage 11
  plainStage cahors hautacam 263.5

  restDay (Left lourdes)

  -- Stage 12
  plainStage lourdes luzArdiden 204.5

  -- Stage 13
  plainStage bagneresDeBigorre albi 223.0

  -- Stage 14
  plainStage castres montpellier 202.0

  -- Stage 15
  plainStage montpellier carpentras 231.0

  -- Stage 16
  summitFinishStage valreas 224.5
  addCol 224.5 alpeD'Huez

  -- Stage 17
  plainStage leBourgD'Oisans valThorens 149.0

  -- Stage 18
  plainStage moutiers cluses 174.5

  -- Stage 19
  individualTimeTrial cluses avoriaz 47.5

  -- Stage 20
  plainStage morzine lacSaintPoint 208.5

  -- Stage 21
  plainStage disneylandParis paris 175.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1995 :: StageRace
tdf1995 = evalState tdf1995' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1995 7 1))

tdf1995' :: State StageRaceState StageRace
tdf1995' = do
  -- Prologue
  prologue' saintBrieuc 7.3

  -- Stage 1
  plainStage dinan lannion 233.5

  -- Stage 2
  plainStage perrosGuirec vitre 235.5

  -- Stage 3
  teamTimeTrial mayenne alencon 67.0

  -- Stage 4
  plainStage alencon leHavre 162.0

  -- Stage 5
  plainStage fecamp dunkerque 261.0

  -- Stage 6
  plainStage dunkerque charleroi 202.0

  -- Stage 7
  plainStage charleroi liege 203.0

  -- Stage 8
  individualTimeTrial huy seraing 54.0

  restDay (Left leGrandBornand)

  -- Stage 9
  plainStage leGrandBornand laPlagne 160.0

  -- Stage 10
  summitFinishStage laPlagne 162.5
  addCol 162.5 alpeD'Huez

  -- Stage 11
  plainStage leBourgD'Oisans saintÉTienne 199.0

  -- Stage 12
  plainStage saintÉTienne mende 222.5

  -- Stage 13
  plainStage mende revel 245.0

  -- Stage 14
  plainStage saintOrensDeGameville guzetNeige 164.0

  restDay (Left saintGirons)

  -- Stage 15
  plainStage saintGirons cauterets 206.0

  -- Stage 16
  plainStage tarbes pau 149.0

  -- Stage 17
  plainStage pau bordeaux 246.0

  -- Stage 18
  plainStage montponMenesterol limoges 246.0

  -- Stage 19
  outAndBackIndividualTimeTrial lacDeVassiviere 46.5

  -- Stage 20
  plainStage sainteGenevieveDesBois paris 155.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1996 :: StageRace
tdf1996 = evalState tdf1996' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1996 6 29))

tdf1996' :: State StageRaceState StageRace
tdf1996' = do
  -- Prologue
  prologue' sHertogenbosch 9.4

  -- Stage 1
  criterium sHertogenbosch 209.0

  -- Stage 2
  plainStage sHertogenbosch wasquehal 247.5

  -- Stage 3
  plainStage wasquehal nogentSurOise 195.0

  -- Stage 4
  plainStage soissons lacDeMadine 232.0

  -- Stage 5
  plainStage lacDeMadine besancon 242.0

  -- Stage 6
  plainStage arcEtSenans aixLesBains 207.0

  -- Stage 7
  plainStage chambery lesArcs 200.0

  -- Stage 8
  individualTimeTrial bourgSaintMaurice valD'Isere 30.5

  -- Stage 9
  plainStage leMonetierLesBains sestriere 46.0

  -- Stage 10
  plainStage turin gap 208.5

  restDay (Left gap)

  -- Stage 11
  plainStage gap valence 202.0

  -- Stage 12
  plainStage valence lePuyEnVelay 143.5

  -- Stage 13
  plainStage lePuyEnVelay superBesse 177.0

  -- Stage 14
  plainStage besse tulle 186.5

  -- Stage 15
  plainStage briveLaGaillarde villeneuveSurLot 176.0

  -- Stage 16
  plainStage agen hautacam 199.0

  -- Stage 17
  plainStage argelesGazost pamplona 262.0

  -- Stage 18
  plainStage pamplona hendaye 154.5

  -- Stage 19
  plainStage hendaye bordeaux 226.5

  -- Stage 20
  individualTimeTrial bordeaux saintEmilion 63.5

  -- Stage 21
  plainStage palaiseau paris 147.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1997 :: StageRace
tdf1997 = evalState tdf1997' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1997 7 5))

tdf1997' :: State StageRaceState StageRace
tdf1997' = do
  -- Prologue
  prologue' rouen 7.3

  -- Stage 1
  plainStage rouen forgesLesEaux 192.0

  -- Stage 2
  plainStage saintValeryEnCaux vire 262.0

  -- Stage 3
  plainStage vire plumelec 224.0

  -- Stage 4
  plainStage plumelec lePuyDuFou 223.0

  -- Stage 5
  plainStage chantonnay laChatre 261.5

  -- Stage 6
  plainStage leBlanc marennes 217.5

  -- Stage 7
  plainStage marennes bordeaux 194.0

  -- Stage 8
  plainStage sauternes pau 161.5

  -- Stage 9
  plainStage pau loudenvielle 182.0

  -- Stage 10
  plainStage luchon arcalis 182.0

  -- Stage 11
  plainStage arcalis perpignan 192.0

  restDay (Left saintÉTienne)

  -- Stage 12
  individualTimeTrial saintÉTienne saintÉTienne 55.0

  -- Stage 13
  summitFinishStage saintÉTienne 203.5
  addCol 203.5 alpeD'Huez

  -- Stage 14
  plainStage leBourgD'Oisans courchevel 148.0

  -- Stage 15
  plainStage courchevel morzine 208.5

  -- Stage 16
  plainStage morzine fribourg 181.0

  -- Stage 17
  plainStage fribourg colmar 218.5

  -- Stage 18
  plainStage colmar montbeliard 175.5

  -- Stage 19
  plainStage montbeliard dijon 172.0

  -- Stage 20
  outAndBackIndividualTimeTrial disneylandParis 63.0

  -- Stage 21
  plainStage disneylandParis paris 149.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1998 :: StageRace
tdf1998 = evalState tdf1998' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1998 7 11))

tdf1998' :: State StageRaceState StageRace
tdf1998' = do
  -- Prologue
  prologue' dublin 5.6

  -- Stage 1
  criterium dublin 180.5

  -- Stage 2
  plainStage enniscorthy cork 205.5

  -- Stage 3
  plainStage roscoff lorient 169.0

  -- Stage 4
  plainStage plouay cholet 252.0

  -- Stage 5
  plainStage cholet chateauroux 228.5

  -- Stage 6
  plainStage laChatre briveLaGaillarde 204.5

  -- Stage 7
  individualTimeTrial meyrignacL'Eglise correze 58.0

  -- Stage 8
  plainStage briveLaGaillarde montauban 190.5

  -- Stage 9
  plainStage montauban pau 210.0

  -- Stage 110
  plainStage pau luchon 196.5

  -- Stage 11
  plainStage luchon plateauDeBeille 170.0

  restDay (Left ariege)

  -- Stage 12
  plainStage tarasconSurAriege leCapD'Agde 222.0

  -- Stage 13
  plainStage frontignanLaPeyrade carpentras 196.0

  -- Stage 14
  plainStage valreas grenoble 186.5

  -- Stage 15
  plainStage grenoble lesDeuxAlpes 189.0

  -- Stage 16
  plainStage vizelle albertville 204.0

  -- Stage 17
  plainStage albertville aixLesBains 149.0

  -- Stage 18
  plainStage aixLesBains neuchatel 218.5

  -- Stage 19
  plainStage laChauxDeFonds autun 242.0

  -- Stage 20
  individualTimeTrial montceauLesMines leCreusot 52.0

  -- Stage 21
  plainStage melun paris 147.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf1999 :: StageRace
tdf1999 = evalState tdf1999' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1999 7 3))

tdf1999' :: State StageRaceState StageRace
tdf1999' = do
  -- Prologue
  prologue' lePuyDuFou 6.8

  -- Stage 1
  plainStage montaigu challans 208.0

  -- Stage 2
  plainStage challans saintNazaire 176.0

  -- Stage 3
  plainStage nantes laval 194.5

  -- Stage 4
  plainStage laval blois 194.5

  -- Stage 5
  plainStage bonneval amiens 233.5

  -- Stage 6
  plainStage amiens mauberge 171.5

  -- Stage 7
  plainStage avesnesSurHelpe thionville 227.0

  -- Stage 8
  outAndBackIndividualTimeTrial metz 56.5

  restDay (Left leGrandBornand)

  -- Stage 9
  plainStage leGrandBornand sestriere 213.5

  -- Stage 10
  summitFinishStage sestriere 220.5
  addCol 220.5 alpeD'Huez

  -- Stage 11
  plainStage leBourgD'Oisans saintÉTienne 198.5

  -- Stage 12
  plainStage saintGalmier saintFlour 201.5

  -- Stage 13
  plainStage saintFlour albi 236.5

  -- Stage 14
  plainStage castres saintGaudens 199.0

  restDay (Left saintGaudens)

  -- Stage 15
  plainStage saintGaudens piauEngaly 173.0

  -- Stage 16
  plainStage lannemezan pau 192.0

  -- Stage 17
  plainStage mourenx bordeaux 200.0

  -- Stage 18
  plainStage jonzac futuroscope 187.5

  -- Stage 19
  outAndBackIndividualTimeTrial futuroscope 57.0

  -- Stage 20
  plainStage arpajon paris 143.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2000 :: StageRace
tdf2000 = evalState tdf2000' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2000 7 1))

tdf2000' :: State StageRaceState StageRace
tdf2000' = do
  -- Stage 1
  outAndBackIndividualTimeTrial futuroscope 16.5

  -- Stage 2
  plainStage futuroscope loudon 194.0

  -- Stage 3
  plainStage loudon nantes 161.5

  -- Stage 4
  teamTimeTrial nantes saintNazaire 70.0

  -- Stage 5
  plainStage vannes vitre 202.0

  -- Stage 6
  plainStage vitre tours 198.5

  -- Stage 7
  plainStage tours limoges 205.5

  -- Stage 8
  plainStage limoges villeneuveSurLot 203.5

  -- Stage 9
  plainStage agen dax 181.0

  -- Stage 10
  plainStage dax hautacam 205.0

  -- Stage 11
  plainStage bagneresDeBigorre revel 218.5

  restDay (Left provence)

  -- Stage 12
  summitFinishStage carpentras 149
  addCol 149 montVentoux

  -- Stage 13
  plainStage avignon draguignan 185.5

  -- Stage 14
  plainStage draguignan briancon 249.5

  -- Stage 15
  plainStage briancon courchevel 173.5

  restDay (Left courchevel)

  -- Stage 16
  plainStage courchevel morzine 196.5

  -- Stage 17
  plainStage evianLesBains lausanne 155.0

  -- Stage 18
  plainStage lausanne Countries.Germany.freiburg 246.5

  -- Stage 19
  individualTimeTrial Countries.Germany.freiburg mulhouse 58.5

  -- Stage 20
  plainStage belfort troyes 254.5

  -- Stage 21
  plainStage paris paris 138.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2001 :: StageRace
tdf2001 = evalState tdf2001' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2001 7 7))

tdf2001' :: State StageRaceState StageRace
tdf2001' = do
  -- Prologue
  prologue' dunkerque 8.2

  -- Stage 1
  plainStage saintOmer boulogneSurMer 194.5

  -- Stage 2
  plainStage calais antwerp 220.5

  -- Stage 3
  plainStage antwerp seraing 198.5

  -- Stage 4
  plainStage huy verdun 215.0

  -- Stage 5
  teamTimeTrial verdun barLeDuc 67.0

  -- Stage 6
  plainStage commercy strasbourg 211.5

  -- Stage 7
  plainStage strasbourg colmar 162.5

  -- Stage 8
  plainStage colmar pontarlier 222.5

  -- Stage 9
  plainStage pontarlier aixLesBains 185.0

  -- Stage 10
  summitFinishStage aixLesBains 209
  addCol 209 alpeD'Huez

  -- Stage 11
  individualTimeTrial grenoble chamrousse 32.0

  restDay (Left perpignan)

  -- Stage 12
  plainStage perpignan plateauDeBonascre 165.5

  -- Stage 13
  plainStage foix saintLarySoulanPlaD'Adet 194.0

  -- Stage 14
  plainStage tarbes luzArdiden 141.5

  restDay (Left pau)

  -- Stage 15
  plainStage pau lavaur 232.5

  -- Stage 16
  plainStage castelsarrasin sarran 229.5

  -- Stage 17
  plainStage briveLaGaillarde montlucon 194.0

  -- Stage 18
  individualTimeTrial montlucon saintAmandMontrond 61.0

  -- Stage 19
  plainStage orleans evry 149.5

  -- Stage 20
  plainStage corbeilEssonnes paris 160.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2002 :: StageRace
tdf2002 = evalState tdf2002' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2002 7 6))

tdf2002' :: State StageRaceState StageRace
tdf2002' = do
  -- Prologue
  prologue' luxembourgCity 7.0

  criterium luxembourgCity 192.5

  -- Stage 3
  plainStage luxembourgCity saarbrucken 181.0

  -- Stage 4
  plainStage metz reims 174.5

  -- Stage 5
  teamTimeTrial epernay chateauThierry 67.5

  -- Stage 6
  plainStage soissons rouen 195.0

  -- Stage 7
  plainStage forgesLesEaux alencon 199.5

  -- Stage 8
  plainStage bagnolesDeL'Orne avranches 176.0

  -- Stage 9
  plainStage saintMartinDeLandelles plouay 217.5

  -- Stage 10
  individualTimeTrial lanester lorient 52.0

  restDay (Left bordeaux)

  -- Stage 11
  plainStage bazas pau 147.0

  -- Stage 12
  plainStage pau laMongie 158.0

  -- Stage 13
  plainStage lannemezan plateauDeBeille 199.5

  -- Stage 14
  plainStage lavelanet beziers 171.0

  -- Stage 15
  summitFinishStage lodeve 221
  addCol 221 montVentoux

  restDay (Left vaucluse)

  -- Stage 16
  plainStage vaisonLaRomaine lesDeuxAlpes 226.5

  -- Stage 17
  plainStage lesDeuxAlpes laPlagne 179.5

  -- Stage 18
  plainStage aime cluses 142.0

  -- Stage 19
  plainStage cluses bourgEnBresse 176.5

  -- Stage 20
  individualTimeTrial regnieDurette macon 50.0

  -- Stage 21
  plainStage melun paris 144.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2003 :: StageRace
tdf2003 = evalState tdf2003' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2003 7 5))

tdf2003' :: State StageRaceState StageRace
tdf2003' = do
  -- Prologue
  prologue' paris 6.5

  -- Stage 2
  plainStage saintDenis meaux 168.0

  -- Stage 3
  plainStage laFerteSousJouarre sedan 204.5

  -- Stage 4
  plainStage charlevilleMezieres saintDizier 167.5

  -- Stage 5
  teamTimeTrial joinville saintDizier 69.0

  -- Stage 6
  plainStage troyes nevers 196.5

  -- Stage 7
  plainStage nevers lyon 230.0

  -- Stage 8
  plainStage lyon morzine 230.5

  -- Stage 9
  summitFinishStage sallanches 219.0
  addCol 219 alpeD'Huez

  -- Stage 10
  plainStage leBourgD'Oisans gap 184.5

  -- Stage 11
  plainStage gap marseille 219.5

  restDay (Left narbonne)

  -- Stage 12
  plainStage narbonne toulouse 153.5

  -- Stage 13
  individualTimeTrial gaillac capDecouverte 47.0

  -- Stage 14
  plainStage toulouse ax3Domaines 197.5

  -- Stage 15
  plainStage saintGirons loudenville 191.5

  -- Stage 16
  plainStage bagneresDeBigorre luzArdiden 159.5

  restDay (Left pau)

  -- Stage 17
  plainStage pau bayonne 197.5

  -- Stage 18
  plainStage dax bordeaux 181.0

  -- Stage 19
  plainStage bordeaux saintMaixentL'Ecole 203.5

  -- Stage 20
  individualTimeTrial pornic nantes 49.0

  -- Stage 21
  plainStage villeD'Avray paris 152.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2004 :: StageRace
tdf2004 = evalState tdf2004' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2004 7 3))

tdf2004' :: State StageRaceState StageRace
tdf2004' = do
  -- Prologue
  prologue' liege 6.1

  -- Stage 2
  plainStage liege charleroi 202.5

  -- Stage 3
  plainStage charleroi namur 197.0

  -- Stage 4
  plainStage waterloo wasquehal 210.0

  -- Stage 5
  teamTimeTrial cambrai arras 64.5

  -- Stage 6
  plainStage amiens chartres 200.5

  -- Stage 7
  plainStage bonneval angers 196.0

  -- Stage 8
  plainStage chateaubriant saintBrieuc 204.5

  -- Stage 9
  plainStage lamballe quimper 168.0

  restDay (Left limoges)

  -- Stage 10
  plainStage saintLeonardDeNoblat gueret 160.5

  -- Stage 11
  plainStage limoges saintFlour 237.0

  -- Stage 12
  plainStage saintFlour figeac 164.0

  -- Stage 13
  plainStage castelsarrasin laMongie 197.5

  -- Stage 14
  plainStage lannemezan plateauDeBeille 205.5

  -- Stage 15
  plainStage carcassonne nimes 192.5

  restDay (Left nimes)

  -- Stage 16
  plainStage valreas villardDeLans 180.5

  -- Stage 17
  mountainTimeTrial leBourgD'Oisans 15.5
  addCol 15.5 alpeD'Huez

  -- Stage 18
  plainStage leBourgD'Oisans leGrandBornand 204.5

  -- Stage 19
  plainStage annemasse lonsLeSaunier 166.5

  -- Stage 20
  outAndBackIndividualTimeTrial besancon 55.0

  -- Stage 21
  plainStage montereauFaultYonne paris 163.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2005 :: StageRace
tdf2005 = evalState tdf2005' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2005 7 2))

tdf2005' :: State StageRaceState StageRace
tdf2005' = do
  -- Stage 1
  individualTimeTrial fromentine noirmoutierEnL'Ile 19.0

  -- Stage 2
  plainStage challans lesEssarts 181.5

  -- Stage 3
  plainStage laChataigneraie tours 212.5

  -- Stage 4
  teamTimeTrial tours blois 67.5

  -- Stage 5
  plainStage chambord montargis 183.0

  -- Stage 6
  plainStage troyes nancy 199.0

  -- Stage 7
  plainStage luneville Countries.Germany.karlsruhe 228.5

  -- Stage 8
  plainStage Countries.Germany.pforzheim gerardmer 231.5

  -- Stage 9
  plainStage gerardmer mulhouse 171.0

  -- Stage 10
  plainStage grenoble courchevel 177.0

  restDay (Left grenoble)

  -- Stage 11
  plainStage courchevel briancon 173.0

  -- Stage 12
  plainStage briancon digneLesBains 187.0

  -- Stage 13
  plainStage miramas montpellier 173.5

  -- Stage 14
  plainStage agde ax3Domaines 220.5

  -- Stage 15
  plainStage lezatSurLeze saintLarySoulanPlaD'Adet 205.5

  -- Stage 16
  plainStage mourenx pau 180.5

  restDay (Left pau)

  -- Stage 17
  plainStage pau revel 239.5

  -- Stage 18
  plainStage albi mende 189.0

  -- Stage 19
  plainStage issoire lePuyEnVelay 153.5

  -- Stage 20
  outAndBackIndividualTimeTrial saintÉTienne 55.5

  -- Stage 21
  plainStage corbeilEssonnes paris 144.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2006 :: StageRace
tdf2006 = evalState tdf2006' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2006 7 1))

tdf2006' :: State StageRaceState StageRace
tdf2006' = do
  -- Prologue
  prologue' strasbourg 7.1

  criterium strasbourg 184.5

  -- Stage 3
  plainStage obernai eschSurAlzette 228.5

  -- Stage 4
  plainStage eschSurAlzette valkenburg 216.5

  -- Stage 5
  plainStage huy saintQuentin 207.0

  -- Stage 6
  plainStage beauvais caen 225.0

  -- Stage 7
  plainStage lisieux vitre 189.0

  -- Stage 8
  individualTimeTrial saintGregoire rennes 52.0

  -- Stage 9
  plainStage saintMeenLeGrand lorient 181.0

  restDay (Left bordeaux)

  -- Stage 10
  plainStage bordeaux dax 169.5

  -- Stage 11
  plainStage camboLesBains pau 190.5

  -- Stage 12
  plainStage tarbes valD'AranPlaDeBeret 206.5

  -- Stage 13
  plainStage luchon carcassonne 211.5

  -- Stage 14
  plainStage beziers montelimar 230.0

  -- Stage 15
  plainStage montelimar gap 180.5

  restDay (Left gap)

  -- Stage 16
  summitFinishStage gap 187.0
  addCol 187 alpeD'Huez

  -- Stage 17
  plainStage leBourgD'Oisans laToussuire 182.0

  -- Stage 18
  plainStage saintJeanDeMaurienne morzine 200.5

  -- Stage 19
  plainStage morzine macon 197.0

  -- Stage 20
  individualTimeTrial leCreusot montceauLesMines 57.0

  -- Stage 21
  plainStage antonyParcDeSceaux paris 154.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2007 :: StageRace
tdf2007 = evalState tdf2007' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2007 7 7))

tdf2007' :: State StageRaceState StageRace
tdf2007' = do
  -- Prologue
  prologue' london 7.9

  -- Stage 2
  plainStage london canterbury 203.0

  -- Stage 3
  plainStage dunkerque ghent 168.5

  -- Stage 4
  plainStage waregem compiegne 236.5

  -- Stage 5
  plainStage villersCotterets joigny 193.0

  -- Stage 6
  plainStage chablis autun 182.5

  -- Stage 7
  plainStage semurEnAuxois bourgEnBresse 199.5

  -- Stage 8
  plainStage bourgEnBresse leGrandBornand 197.5

  -- Stage 9
  plainStage leGrandBornand tignes 165.0

  restDay (Left tignes)

  -- Stage 10
  plainStage valD'Isere briancon 159.5

  -- Stage 11
  plainStage tallard marseille 229.5

  -- Stage 12
  plainStage marseille montpellier 182.5

  -- Stage 13
  plainStage montpellier castres 178.5

  -- Stage 14
  outAndBackIndividualTimeTrial albi 54.0

  -- Stage 15
  plainStage mazamet plateauDeBeille 197.0

  -- Stage 16
  plainStage foix loudenvielle 196.0

  restDay (Left pau)

  -- Stage 17
  plainStage orthez gouretteColD'Aubisque 218.5

  -- Stage 18
  plainStage pau castelsarrasin 188.5

  -- Stage 19
  plainStage cahors angouleme 211.0

  -- Stage 20
  individualTimeTrial cognac angouleme 55.5

  -- Stage 21
  plainStage marcoussis paris 146.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2008 :: StageRace
tdf2008 = evalState tdf2008' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2008 7 5))

tdf2008' :: State StageRaceState StageRace
tdf2008' = do
  -- Stage 1
  plainStage brest plumelec 197.5

  -- Stage 2
  plainStage aulay saintBrieuc 164.5

  -- Stage 3
  plainStage saintMalo nantes 208.0

  -- Stage 4
  outAndBackIndividualTimeTrial cholet 29.5

  -- Stage 5
  plainStage cholet chateauroux 232.0

  -- Stage 6
  plainStage aigurande superBesseSancy 195.0

  -- Stage 7
  plainStage brioude aurillac 159.0

  -- Stage 8
  plainStage figeac toulouse 172.5

  -- Stage 9
  plainStage toulouse bagneresDeBigorre 224.0

  -- Stage 10
  plainStage pau hautacam 156.0

  restDay (Left pau)

  -- Stage 11
  plainStage lannemezan foix 167.5

  -- Stage 12
  plainStage lavalanet narbonne 168.5

  -- Stage 13
  plainStage narbonne nimes 182.0

  -- Stage 14
  plainStage nimes digneLesBains 194.5

  -- Stage 15
  plainStage embrun pratoNevoso 183.0

  restDay (Left cuneo)

  -- Stage 16
  plainStage cuneo jausiers 157.0

  -- Stage 17
  summitFinishStage embrun 210.5
  addCol 210.5 alpeD'Huez

  -- Stage 18
  plainStage bourgD'Oisans saintÉTienne 196.5

  -- Stage 19
  plainStage roanne montlucon 165.5

  -- Stage 20
  individualTimeTrial cerilly saintAmandMontrond 53.0

  -- Stage 21
  plainStage etampes paris 143.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2009 :: StageRace
tdf2009 = evalState tdf2009' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2009 7 4))

tdf2009' :: State StageRaceState StageRace
tdf2009' = do
  -- Stage 1
  outAndBackIndividualTimeTrial monaco 15.5

  -- Stage 2
  plainStage monaco brignoles 187.0

  -- Stage 3
  plainStage marseille laGrandeMotte 196.5

  -- Stage 4
  outAndBackTeamTimeTrial montpellier 39.0

  -- Stage 5
  plainStage capD'Agde perpignan 196.5

  -- Stage 6
  plainStage girona barcelona 181.5

  -- Stage 7
  plainStage barcelona arcalis 224.0

  -- Stage 8
  plainStage andorraLaVella saintGirons 176.5

  -- Stage 9
  plainStage saintGirons tarbes 160.5

  restDay (Left limoges)

  -- Stage 10
  plainStage limoges issoudun 194.5

  -- Stage 11
  plainStage vatan saintFargeau 192.0

  -- Stage 12
  plainStage tonnerre vittel 211.5

  -- Stage 13
  plainStage vittel colmar 200.0

  -- Stage 14
  plainStage colmar besancon 199.0

  -- Stage 15
  plainStage pontarlier verbier 207.5

  restDay (Left verbier)

  -- Stage 16
  plainStage martigny bourgSaintMaurice 159.0

  -- Stage 17
  plainStage bourgSaintMaurice leGrandBornand 169.5

  -- Stage 18
  outAndBackIndividualTimeTrial annecy 40.5

  -- Stage 19
  plainStage bourgoinJallieu aubenas 178.0

  -- Stage 20
  summitFinishStage montelimar 167
  addCol 167 montVentoux

  -- Stage 21
  plainStage montereauFaultYonne paris 164.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2010 :: StageRace
tdf2010 = evalState tdf2010' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2010 7 3))

tdf2010' :: State StageRaceState StageRace
tdf2010' = do
  -- Prologue
  prologue' rotterdam 8.9

  -- Stage 2
  plainStage rotterdam brussels 223.5

  -- Stage 3
  plainStage brussels spa 201.0

  -- Stage 4
  plainStage wanze arenbergPorteDuHainaut 213.0

  -- Stage 5
  plainStage cambrai reims 153.5

  -- Stage 6
  plainStage epernay montargis 187.5

  -- Stage 7
  plainStage montargis gueugnon 227.5

  -- Stage 8
  plainStage tournus stationDesRousses 165.6

  -- Stage 9
  plainStage stationDesRousses morzineAvoriaz 189.0

  restDay (Left morzineAvoriaz)

  -- Stage 10
  plainStage morzineAvoriaz saintJeanDeMaurienne 204.5

  -- Stage 11
  plainStage chambery gap 179.0

  -- Stage 12
  plainStage sisteron bourgLesValence 184.5

  -- Stage 13
  plainStage bourgDePeage mende 210.5

  -- Stage 14
  plainStage rodez revel 196.0

  -- Stage 15
  plainStage revel ax3Domaines 184.5

  -- Stage 16
  plainStage pamiers bagneresDeLuchon 187.5

  -- Stage 17
  plainStage bagneresDeLuchon pau 199.5

  restDay (Left pau)

  -- Stage 18
  summitFinishStage pau 174
  addCol 174 colDuTourmalet

  -- Stage 19
  plainStage saliesDeBearn bordeaux 198.0

  -- Stage 20
  individualTimeTrial bordeaux pauillac 52.0

  -- Stage 21
  plainStage longjumeau paris 102.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2011 :: StageRace
tdf2011 = evalState tdf2011' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2011 7 2))

tdf2011' :: State StageRaceState StageRace
tdf2011' = do
  -- Stage 1
  plainStage passageDuGois montDesAlouettes 191.5

  -- Stage 2
  outAndBackTeamTimeTrial lesEssarts 23.0

  -- Stage 3
  plainStage olonneSurMer redon 198.0

  -- Stage 4
  summitFinishStage lorient 172.5
  addCol 172.5 murDeBretagne

  -- Stage 5
  plainStage carhaix capFrehel 164.5

  -- Stage 6
  plainStage dinan lisieux 226.5

  -- Stage 7
  plainStage leMans chateauroux 218.0

  -- Stage 8
  plainStage aigurande superBesse 189.0

  -- Stage 9
  plainStage issoire saintFlour 208.0

  restDay (Left leLioran)

  -- Stage 10
  plainStage aurillac carmaux 158.0

  -- Stage 11
  plainStage blayeLesMines lavaur 167.5

  -- Stage 12
  plainStage cugnaux luzArdiden 211.0

  -- Stage 13
  plainStage pau lourdes 152.5

  -- Stage 14
  plainStage saintGaudens plateauDeBeille 168.5

  -- Stage 15
  plainStage limoux montpellier 192.5

  restDay (Left drome)

  -- Stage 16
  plainStage saintPaulTroisChateaux gap 162.5

  -- Stage 17
  plainStage gap pinerolo 179.0

  -- Stage 18
  let colDuGalibierSerreChevalier = jointFinish colDuGalibier serreChevalier
  summitFinishStage pinerolo 200.5
  addCol 200.5 colDuGalibierSerreChevalier

  -- Stage 19
  summitFinishStage modane 109.5
  addCol 109.5 alpeD'Huez

  -- Stage 20
  outAndBackIndividualTimeTrial grenoble 42.5

  -- Stage 21
  plainStage creteil paris 95.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2012 :: StageRace
tdf2012 = evalState tdf2012' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2012 6 30))

tdf2012' :: State StageRaceState StageRace
tdf2012' = do
  criterium liege 6.4

  -- Stage 2
  plainStage liege seraing 198.0

  -- Stage 3
  plainStage vise tournai 198.0

  -- Stage 4
  plainStage orchies boulogneSurMer 197.0

  -- Stage 5
  plainStage abbeville rouen 214.5

  -- Stage 6
  plainStage rouen saintQuentin 196.5

  -- Stage 7
  plainStage epernay metz 207.5

  -- Stage 8
  plainStage tomblaine laPlancheDesBellesFilles 199.0

  -- Stage 9
  plainStage belfort porrentruy 157.5

  -- Stage 10
  individualTimeTrial arcEtSenans besancon 41.5

  restDay (Left macon)

  -- Stage 11
  plainStage macon bellegardeSueValserine 194.5

  -- Stage 12
  plainStage albertville laToussuireLesSybelles 148.0

  -- Stage 13
  plainStage saintJeanDeMaurienne annonayDavezieux 226.0

  -- Stage 14
  plainStage saintPaulTroisChateaux capD'Agne 217.0

  -- Stage 15
  plainStage limoux foix 191.0

  -- Stage 16
  plainStage samatan pau 158.5

  restDay (Left pau)

  -- Stage 17
  plainStage pau bagneresDeLuchon 197.0

  -- Stage 18
  plainStage bagneresDeLuchon peyragudes 143.5

  -- Stage 19
  plainStage blagnac briveLaGaillarde 222.5

  -- Stage 20
  individualTimeTrial bonneval chartres 53.5

  -- Stage 21
  plainStage rambouillet paris 120.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2013 :: StageRace
tdf2013 = evalState tdf2013' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2013 6 29))

tdf2013' :: State StageRaceState StageRace
tdf2013' = do
  -- Stage 1
  plainStage portoVecchio bastia 213.0

  -- Stage 2
  plainStage bastia ajaccio 156.0

  -- Stage 3
  plainStage ajaccio calvi 145.5

  -- Stage 4
  outAndBackTeamTimeTrial nice 25.0

  -- Stage 5
  plainStage cagnesSurMer marseille 228.5

  -- Stage 6
  plainStage aixEnProvence montpellier 176.5

  -- Stage 7
  plainStage montpellier albi 205.5

  -- Stage 8
  plainStage castres ax3Domaines 195.0

  -- Stage 9
  plainStage saintGirons bagneresDeBigorre 168.5

  restDay (Left saintNazaire)

  -- Stage 10
  plainStage saintGildasDesBois saintMalo 197.0

  -- Stage 11
  individualTimeTrial avranches montSaintMichel 33.0

  -- Stage 12
  plainStage fougeres tours 218.0

  -- Stage 13
  plainStage tours saintAmandMontrond 173.0

  -- Stage 14
  plainStage saintPourcainSurSioule lyon 191.0

  -- Stage 15
  summitFinishStage givors 242.5
  addCol 242.5 montVentoux

  restDay (Left vaucluse)

  -- Stage 16
  plainStage vaisonLaRomaine gap 168.0

  -- Stage 17
  individualTimeTrial embrun chorges 32.0

  -- Stage 18
  summitFinishStage gap 172.5
  addCol 172.5 alpeD'Huez

  -- Stage 19
  plainStage leBourgD'Oisans leGrandBornand 204.5

  -- Stage 20
  plainStage annecy semnoz 125.0

  -- Stage 21
  plainStage versailles paris 133.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2014 :: StageRace
tdf2014 = evalState tdf2014' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2014 7 5))

tdf2014' :: State StageRaceState StageRace
tdf2014' = do
  -- Stage 1
  plainStage leeds harrogate 190.5

  -- Stage 2
  plainStage york sheffield 201.0

  -- Stage 3
  plainStage cambridge london 155.0

  -- Stage 4
  plainStage leTouquetParisPlage lilleMetropole 163.5

  -- Stage 5
  plainStage ypres arenbergPorteDuHainaut 152.5

  -- Stage 6
  plainStage arras reims 194.0

  -- Stage 7
  plainStage epernay nancy 234.5

  -- Stage 8
  plainStage tomblaine gerardmerLasMauselaine 161.0

  -- Stage 9
  plainStage gerardmer mulhouse 170.0

  -- Stage 10
  plainStage mulhouse laPlancheDesBellesFilles 161.5

  restDay (Left besancon)

  -- Stage 11
  plainStage besancon oyonnax 187.5

  -- Stage 12
  plainStage bourgEnBresse saintÉTienne 185.5

  -- Stage 13
  plainStage saintÉTienne chamrousse 197.5

  -- Stage 14
  plainStage grenoble risoul 177.0

  -- Stage 15
  plainStage tallard nimes 222.0

  restDay (Left carcassonne)

  -- Stage 16
  plainStage carcassonne bagneresDeLuchon 237.5

  -- Stage 17
  plainStage saintGaudens saintLaryPlaD'Adet 124.5

  -- Stage 18
  plainStage pau hautacam 145.5

  -- Stage 19
  plainStage maubourguetPaysDuValD'Adour bergerac 208.5

  -- Stage 20
  individualTimeTrial bergerac perigueux 54.0

  -- Stage 21
  plainStage evry paris 137.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2015 :: StageRace
tdf2015 = evalState tdf2015' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2015 7 4))

tdf2015' :: State StageRaceState StageRace
tdf2015' = do
  -- Stage 1
  outAndBackIndividualTimeTrial utrecht 13.8

  -- Stage 2
  plainStage utrecht zeeland 166.0

  -- Stage 3
  plainStage antwerp huy 159.5

  -- Stage 4
  plainStage seraing cambrai 223.5

  -- Stage 5
  plainStage arras amiens 189.5

  -- Stage 6
  plainStage abbeville leHavre 191.5

  -- Stage 7
  plainStage livarot fougeres 190.5

  -- Stage 8
  summitFinishStage rennes 181.5
  addCol 181.5 murDeBretagne

  -- Stage 9
  teamTimeTrial vannes plumelec 28.0

  restDay (Left pau)

  -- Stage 10
  plainStage tarbes laPierreSaintMartin 167.0

  -- Stage 11
  plainStage pau cauterets 188.0

  -- Stage 12
  plainStage lannemezan plateauDeBeille 195.0

  -- Stage 13
  plainStage muret rodez 198.5

  -- Stage 14
  plainStage rodez mende 178.5

  -- Stage 15
  plainStage mende valence 183.0

  -- Stage 16
  plainStage bourgDePeage gap 201.0

  restDay (Left gap)

  -- Stage 17
  plainStage digneLesBains praLoup 161.0

  -- Stage 18
  plainStage gap saintJeanDeMaurienne 186.5

  -- Stage 19
  plainStage saintJeanDeMaurienne laToussuireLesSybelles 138.0

  -- Stage 20
  summitFinishStage modane 110.5
  addCol 110.5 alpeD'Huez

  -- Stage 21
  plainStage sevres paris 109.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2016 :: StageRace
tdf2016 = evalState tdf2016' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2016 7 2))

tdf2016' :: State StageRaceState StageRace
tdf2016' = do
  -- Stage 1
  plainStage montSaintMichel utahBeach 188.0

  -- Stage 2
  plainStage saintLo cherbourgEnCotentin 183.0

  -- Stage 3
  plainStage granville angers 223.5

  -- Stage 4
  plainStage saumur limoges 237.5

  -- Stage 5
  plainStage limoges leLioran 216.0

  -- Stage 6
  plainStage arpajonSurCere montauban 190.5

  -- Stage 7
  plainStage l'IsleJourdain lacDePayolle 162.5

  -- Stage 8
  plainStage pau bagneresDeLuchon 184.0

  -- Stage 9
  plainStage vielhaValD'Aran arcalis 184.5

  restDay (Left arcalis)

  -- Stage 10
  plainStage escaldes revel 197.0

  -- Stage 11
  plainStage carcassonne montpellier 162.5

  -- Stage 12
  plainStage montpellier chaletReynard 178.0

  -- Stage 13
  individualTimeTrial bourgSaintAndeol laCaverneDuPontD'Arc 37.5

  -- Stage 14
  plainStage montelimar villarLesDombes 208.5

  -- Stage 15
  plainStage bourgEnBresse culoz 160.0

  -- Stage 16
  plainStage moiransEnMontagne bern 209.0

  restDay (Left bern)

  -- Stage 17
  plainStage bern finhautEmosson 184.5

  -- Stage 18
  individualTimeTrial sallanches megeve 17.0

  -- Stage 19
  plainStage abbeville saintGervaisLesBains 146.0

  -- Stage 20
  plainStage megeve morzine 146.5

  -- Stage 21
  plainStage chantilly paris 113.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2017 :: StageRace
tdf2017 = evalState tdf2017' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2017 7 1))

tdf2017' :: State StageRaceState StageRace
tdf2017' = do
  -- Stage 1
  outAndBackIndividualTimeTrial dusseldorf 14.0

  -- Stage 2
  plainStage dusseldorf liege 203.5

  -- Stage 3
  plainStage verviers longwy 212.5

  -- Stage 4
  plainStage mondorfLesBains vittel 207.5

  -- Stage 5
  plainStage vittel laPlancheDesBellesFilles 160.5

  -- Stage 6
  plainStage vesoul troyes 216.0

  -- Stage 7
  plainStage troyes nuitsSaintGeorges 213.5

  -- Stage 8
  plainStage dole stationDesRousses 187.5

  -- Stage 9
  plainStage nantua chambery 181.5

  restDay (Left dordogne)

  -- Stage 10
  plainStage perigueux bergerac 178.0

  -- Stage 11
  plainStage eymet pau 203.5

  -- Stage 12
  plainStage pau peyragudes 214.5

  -- Stage 13
  plainStage saintGirons foix 101.0

  -- Stage 14
  plainStage blagnac rodez 181.5

  -- Stage 15
  plainStage laissacSeveracL'Eglise lePuyEnVelay 189.5

  restDay (Left lePuyEnVelay)

  -- Stage 16
  plainStage lePuyEnVelay romansSurIsere 165.0

  -- Stage 17
  plainStage laMure serreChevalier 183.0

  -- Stage 18
  summitFinishStage briancon 179.5
  addCol 179.5 colD'Izoard

  -- Stage 19
  plainStage embrun salonDeProvence 222.5

  -- Stage 20
  outAndBackIndividualTimeTrial marseille 22.5

  -- Stage 21
  plainStage montgeron paris 103.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

tdf2018 :: StageRace
tdf2018 = evalState tdf2018' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2018 7 7))

tdf2018' :: State StageRaceState StageRace
tdf2018' = do
  -- Stage 1
  plainStage noirmoutierEnL'Ile fontenayLeComte 201
  c4 173 "Cote de Vix" France 30 0.7 4.2

  -- Stage 2
  plainStage mouilleronSaintGermain laRocheSurYon 182.5
  c4 28 "Cote de Pouzauges" France 202 1 3.9

  -- Stage 3
  outAndBackTeamTimeTrial cholet 35.5

  -- Stage 4
  plainStage laBaule sarzeau 195
  c4 135.5 "Cote de Saint-Jean-la-Poterie" France 79 0.8 7.8

  -- Stage 5
  plainStage lorient quimper 204.5
  addCol 106 coteDeKaliforn
  addCol 113 coteDeTrimen
  addCol 140.5 coteDeLaRocheDuFeu
  addCol 159.5 coteDeMenezQuelerc'h
  addCol 184.5 coteDeLaMontagneDeLocranan

  -- Stage 6
  summitFinishStage brest 181
  addCol 44 coteDePloudiry
  addCol 68.5 coteDeRoc'hTrevezel
  addCol 165 murDeBretagne
  addCol 181 murDeBretagne

  -- Stage 7
  plainStage fougres chartres 231
  c4 120 "Cote du Buisson de Perseigne" France 235 1.5 6.9

  -- Stage 8
  plainStage dreux amiens 181
  c4 35 "Cote de Pacy-sur-Eure" France 135 2 4.3
  c4 71.5 "Cote de Feuquerolles" France 134 2.3 4.3

  -- Stage 9
  plainStage arras roubaix 156.5

  restDay (Left annecy)

  -- Stage 10
  mountainStage annecy leGrandBornand 158.5
  addCol 19 colDeBluffy
  addCol 43 colDeLaCroixFry
  addCol 68.5 monteeDuPlateauDesGlieres
  addCol 130 colDeRomme
  addCol 144 colDeLaColombiere

  -- Stage 11
  summitFinishStage albertville 108.5
  addCol 26 monteeDuBisanne
  addCol 57.5 colDuPre
  addCol 70 cormetDeRoselend
  addCol 108.5 laRosiere

  -- Stage 12
  summitFinishStage bourgSaintMaurice 175.5
  addCol 53.5 colDeLaMadeleine
  addCol 83 lacetsDeMontvernier
  addCol 121 colDeLaCroixDeFer
  addCol 175.5 alpeD'Huez

  -- Stage 13
  plainStage leBourgD'Oisans valence 169.5
  addCol 32.5 coteDeBrie
  addCol 109.5 coteDeSainteEulalie

  -- Stage 14
  plainStage saintPaulTroisChateaux mende 188
  addCol 81 coteDuGrandChataignier
  addCol 129 colDeLaCroixDeBerthel
  addCol 142 colDuPontSansEau
  addCol 186.5 coteDeLaCroixNeuve

  -- Stage 15
  plainStage millau carcassonne 181.5
  addCol 9 coteDeLuzencon
  addCol 64.5 colDeSie
  addCol 140 picDeNore

  restDay (Left lourdes)

  -- Stage 16
  mountainStage carcassonne bagneresDeLuchon 218
  addCol 25 coteDeFanjeaux
  addCol 72 coteDePamiers
  addCol 155.5 colDePortet'Aspet
  addCol 171 colDeMente
  addCol 208 colDuPortillon

  -- Stage 17
  let colDePortet' = clone colDePortet "Saint-Lary-Soulan"
  summitFinishStage bagneresDeLuchon 65
  addCol 15 monteDePeyragudes
  addCol 37 colDeValLouronAzet
  addCol 65 colDePortet'

  -- Stage 18
  mountainStage trieSurBasie pau 171
  addCol 53.5 coteDeMadiran
  addCol 152.5 coteD'Anos

  -- Stage 19
  mountainStage lourdes laruns 200.5
  addCol 7 coteDeLoucrup
  addCol 40 coteDeCapvernLesBains
  addCol 78.5 colD'Aspin
  addCol 108 colDuTourmalet
  addCol 159.5 colDeBorderes
  addCol 180.5 colD'Aubisque

  -- Stage 20
  individualTimeTrial saintPeeSurNivelle espelette 31

  -- Stage 21
  plainStage houilles paris 116

  race <- ParcoursDB.State.StageRace.build
  return race
