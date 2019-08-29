-- file StageRaces.Giro.hs
module StageRaces.Giro
(giro1980
,giro1981
,giro1987
,giro2016
,giro2017
,giro2018
,giro2019
,giroEditions
)where

import Control.Monad.State
import Countries.Austria
import Countries.Belgium
import Countries.Croatia
import Countries.Denmark
import Countries.Fiume
import Countries.France
import Countries.Germany
import Countries.Greece
import Countries.Ireland
import Countries.Israel
import Countries.Italy
import Countries.Luxembourg
import Countries.Monaco
import Countries.Netherlands
import Countries.NorthernIreland
import Countries.SanMarino
import Countries.Slovenia
import Countries.Switzerland
import Countries.VaticanCity
import Countries.WestGermany
import Countries.Yugoslavia
import Data.Time
import Mountains.Alps
import Mountains.Appennines
import Mountains.Dolomites
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.StageRace
import ParcoursDB.State.NonConsecutiveStageRace hiding (roadStage,teamTimeTrial)

giroEditions :: [StageRace]
giroEditions = [ giro1909
               , giro1910
               , giro1911
               , giro1912
               , giro1913
               , giro1914
               , giro1919
               , giro1920
               , giro1921
               , giro1922
               , giro1923
               , giro1924
               , giro1925
               , giro1926
               , giro1927
               , giro1928
               , giro1929
               , giro1930
               , giro1931
               , giro1932
               , giro1933
               , giro1934
               , giro1935
               , giro1936
               , giro1937
               , giro1938
               , giro1939
               , giro1940
               , giro1946
               , giro1947
               , giro1948
               , giro1949
               , giro1950
               , giro1951
               , giro1952
               , giro1953
               , giro1954
               , giro1955
               , giro1956
               , giro1957
               , giro1958
               , giro1959
               , giro1960
               , giro1961
               , giro1962
               , giro1963
               , giro1964
               , giro1965
               , giro1966
               , giro1967
               , giro1968
               , giro1969
               , giro1970
               , giro1971
               , giro1972
               , giro1973
               , giro1974
               , giro1975
               , giro1976
               , giro1977
               , giro1978
               , giro1979
               , giro1980
               , giro1981
               , giro1982
               , giro1983
               , giro1984
               , giro1985
               , giro1986
               , giro1987
               , giro1988
               , giro1989
               , giro1990
               , giro1991
               , giro1992
               , giro1993
               , giro1994
               , giro1995
               , giro1996
               , giro1997
               , giro1998
               , giro1999
               , giro2000
               , giro2001
               , giro2002
               , giro2003
               , giro2004
               , giro2005
               , giro2006
               , giro2007
               , giro2008
               , giro2009
               , giro2010
               , giro2011
               , giro2012
               , giro2013
               , giro2014
               , giro2015
               , giro2016
               , giro2017
               , giro2018
               , giro2019
               ]

giro1909Stages :: [NonConsecutiveStage]
giro1909Stages = [ NonConsecutiveRoadStage {month=5, day=13, start=milan, finish=bologna, distance=397.0}
                 , NonConsecutiveRoadStage {month=5, day=16, start=bologna, finish=chieti, distance=375.8}
                 , NonConsecutiveRoadStage {month=5, day=18, start=chieti, finish=naples, distance=242.8}
                 , NonConsecutiveRoadStage {month=5, day=20, start=naples, finish=rome, distance=228.1}
                 , NonConsecutiveRoadStage {month=5, day=23, start=rome, finish=florence, distance=346.5}
                 , NonConsecutiveRoadStage {month=5, day=25, start=florence, finish=genoa, distance=294.1}
                 , NonConsecutiveRoadStage {month=5, day=27, start=genoa, finish=turin, distance=354.9}
                 , NonConsecutiveRoadStage {month=5, day=30, start=turin, finish=milan, distance=206.0}
                 ]

giro1910Stages :: [NonConsecutiveStage]
giro1910Stages = [ NonConsecutiveRoadStage {month=5, day=18, start=milan, finish=udine, distance=388.0}
                 , NonConsecutiveRoadStage {month=5, day=20, start=udine, finish=bologna, distance=322.4}
                 , NonConsecutiveRoadStage {month=5, day=22, start=bologna, finish=teramo, distance=345.2}
                 , NonConsecutiveRoadStage {month=5, day=24, start=teramo, finish=naples, distance=319.5}
                 , NonConsecutiveRoadStage {month=5, day=26, start=naples, finish=rome, distance=192.3}
                 , NonConsecutiveRoadStage {month=5, day=28, start=rome, finish=florence, distance=327.5}
                 , NonConsecutiveRoadStage {month=5, day=30, start=florence, finish=genoa, distance=263.5}
                 , NonConsecutiveRoadStage {month=6, day=1, start=genoa, finish=mondovi, distance=218.1}
                 , NonConsecutiveRoadStage {month=6, day=2, start=mondovi, finish=turin, distance=333.4}
                 , NonConsecutiveRoadStage {month=6, day=5, start=turin, finish=milan, distance=277.5}
                 ]

giro1911Stages :: [NonConsecutiveStage]
giro1911Stages = [ NonConsecutiveRoadStage {month=5, day=15, start=rome, finish=florence, distance=394.1}
                 , NonConsecutiveRoadStage {month=5, day=17, start=florence, finish=genoa, distance=261.5}
                 , NonConsecutiveRoadStage {month=5, day=19, start=genoa, finish=oneglia, distance=274.9}
                 , NonConsecutiveRoadStage {month=5, day=21, start=oneglia, finish=mondovi, distance=190.3}
                 , NonConsecutiveRoadStage {month=5, day=23, start=mondovi, finish=turin, distance=302.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=turin, finish=milan, distance=236.2}
                 , NonConsecutiveRoadStage {month=5, day=27, start=milan, finish=bologna, distance=394.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=bologna, finish=ancona, distance=283.4}
                 , NonConsecutiveRoadStage {month=5, day=31, start=ancona, finish=sulmona, distance=218.7}
                 , NonConsecutiveRoadStage {month=6, day=2, start=sulmona, finish=bari, distance=363.1}
                 , NonConsecutiveRoadStage {month=6, day=4, start=bari, finish=pompeii, distance=345.2}
                 , NonConsecutiveRoadStage {month=6, day=6, start=naples, finish=rome, distance=266.9}
                 ]

giro1912Stages :: [NonConsecutiveStage]
giro1912Stages = [ NonConsecutiveRoadStage {month=5, day=19, start=milan, finish=padua, distance=398.8}
                 , NonConsecutiveRoadStage {month=5, day=21, start=padua, finish=bologna, distance=328.8}
                 , NonConsecutiveRoadStage {month=5, day=23, start=bologna, finish=pescara, distance=362.5}
                 , NonConsecutiveRoadStage {month=5, day=25, start=pescara, finish=rome, distance=294.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=rome, finish=florence, distance=337.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=florence, finish=genoa, distance=267.5}
                 , NonConsecutiveRoadStage {month=5, day=31, start=genoa, finish=turin, distance=230.0}
                 , NonConsecutiveRoadStage {month=6, day=2, start=turin, finish=milan, distance=280.0}
                 , NonConsecutiveRoadStage {month=6, day=4, start=milan, finish=bergamo, distance=235.0}
                 ]

giro1913Stages :: [NonConsecutiveStage]
giro1913Stages = [ NonConsecutiveRoadStage {month=5, day=6, start=milan, finish=genoa, distance=341.0}
                 , NonConsecutiveRoadStage {month=5, day=8, start=genoa, finish=siena, distance=332.0}
                 , NonConsecutiveRoadStage {month=5, day=10, start=siena, finish=rome, distance=317.9}
                 , NonConsecutiveRoadStage {month=5, day=12, start=rome, finish=salerno, distance=341.0}
                 , NonConsecutiveRoadStage {month=5, day=14, start=salerno, finish=bari, distance=295.6}
                 , NonConsecutiveRoadStage {month=5, day=16, start=bari, finish=campobasso, distance=256.0}
                 , NonConsecutiveRoadStage {month=5, day=18, start=campobasso, finish=ascoliPiceno, distance=313.2}
                 , NonConsecutiveRoadStage {month=5, day=20, start=ascoliPiceno, finish=rovigo, distance=413.8}
                 , NonConsecutiveRoadStage {month=5, day=22, start=rovigo, finish=milan, distance=321.5}
                 ]

giro1914Stages :: [NonConsecutiveStage]
giro1914Stages = [ NonConsecutiveRoadStage {month=5, day=24, start=milan, finish=cuneo, distance=420.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=cuneo, finish=lucca, distance=340.5}
                 , NonConsecutiveRoadStage {month=5, day=28, start=lucca, finish=rome, distance=430.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=rome, finish=avellino, distance=365.4}
                 , NonConsecutiveRoadStage {month=6, day=1, start=avellino, finish=bari, distance=328.7}
                 , NonConsecutiveRoadStage {month=6, day=3, start=bari, finish=l'Aquila, distance=428.0}
                 , NonConsecutiveRoadStage {month=6, day=5, start=l'Aquila, finish=lugo, distance=429.1}
                 , NonConsecutiveRoadStage {month=6, day=7, start=lugo, finish=milan, distance=420.3}
                 ]

giro1919Stages :: [NonConsecutiveStage]
giro1919Stages = [ NonConsecutiveRoadStage {month=5, day=21, start=milan, finish=trento, distance=302.8}
                 , NonConsecutiveRoadStage {month=5, day=23, start=trento, finish=trieste, distance=334.3}
                 , NonConsecutiveRoadStage {month=5, day=25, start=trieste, finish=ferrara, distance=282.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=ferrara, finish=pescara, distance=411.2}
                 , NonConsecutiveRoadStage {month=5, day=29, start=pescara, finish=naples, distance=312.5}
                 , NonConsecutiveRoadStage {month=5, day=31, start=naples, finish=rome, distance=203.8}
                 , NonConsecutiveRoadStage {month=6, day=2, start=rome, finish=florence, distance=350.8}
                 , NonConsecutiveRoadStage {month=6, day=4, start=florence, finish=genoa, distance=261.8}
                 , NonConsecutiveRoadStage {month=6, day=6, start=genoa, finish=turin, distance=248.0}
                 , NonConsecutiveRoadStage {month=6, day=8, start=turin, finish=milan, distance=277.0}
                 ]

giro1920Stages :: [NonConsecutiveStage]
giro1920Stages = [ NonConsecutiveRoadStage {month=5, day=23, start=milan, finish=turin, distance=348.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=turin, finish=lucca, distance=378.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=lucca, finish=rome, distance=386.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=rome, finish=chieti, distance=234.0}
                 , NonConsecutiveRoadStage {month=5, day=31, start=chieti, finish=macerata, distance=236.0}
                 , NonConsecutiveRoadStage {month=6, day=2, start=macerata, finish=bologna, distance=282.0}
                 , NonConsecutiveRoadStage {month=6, day=4, start=bologna, finish=trieste, distance=349.0}
                 , NonConsecutiveRoadStage {month=6, day=6, start=trieste, finish=milan, distance=421.0}
                 ]

giro1921Stages :: [NonConsecutiveStage]
giro1921Stages = [ NonConsecutiveRoadStage {month=5, day=25, start=milan, finish=merano, distance=333.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=merano, finish=bologna, distance=348.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=bologna, finish=perugia, distance=321.0}
                 , NonConsecutiveRoadStage {month=5, day=31, start=perugia, finish=chieti, distance=328.0}
                 , NonConsecutiveRoadStage {month=6, day=2, start=chieti, finish=naples, distance=264.0}
                 , NonConsecutiveRoadStage {month=6, day=4, start=naples, finish=rome, distance=299.0}
                 , NonConsecutiveRoadStage {month=6, day=6, start=rome, finish=livorno, distance=341.0}
                 , NonConsecutiveRoadStage {month=6, day=8, start=livorno, finish=parma, distance=242.0}
                 , NonConsecutiveRoadStage {month=6, day=10, start=parma, finish=turin, distance=320.0}
                 , NonConsecutiveRoadStage {month=6, day=12, start=turin, finish=milan, distance=305.0}
                 ]

giro1922Stages :: [NonConsecutiveStage]
giro1922Stages = [ NonConsecutiveRoadStage {month=5, day=24, start=milan, finish=padua, distance=326.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=padua, finish=portorose, distance=268.0}
                 , NonConsecutiveRoadStage {month=5, day=28, start=portorose, finish=bologna, distance=375.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=bologna, finish=pescara, distance=367.0}
                 , NonConsecutiveRoadStage {month=6, day=1, start=pescara, finish=naples, distance=267.0}
                 , NonConsecutiveRoadStage {month=6, day=3, start=naples, finish=rome, distance=254.0}
                 , NonConsecutiveRoadStage {month=6, day=5, start=rome, finish=florence, distance=319.0}
                 , NonConsecutiveRoadStage {month=6, day=7, start=florence, finish=santaMargheritaLigure, distance=292.0}
                 , NonConsecutiveRoadStage {month=6, day=9, start=genoa, finish=turin, distance=277.0}
                 , NonConsecutiveRoadStage {month=6, day=11, start=turin, finish=milan, distance=348.0}
                 ]

giro1923Stages :: [NonConsecutiveStage]
giro1923Stages = [ NonConsecutiveRoadStage {month=5, day=23, start=milan, finish=turin, distance=328.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=turin, finish=genoa, distance=312.9}
                 , NonConsecutiveRoadStage {month=5, day=27, start=genoa, finish=florence, distance=265.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=florence, finish=rome, distance=288.7}
                 , NonConsecutiveRoadStage {month=5, day=31, start=rome, finish=naples, distance=281.5}
                 , NonConsecutiveRoadStage {month=6, day=2, start=naples, finish=chieti, distance=283.1}
                 , NonConsecutiveRoadStage {month=6, day=4, start=chieti, finish=bologna, distance=383.0}
                 , NonConsecutiveRoadStage {month=6, day=6, start=bologna, finish=trieste, distance=362.2}
                 , NonConsecutiveRoadStage {month=6, day=8, start=trieste, finish=mantua, distance=357.0}
                 , NonConsecutiveRoadStage {month=6, day=10, start=mantua, finish=milan, distance=341.3}
                 ]

giro1924Stages :: [NonConsecutiveStage]
giro1924Stages = [ NonConsecutiveRoadStage {month=5, day=10, start=milan, finish=genoa, distance=300.3}
                 , NonConsecutiveRoadStage {month=5, day=12, start=genoa, finish=florence, distance=307.9}
                 , NonConsecutiveRoadStage {month=5, day=14, start=florence, finish=rome, distance=284.4}
                 , NonConsecutiveRoadStage {month=5, day=16, start=rome, finish=naples, distance=249.3}
                 , NonConsecutiveRoadStage {month=5, day=18, start=potenza, finish=taranto, distance=265.3}
                 , NonConsecutiveRoadStage {month=5, day=20, start=taranto, finish=foggia, distance=230.3}
                 , NonConsecutiveRoadStage {month=5, day=22, start=foggia, finish=l'Aquila, distance=304.3}
                 , NonConsecutiveRoadStage {month=5, day=24, start=l'Aquila, finish=perugia, distance=296.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=perugia, finish=bologna, distance=280.7}
                 , NonConsecutiveRoadStage {month=5, day=28, start=bologna, finish=fiume, distance=415.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=fiume, finish=verona, distance=366.5}
                 , NonConsecutiveRoadStage {month=6, day=1, start=verona, finish=milan, distance=313.0}
                 ]

giro1925Stages :: [NonConsecutiveStage]
giro1925Stages = [ NonConsecutiveRoadStage {month=5, day=16, start=milan, finish=turin, distance=278.1}
                 , NonConsecutiveRoadStage {month=5, day=18, start=turin, finish=arenzano, distance=279.2}
                 , NonConsecutiveRoadStage {month=5, day=20, start=arenzano, finish=pisa, distance=315.0}
                 , NonConsecutiveRoadStage {month=5, day=22, start=pisa, finish=rome, distance=337.1}
                 , NonConsecutiveRoadStage {month=5, day=24, start=rome, finish=naples, distance=260.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=naples, finish=bari, distance=314.2}
                 , NonConsecutiveRoadStage {month=5, day=28, start=bari, finish=benevento, distance=234.9}
                 , NonConsecutiveRoadStage {month=5, day=30, start=benevento, finish=sulmona, distance=275.0}
                 , NonConsecutiveRoadStage {month=6, day=1, start=sulmona, finish=arezzo, distance=376.8}
                 , NonConsecutiveRoadStage {month=6, day=3, start=arezzo, finish=forli, distance=224.3}
                 , NonConsecutiveRoadStage {month=6, day=5, start=forli, finish=verona, distance=318.0}
                 , NonConsecutiveRoadStage {month=6, day=7, start=verona, finish=milan, distance=307.9}
                 ]

giro1926Stages :: [NonConsecutiveStage]
giro1926Stages = [ NonConsecutiveRoadStage {month=5, day=15, start=milan, finish=turin, distance=275.0}
                 , NonConsecutiveRoadStage {month=5, day=17, start=turin, finish=genoa, distance=250.5}
                 , NonConsecutiveRoadStage {month=5, day=19, start=genoa, finish=florence, distance=312.0}
                 , NonConsecutiveRoadStage {month=5, day=21, start=florence, finish=rome, distance=287.2}
                 , NonConsecutiveRoadStage {month=5, day=23, start=rome, finish=naples, distance=232.1}
                 , NonConsecutiveRoadStage {month=5, day=25, start=naples, finish=foggia, distance=262.9}
                 , NonConsecutiveRoadStage {month=5, day=27, start=foggia, finish=sulmona, distance=250.8}
                 , NonConsecutiveRoadStage {month=5, day=29, start=sulmona, finish=terni, distance=266.5}
                 , NonConsecutiveRoadStage {month=5, day=31, start=terni, finish=bologna, distance=357.8}
                 , NonConsecutiveRoadStage {month=6, day=2, start=bologna, finish=udine, distance=355.2}
                 , NonConsecutiveRoadStage {month=6, day=4, start=udine, finish=verona, distance=291.7}
                 , NonConsecutiveRoadStage {month=6, day=6, start=verona, finish=milan, distance=288.0}
                 ]

giro1927Stages :: [NonConsecutiveStage]
giro1927Stages = [ NonConsecutiveRoadStage {month=5, day=15, start=milan, finish=turin, distance=288.0}
                 , NonConsecutiveRoadStage {month=5, day=17, start=turin, finish=reggioEmilia, distance=321.0}
                 , NonConsecutiveRoadStage {month=5, day=19, start=reggioEmilia, finish=lucca, distance=207.0}
                 , NonConsecutiveRoadStage {month=5, day=21, start=lucca, finish=grosseto, distance=240.0}
                 , NonConsecutiveRoadStage {month=5, day=22, start=grosseto, finish=rome, distance=257.6}
                 , NonConsecutiveRoadStage {month=5, day=23, start=rome, finish=naples, distance=256.8}
                 , NonConsecutiveRoadStage {month=5, day=24, start=naples, finish=avellino, distance=153.4}
                 , NonConsecutiveRoadStage {month=5, day=26, start=avellino, finish=bari, distance=271.8}
                 , NonConsecutiveRoadStage {month=5, day=27, start=bari, finish=campobasso, distance=243.6}
                 , NonConsecutiveRoadStage {month=5, day=29, start=campobasso, finish=pescara, distance=220.2}
                 , NonConsecutiveRoadStage {month=5, day=30, start=pescara, finish=pesaro, distance=218.0}
                 , NonConsecutiveRoadStage {month=6, day=1, start=pesaro, finish=treviso, distance=305.6}
                 , NonConsecutiveRoadStage {month=6, day=2, start=treviso, finish=trieste, distance=208.2}
                 , NonConsecutiveRoadStage {month=6, day=4, start=trieste, finish=verona, distance=275.6}
                 , NonConsecutiveRoadStage {month=6, day=6, start=verona, finish=milan, distance=291.5}
                 ]

giro1928Stages :: [NonConsecutiveStage]
giro1928Stages = [ NonConsecutiveRoadStage {month=5, day=12, start=milan, finish=trento, distance=233.1}
                 , NonConsecutiveRoadStage {month=5, day=14, start=trento, finish=forli, distance=312.6}
                 , NonConsecutiveRoadStage {month=5, day=16, start=predappio, finish=arezzo, distance=148.0}
                 , NonConsecutiveRoadStage {month=5, day=18, start=arezzo, finish=sulmona, distance=327.9}
                 , NonConsecutiveRoadStage {month=5, day=20, start=sulmona, finish=foggia, distance=254.6}
                 , NonConsecutiveRoadStage {month=5, day=22, start=foggia, finish=naples, distance=248.3}
                 , NonConsecutiveRoadStage {month=5, day=24, start=naples, finish=rome, distance=275.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=rome, finish=pistoia, distance=323.0}
                 , NonConsecutiveRoadStage {month=5, day=28, start=pistoia, finish=modena, distance=206.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=modena, finish=genoa, distance=270.0}
                 , NonConsecutiveRoadStage {month=6, day=1, start=genoa, finish=turin, distance=195.1}
                 , NonConsecutiveRoadStage {month=6, day=3, start=turin, finish=milan, distance=251.0}
                 ]

giro1929Stages :: [NonConsecutiveStage]
giro1929Stages = [ NonConsecutiveRoadStage {month=5, day=19, start=rome, finish=naples, distance=235.0}
                 , NonConsecutiveRoadStage {month=5, day=21, start=naples, finish=foggia, distance=185.0}
                 , NonConsecutiveRoadStage {month=5, day=23, start=foggia, finish=lecce, distance=282.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=lecce, finish=potenza, distance=270.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=potenza, finish=cosenza, distance=264.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=cosenza, finish=salerno, distance=295.0}
                 , NonConsecutiveRoadStage {month=5, day=31, start=salerno, finish=formia, distance=220.0}
                 , NonConsecutiveRoadStage {month=6, day=2, start=formia, finish=rome, distance=198.0}
                 , NonConsecutiveRoadStage {month=6, day=3, start=rome, finish=orvieto, distance=120.0}
                 , NonConsecutiveRoadStage {month=6, day=4, start=orvieto, finish=siena, distance=150.0}
                 , NonConsecutiveRoadStage {month=6, day=5, start=siena, finish=laSpezia, distance=192.0}
                 , NonConsecutiveRoadStage {month=6, day=7, start=laSpezia, finish=parma, distance=135.0}
                 , NonConsecutiveRoadStage {month=6, day=8, start=parma, finish=alessandria, distance=152.0}
                 , NonConsecutiveRoadStage {month=6, day=9, start=alessandria, finish=milan, distance=216.0}
                 ]

giro1930Stages :: [NonConsecutiveStage]
giro1930Stages = [ NonConsecutiveRoadStage {month=5, day=17, start=messina, finish=catania, distance=174.0}
                 , NonConsecutiveRoadStage {month=5, day=18, start=catania, finish=palermo, distance=280.0}
                 , NonConsecutiveRoadStage {month=5, day=20, start=palermo, finish=messina, distance=257.0}
                 , NonConsecutiveRoadStage {month=5, day=22, start=reggioCalabria, finish=catanzaro, distance=173.0}
                 , NonConsecutiveRoadStage {month=5, day=23, start=catanzaro, finish=cosenza, distance=118.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=cosenza, finish=salerno, distance=292.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=salerno, finish=naples, distance=180.0}
                 , NonConsecutiveRoadStage {month=5, day=28, start=naples, finish=rome, distance=247.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=rome, finish=teramo, distance=203.0}
                 , NonConsecutiveRoadStage {month=5, day=31, start=teramo, finish=ancona, distance=185.0}
                 , NonConsecutiveRoadStage {month=6, day=2, start=ancona, finish=forli, distance=182.0}
                 , NonConsecutiveRoadStage {month=6, day=3, start=forli, finish=rovigo, distance=188.0}
                 , NonConsecutiveRoadStage {month=6, day=5, start=rovigo, finish=asiago, distance=150.0}
                 , NonConsecutiveRoadStage {month=6, day=6, start=asiago, finish=brescia, distance=186.0}
                 , NonConsecutiveRoadStage {month=6, day=8, start=brescia, finish=milan, distance=280.0}
                 ]

giro1931Stages :: [NonConsecutiveStage]
giro1931Stages = [ NonConsecutiveRoadStage {month=5, day=10, start=milan, finish=mantua, distance=206.0}
                 , NonConsecutiveRoadStage {month=5, day=11, start=mantua, finish=ravenna, distance=216.0}
                 , NonConsecutiveRoadStage {month=5, day=13, start=ravenna, finish=macerata, distance=288.0}
                 , NonConsecutiveRoadStage {month=5, day=15, start=macerata, finish=pescara, distance=234.0}
                 , NonConsecutiveRoadStage {month=5, day=17, start=pescara, finish=naples, distance=282.0}
                 , NonConsecutiveRoadStage {month=5, day=19, start=naples, finish=rome, distance=256.0}
                 , NonConsecutiveRoadStage {month=5, day=21, start=rome, finish=perugia, distance=247.0}
                 , NonConsecutiveRoadStage {month=5, day=23, start=perugia, finish=montecatiniTerme, distance=246.0}
                 , NonConsecutiveRoadStage {month=5, day=25, start=montecatiniTerme, finish=genoa, distance=248.0}
                 , NonConsecutiveRoadStage {month=5, day=27, start=genoa, finish=cuneo, distance=263.0}
                 , NonConsecutiveRoadStage {month=5, day=29, start=cuneo, finish=turin, distance=252.0}
                 , NonConsecutiveRoadStage {month=5, day=31, start=turin, finish=milan, distance=263.0}
                 ]

giro1932Stages :: [NonConsecutiveStage]
giro1932Stages = [ NonConsecutiveRoadStage {month=5, day=14, start=milan, finish=vicenza, distance=207.0}
                 , NonConsecutiveRoadStage {month=5, day=15, start=vicenza, finish=udine, distance=183.0}
                 , NonConsecutiveRoadStage {month=5, day=17, start=udine, finish=ferrara, distance=225.0}
                 , NonConsecutiveRoadStage {month=5, day=18, start=ferrara, finish=rimini, distance=215.0}
                 , NonConsecutiveRoadStage {month=5, day=20, start=rimini, finish=teramo, distance=286.0}
                 , NonConsecutiveRoadStage {month=5, day=22, start=teramo, finish=lanciano, distance=220.0}
                 , NonConsecutiveRoadStage {month=5, day=24, start=lanciano, finish=foggia, distance=280.0}
                 , NonConsecutiveRoadStage {month=5, day=26, start=foggia, finish=naples, distance=217.0}
                 , NonConsecutiveRoadStage {month=5, day=28, start=naples, finish=rome, distance=265.0}
                 , NonConsecutiveRoadStage {month=5, day=30, start=rome, finish=florence, distance=321.0}
                 , NonConsecutiveRoadStage {month=6, day=1, start=florence, finish=genoa, distance=276.0}
                 , NonConsecutiveRoadStage {month=6, day=3, start=genoa, finish=turin, distance=267.0}
                 , NonConsecutiveRoadStage {month=6, day=5, start=turin, finish=milan, distance=271.0}
                 ]

giro1909 :: StageRace
giro1909 = evalState giro1909' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1909)

giro1909' :: State NonConsecutiveStageRaceState StageRace
giro1909' = do
  nonConsecutiveStages giro1909Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1910 :: StageRace
giro1910 = evalState giro1910' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1910)

giro1910' :: State NonConsecutiveStageRaceState StageRace
giro1910' = do
  nonConsecutiveStages giro1910Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1911 :: StageRace
giro1911 = evalState giro1911' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1911)

giro1911' :: State NonConsecutiveStageRaceState StageRace
giro1911' = do
  nonConsecutiveStages giro1911Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1912 :: StageRace
giro1912 = evalState giro1912' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1912)

giro1912' :: State NonConsecutiveStageRaceState StageRace
giro1912' = do
  nonConsecutiveStages giro1912Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1913 :: StageRace
giro1913 = evalState giro1913' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1913)

giro1913' :: State NonConsecutiveStageRaceState StageRace
giro1913' = do
  nonConsecutiveStages giro1913Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1914 :: StageRace
giro1914 = evalState giro1914' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1914)

giro1914' :: State NonConsecutiveStageRaceState StageRace
giro1914' = do
  nonConsecutiveStages giro1914Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1919 :: StageRace
giro1919 = evalState giro1919' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1919)

giro1919' :: State NonConsecutiveStageRaceState StageRace
giro1919' = do
  nonConsecutiveStages giro1919Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1920 :: StageRace
giro1920 = evalState giro1920' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1920)

giro1920' :: State NonConsecutiveStageRaceState StageRace
giro1920' = do
  nonConsecutiveStages giro1920Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1921 :: StageRace
giro1921 = evalState giro1921' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1921)

giro1921' :: State NonConsecutiveStageRaceState StageRace
giro1921' = do
  nonConsecutiveStages giro1921Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1922 :: StageRace
giro1922 = evalState giro1922' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1922)

giro1922' :: State NonConsecutiveStageRaceState StageRace
giro1922' = do
  nonConsecutiveStages giro1922Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1923 :: StageRace
giro1923 = evalState giro1923' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1923)

giro1923' :: State NonConsecutiveStageRaceState StageRace
giro1923' = do
  nonConsecutiveStages giro1923Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1924 :: StageRace
giro1924 = evalState giro1924' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1924)

giro1924' :: State NonConsecutiveStageRaceState StageRace
giro1924' = do
  nonConsecutiveStages giro1924Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1925 :: StageRace
giro1925 = evalState giro1925' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1925)

giro1925' :: State NonConsecutiveStageRaceState StageRace
giro1925' = do
  nonConsecutiveStages giro1925Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1926 :: StageRace
giro1926 = evalState giro1926' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1926)

giro1926' :: State NonConsecutiveStageRaceState StageRace
giro1926' = do
  nonConsecutiveStages giro1926Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1927 :: StageRace
giro1927 = evalState giro1927' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1927)

giro1927' :: State NonConsecutiveStageRaceState StageRace
giro1927' = do
  nonConsecutiveStages giro1927Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1928 :: StageRace
giro1928 = evalState giro1928' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1928)

giro1928' :: State NonConsecutiveStageRaceState StageRace
giro1928' = do
  nonConsecutiveStages giro1928Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1929 :: StageRace
giro1929 = evalState giro1929' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1929)

giro1929' :: State NonConsecutiveStageRaceState StageRace
giro1929' = do
  nonConsecutiveStages giro1929Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1930 :: StageRace
giro1930 = evalState giro1930' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1930)

giro1930' :: State NonConsecutiveStageRaceState StageRace
giro1930' = do
  nonConsecutiveStages giro1930Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1931 :: StageRace
giro1931 = evalState giro1931' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1931)

giro1931' :: State NonConsecutiveStageRaceState StageRace
giro1931' = do
  nonConsecutiveStages giro1931Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1932 :: StageRace
giro1932 = evalState giro1932' (ParcoursDB.State.NonConsecutiveStageRace.init (Giro []) 1932)

giro1932' :: State NonConsecutiveStageRaceState StageRace
giro1932' = do
  nonConsecutiveStages giro1932Stages
  edition <- ParcoursDB.State.NonConsecutiveStageRace.build
  return edition

giro1933 :: StageRace
giro1933 = evalState giro1933' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1933 5 6))

giro1933' :: State StageRaceState StageRace
giro1933' = do
  -- Stage 1
  plainStage milan turin 169.0

  -- Stage 2
  plainStage turin genoa 216.0

  -- Stage 3
  plainStage genoa pisa 191.0

  transferDay

  -- Stage 4
  plainStage pisa florence 184.0

  -- Stage 5
  plainStage florence grosseto 193.0

  -- Stage 6
  plainStage grosseto rome 212.0

  transferDay

  -- Stage 7
  plainStage rome naples 228.0

  -- Stage 8
  plainStage naples foggia 195.0

  transferDay

  -- Stage 9
  plainStage foggia chieti 248.0

  -- Stage 10
  plainStage chieti ascoliPiceno 158.0

  transferDay

  -- Stage 11
  plainStage ascoliPiceno riccione 208.0

  -- Stage 12
  plainStage riccione bologna 189.0

  -- Stage 13
  individualTimeTrial bologna ferrara 62.0

  transferDay

  -- Stage 14
  plainStage ferrara udine 242.0

  -- Stage 15
  plainStage udine bassanoDelGrappa 213.0

  -- Stage 16
  plainStage bassanoDelGrappa bolzano 148.0

  transferDay

  -- Stage 17
  plainStage bolzano milan 284.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1934 :: StageRace
giro1934 = evalState giro1934' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1934 5 19))

giro1934' :: State StageRaceState StageRace
giro1934' = do
  -- Stage 1
  plainStage milan turin 169.2

  -- Stage 2
  plainStage turin genoa 206.5

  transferDay

  -- Stage 3
  plainStage genoa livorno 220.5

  -- Stage 4
  individualTimeTrial livorno pisa 45.0

  -- Stage 5
  plainStage pisa rome 333.0

  transferDay

  -- Stage 6
  plainStage rome naples 228.0

  -- Stage 7
  plainStage naples bari 339.0

  transferDay

  -- Stage 8
  plainStage bari campobasso 245.0

  -- Stage 9
  plainStage campobasso teramo 283.0

  -- Stage 10
  plainStage teramo ancona 214.0

  transferDay

  -- Stage 11
  plainStage ancona rimini 213.0

  -- Stage 12
  plainStage rimini florence 176.5

  -- Stage 13
  plainStage florence bologna 120.0

  transferDay

  -- Stage 14
  individualTimeTrial bologna ferrara 59.0

  -- Stage 15
  plainStage ferrara trieste 273.0

  -- Stage 16
  plainStage trieste bassanoDelGrappa 273.0

  transferDay

  -- Stage 17
  plainStage bassanoDelGrappa milan 315.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1935 :: StageRace
giro1935 = evalState giro1935' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1935 5 18))

giro1935' :: State StageRaceState StageRace
giro1935' = do
  -- Stage 1
  plainStage milan cremona 165.0

  -- Stage 2
  plainStage cremona mantua 175.0

  -- Stage 3
  plainStage mantua rovigo 162.0

  -- Stage 4
  plainStage rovigo cesenatico 140.0

  -- Stages 5a & 5b
  enableSplitStages
  individualTimeTrial cesena riccione 35.0
  plainStage riccione portocivitanova 136.0
  disableSplitStages

  transferDay

  -- Stage 6
  plainStage portocivitanova l'Aquila 171.0

  -- Stage 7
  plainStage l'Aquila lanciano 146.0

  -- Stage 8
  plainStage lanciano bari 308.0

  transferDay

  -- Stage 9
  plainStage bari naples 333.0

  transferDay

  -- Stage 10
  plainStage naples rome 250.0

  -- Stage 11
  plainStage rome florence 317.0

  transferDay

  -- Stage 12
  plainStage florence montecatiniTerme 134.0

  -- Stages 13a & 13b
  enableSplitStages
  plainStage montecatiniTerme lucca 99.0
  individualTimeTrial lucca viareggio 55.0
  disableSplitStages

  -- Stage 14
  plainStage viareggio genoa 172.0

  transferDay

  -- Stage 15
  plainStage genoa cuneo 148.0

  -- Stage 16
  plainStage cuneo asti 91.0

  -- Stage 17
  plainStage asti turin 250.0

  -- Stage 18
  plainStage turin milan 290.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1936 :: StageRace
giro1936 = evalState giro1936' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1936 5 16))

giro1936' :: State StageRaceState StageRace
giro1936' = do
  -- Stage 1
  plainStage milan turin 161.0

  -- Stage 2
  plainStage turin genoa 206.0

  -- Stage 3
  plainStage genoa montecatiniTerme 206.0

  transferDay

  -- Stage 4
  plainStage montecatiniTerme grosseto 220.0

  -- Stage 5
  plainStage grosseto rome 248.0

  transferDay

  -- Stage 6
  plainStage rome naples 230.0

  -- Stage 7
  plainStage naples bari 283.0

  transferDay

  -- Stage 8
  plainStage bari campobasso 243.0

  -- Stage 9
  plainStage campobasso l'Aquila 204.0

  -- Stage 10
  plainStage l'Aquila rieti 117.0

  -- Stage 11
  individualTimeTrial rieti monteTerminillo 20.0

  -- Stage 12
  plainStage rieti florence 292.0

  -- Stage 13
  plainStage florence cesenatico 139.0

  -- Stage 14
  plainStage cesenatico ferrara 155.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage ferrara padua 106.0
  individualTimeTrial padua venice 39.0
  disableSplitStages

  transferDay

  -- Stage 16
  plainStage venice legnago 183.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage legnago rivaDelGarda 139.0
  plainStage rivaDelGarda gardoneRiviera 100.0
  disableSplitStages

  -- Stage 18
  plainStage gardoneRiviera salsomaggioreTerme 206.0

  -- Stage 19
  plainStage salsomaggioreTerme milan 248.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1937 :: StageRace
giro1937 = evalState giro1937' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1937 5 8))

giro1937' :: State StageRaceState StageRace
giro1937' = do
  -- Stage 1
  plainStage milan turin 165.0

  -- Stage 2
  plainStage turin acquiTerme 148.0

  -- Stage 3
  plainStage acquiTerme genoa 158.0

  -- Stage 4
  plainStage genoa viareggio 186.0

  -- Stages 5a & 5b
  enableSplitStages
  teamTimeTrial viareggio marinaDiMassa 60.0
  plainStage marinaDiMassa livorno 114.0
  disableSplitStages

  transferDay

  -- Stage 6
  plainStage livorno arezzo 190.0

  -- Stage 7
  plainStage arezzo rieti 206.0

  -- Stages 8a & 8b
  enableSplitStages
  individualTimeTrial rieti monteTerminillo 20.0
  plainStage rieti rome 152.0
  disableSplitStages

  -- Stage 9
  plainStage rome naples 250.0

  transferDay

  -- Stage 10
  plainStage naples foggia 166.0

  -- Stages 11a & 11b
  enableSplitStages
  plainStage foggia sanSevero 186.0
  plainStage sanSevero campobasso 105.0
  disableSplitStages

  -- Stage 12
  plainStage campobasso pescara 258.0

  -- Stage 13
  plainStage pescara ancona 194.0

  -- Stage 14
  plainStage ancona forli 178.0

  transferDay

  -- Stage 15
  plainStage forli vittorioVeneto 266.0

  -- Stage 16
  plainStage vittorioVeneto merano 227.0

  -- Stage 17
  plainStage merano gardoneRiviera 190.0

  transferDay

  -- Stage 18
  plainStage gardoneRiviera sanPellegrinoTerme 129.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage sanPellegrinoTerme como 151.0
  plainStage como milan 141.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1938 :: StageRace
giro1938 = evalState giro1938' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1938 5 7))

giro1938' :: State StageRaceState StageRace
giro1938' = do
  -- Stage 1
  plainStage milan turin 182.0

  -- Stage 2
  plainStage turin sanRemo 204.0

  -- Stage 3
  plainStage sanRemo santaMargheritaLigure 172.0

  -- Stages 4a & 4b
  enableSplitStages
  plainStage santaMargheritaLigure laSpezia 81.0
  plainStage laSpezia montecatiniTerme 110.0
  disableSplitStages

  transferDay

  -- Stage 5
  plainStage montecatiniTerme chiancianoTerme 184.0

  -- Stage 6
  plainStage chiancianoTerme rieti 160.0

  -- Stages 7a & 7b
  enableSplitStages
  individualTimeTrial rieti monteTerminillo 19.8
  plainStage rieti rome 152.0
  disableSplitStages

  -- Stage 8
  plainStage rome naples 234.0

  transferDay

  -- Stage 9
  plainStage naples lanciano 221.0

  -- Stage 10
  plainStage lanciano ascoliPiceno 149.0

  -- Stage 11
  plainStage ascoliPiceno ravenna 268.0

  -- Stage 12
  plainStage ravenna treviso 199.0

  transferDay

  -- Stage 13
  plainStage treviso trieste 207.0

  -- Stage 14
  plainStage trieste belluno 243.0

  transferDay

  -- Stage 15
  plainStage belluno recoaroTerme 154.0

  transferDay

  -- Stage 16
  plainStage recoaroTerme bergamo 272.0

  -- Stage 17
  plainStage bergamo varese 154.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage varese locarno 100.0
  plainStage locarno milan 180.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1939 :: StageRace
giro1939 = evalState giro1939' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1939 4 28))

giro1939' :: State StageRaceState StageRace
giro1939' = do
  -- Stage 1
  plainStage milan turin 180.0

  -- Stage 2
  plainStage turin genoa 226.7

  -- Stage 3
  plainStage genoa pisa 187.0

  -- Stage 4
  plainStage pisa grosseto 154.0

  -- Stage 5
  plainStage grosseto rome 222.0

  transferDay

  -- Stages 6a & 6b
  enableSplitStages
  plainStage rome rieti 85.7
  individualTimeTrial rieti monteTerminillo 14.0
  disableSplitStages

  -- Stage 7
  plainStage rieti pescara 191.3

  -- Stage 8
  plainStage pescara senigallia 177.0

  -- Stages 9a & 9b
  enableSplitStages
  plainStage senigallia forli 116.5
  plainStage forli florence 106.6
  disableSplitStages

  transferDay

  -- Stage 10
  plainStage florence bologna 120.0

  -- Stage 11
  plainStage bologna venezia 231.8

  -- Stage 12
  plainStage venezia trieste 173.8

  transferDay

  -- Stage 13
  individualTimeTrial trieste gorizia 39.8

  -- Stage 14
  plainStage gorizia cortinaD'Ampezzo 195.0

  -- Stage 15
  plainStage cortinaD'Ampezzo trento 256.2

  transferDay

  -- Stage 16
  plainStage trento sondrio 166.0

  -- Stage 17
  plainStage sondrio milan 168.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1940 :: StageRace
giro1940 = evalState giro1940' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1940 5 17))

giro1940' :: State StageRaceState StageRace
giro1940' = do
  -- Stage 1
  plainStage milan turin 180.0

  -- Stage 2
  plainStage turin genoa 226.0

  -- Stage 3
  plainStage genoa pisa 188.0

  -- Stage 4
  plainStage pisa grosseto 154.0

  -- Stage 5
  plainStage grosseto rome 224.0

  transferDay

  -- Stage 6
  plainStage rome naples 238.0

  -- Stage 7
  plainStage naples fiuggi 178.0

  -- Stage 8
  plainStage fiuggi terni 183.0

  -- Stage 9
  plainStage terni arezzo 183.0

  -- Stage 10
  plainStage arezzo florence 91.0

  transferDay

  -- Stage 11
  plainStage florence modena 184.0

  -- Stage 12
  plainStage modena ferrara 184.0

  -- Stage 13
  plainStage ferrara treviso 125.0

  -- Stage 14
  plainStage treviso abbazia 215.0

  -- Stage 15
  plainStage abbazia trieste 179.0

  transferDay

  -- Stage 16
  plainStage trieste pieveDiCadore 202.0

  -- Stage 17
  plainStage pieveDiCadore ortisei 110.0

  transferDay

  -- Stage 18
  plainStage ortisei trento 186.0

  -- Stage 19
  plainStage trento verona 149.0

  -- Stage 20
  plainStage verona milan 180.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1946 :: StageRace
giro1946 = evalState giro1946' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1946 6 15))

giro1946' :: State StageRaceState StageRace
giro1946' = do
  -- Stage 1
  plainStage milan turin 185.0

  -- Stage 2
  plainStage turin genoa 190.0

  -- Stage 3
  plainStage genoa montecatiniTerme 222.0

  transferDay

  -- Stages 4a & 4b
  enableSplitStages
  individualTimeTrial montecatiniTerme prato 30.0
  plainStage prato bologna 112.0
  disableSplitStages

  -- Stages 5a & 5b
  enableSplitStages
  plainStage bologna cesena 80.0
  plainStage cesena ancona 128.0
  disableSplitStages

  transferDay

  -- Stage 6
  plainStage ancona chieti 170.0

  -- Stage 7
  plainStage chieti naples 244.0

  transferDay

  -- Stage 8
  plainStage naples rome 226.0

  -- Stage 9
  plainStage rome perugia 191.0

  -- Stage 10
  plainStage perugia florence 165.0

  transferDay

  -- Stage 11
  plainStage florence rovigo 245.0

  -- Stage 12
  plainStage rovigo trieste 132.0

  transferDay

  -- Stage 13
  plainStage udine auronzoDiCadore 124.5

  -- Stage 14
  plainStage auronzoDiCadore bassanoDelGrappa 203.0

  transferDay

  -- Stage 15
  plainStage bassanoDelGrappa trento 186.0

  -- Stages 16a & 16b
  enableSplitStages
  plainStage trento verona 90.0
  plainStage verona mantua 72.0
  disableSplitStages

  -- Stage 17
  plainStage mantua milan 176.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1947 :: StageRace
giro1947 = evalState giro1947' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1947 5 24))

giro1947' :: State StageRaceState StageRace
giro1947' = do
  -- Stage 1
  plainStage milan turin 190.0

  -- Stage 2
  plainStage turin genoa 206.0

  -- Stage 3
  plainStage genoa reggioEmilia 220.0

  -- Stage 4
  plainStage reggioEmilia prato 190.0

  transferDay

  -- Stages 5a & 5b
  enableSplitStages
  plainStage prato bagniDiCascianaTerme 84.0
  plainStage bagniDiCascianaTerme florence 141.0
  disableSplitStages

  -- Stage 6
  plainStage florence perugia 161.0

  -- Stage 7
  plainStage perugia rome 240.0

  -- Stage 8
  plainStage rome naples 231.0

  transferDay

  -- Stage 9
  plainStage naples bari 288.0

  -- Stage 10
  plainStage bari foggia 288.0

  -- Stage 11
  plainStage foggia pescara 223.0

  transferDay

  -- Stage 12
  plainStage pescara cesenatico 267.0

  -- Stage 13
  plainStage cesenatico padua 175.0

  -- Stage 14
  plainStage padua vittorioVeneto 132.0

  -- Stage 15
  plainStage vittorioVeneto pieveDiCadore 200.0

  transferDay

  -- Stage 16
  plainStage pieveDiCadore trento 194.0

  -- Stage 17
  plainStage trento bresciaSant'Eufemia 114.0

  -- Stage 18
  plainStage bresciaSant'Eufemia lugano 180.0

  -- Stage 19
  plainStage lugano milan 278.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1948 :: StageRace
giro1948 = evalState giro1948' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1948 5 15))

giro1948' :: State StageRaceState StageRace
giro1948' = do
  -- Stage 1
  plainStage milan turin 190.0

  -- Stage 2
  plainStage turin genoa 226.0

  -- Stage 3
  plainStage genoa parma 243.0

  -- Stage 4
  plainStage parma viareggio 266.0

  transferDay

  -- Stage 5
  plainStage viareggio siena 165.0

  -- Stage 6
  plainStage siena rome 256.0

  -- Stage 7
  plainStage rome pescara 230.0

  -- Stage 8
  plainStage pescara bari 347.0

  transferDay

  -- Stage 9
  plainStage bari naples 306.0

  -- Stage 10
  plainStage naples fiuggi 184.0

  -- Stage 11
  plainStage fiuggi perugia 265.0

  transferDay

  -- Stage 12
  plainStage perugia florence 169.0

  -- Stage 13
  plainStage florence bologna 194.0

  -- Stage 14
  plainStage bologna udine 278.0

  -- Stage 15
  plainStage udine auronzoDiCadore 125.0

  transferDay

  -- Stage 16
  plainStage auronzoDiCadore cortinaD'Ampezzo 90.0

  -- Stage 17
  plainStage cortinaD'Ampezzo trento 160.0

  -- Stage 18
  plainStage trento brescia 239.0

  -- Stage 19
  plainStage brescia milan 231.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1949 :: StageRace
giro1949 = evalState giro1949' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1949 5 21))

giro1949' :: State StageRaceState StageRace
giro1949' = do
  -- Stage 1
  plainStage palermo catania 261.0

  -- Stage 2
  plainStage catania messina 163.0

  -- Stage 3
  plainStage villaSanGiovanni cosenza 214.0

  -- Stage 4
  plainStage cosenza salerno 292.0

  transferDay

  -- Stage 5
  plainStage salerno naples 161.0

  -- Stage 6
  plainStage naples rome 233.0

  -- Stage 7
  plainStage rome pesaro 298.0

  -- Stage 8
  plainStage pesaro venezia 273.0

  transferDay

  -- Stage 9
  plainStage venezia udine 249.0

  -- Stage 10
  plainStage udine bassanoDelGrappa 154.0

  -- Stage 11
  plainStage bassanoDelGrappa bolzano 237.0

  transferDay

  -- Stage 12
  plainStage bolzano modena 253.0

  -- Stage 13
  plainStage modena montecatiniTerme 160.0

  -- Stage 14
  plainStage montecatiniTerme genoa 228.0

  -- Stage 15
  plainStage genoa sanRemo 136.0

  transferDay

  -- Stage 16
  plainStage sanRemo cuneo 190.0

  -- Stage 17
  plainStage cuneo pinerolo 254.0

  -- Stage 18
  individualTimeTrial pinerolo turin 65.0

  -- Stage 19
  plainStage turin milan 267.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1950 :: StageRace
giro1950 = evalState giro1950' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1950 5 24))

giro1950' :: State StageRaceState StageRace
giro1950' = do
  -- Stage 1
  plainStage milan salsomaggioreTerme 225.0

  -- Stage 2
  plainStage salsomaggioreTerme florence 245.0

  -- Stage 3
  plainStage florence livorno 148.0

  -- Stage 4
  plainStage livorno genoa 216.0

  -- Stage 5
  plainStage genoa turin 216.0

  -- Stage 6
  plainStage turin locarno 220.0

  transferDay

  -- Stage 7
  plainStage locarno brescia 293.0

  -- Stage 8
  plainStage brescia vicenza 214.0

  -- Stage 9
  plainStage vicenza bolzano 2272.0

  transferDay

  -- Stage 10
  plainStage bolzano milan 294.0

  -- Stage 11
  plainStage milan ferrara 251.0

  -- Stage 12
  plainStage ferrara rimini 144.0

  -- Stage 13
  plainStage rimini arezzo 244.0

  -- Stage 14
  plainStage arezzo perugia 185.0

  transferDay

  -- Stage 15
  plainStage perugia l'Aquila 185.0

  -- Stage 16
  plainStage l'Aquila campobasso 203.0

  -- Stage 17
  plainStage campobasso naples 167.0

  -- Stage 18
  plainStage naples rome 230.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1951 :: StageRace
giro1951 = evalState giro1951' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1951 5 19))

giro1951' :: State StageRaceState StageRace
giro1951' = do
  -- Stage 1
  plainStage milan turin 202.0

  -- Stage 2
  plainStage turin alassio 202.0

  -- Stage 3
  plainStage alassio genoa 252.0

  -- Stage 4
  plainStage genoa florence 265.0

  -- Stage 5
  plainStage florence perugia 192.0

  transferDay

  -- Stage 6
  individualTimeTrial perugia terni 81.0

  -- Stage 7
  plainStage terni rome 290.0

  -- Stage 8
  plainStage rome naples 234.0

  -- Stage 9
  plainStage naples foggia 181.0

  -- Stage 10
  plainStage foggia pescara 311.0

  transferDay

  -- Stage 11
  plainStage pescara rimini 246.0

  -- Stage 12
  individualTimeTrial rimini sanMarino 24.0

  -- Stage 13
  plainStage rimini bologna 249.0

  -- Stage 14
  plainStage bologna brescia 220.0

  -- Stage 15
  plainStage brescia venice 188.0

  -- Stage 16
  plainStage venice trieste 182.0

  transferDay

  -- Stage 17
  plainStage trieste cortinaD'Ampezzo 255.0

  -- Stage 18
  plainStage cortinaD'Ampezzo bolzano 242.0

  -- Stage 19
  plainStage bolzano saintMoritz 166.0

  -- Stage 20
  plainStage saintMoritz milan 172.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1952 :: StageRace
giro1952 = evalState giro1952' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1952 5 17))

giro1952' :: State StageRaceState StageRace
giro1952' = do
  -- Stage 1
  plainStage milan bologna 217.0

  -- Stage 2
  plainStage bologna montecatiniTerme 197.0

  -- Stage 3
  plainStage montecatiniTerme siena 205.0

  -- Stage 4
  plainStage siena rome 250.0

  transferDay

  -- Stage 5
  individualTimeTrial rome roccaDiPapa 35.0

  -- Stage 6
  plainStage rome naples 234.0

  -- Stage 7
  plainStage naples roccaraso 140.0

  -- Stage 8
  plainStage roccaraso ancona 224.0

  -- Stage 9
  plainStage ancona riccione 250.0

  -- Stage 10
  plainStage riccione venice 285.0

  transferDay

  -- Stage 11
  plainStage venice bolzano 276.0

  -- Stage 12
  plainStage bolzano bergamo 226.0

  -- Stage 13
  plainStage bergamo como 143.0

  -- Stage 14
  individualTimeTrial erba como 65.0

  -- Stage 15
  plainStage como genoa 247.0

  -- Stage 16
  plainStage genoa sanRemo 141.0

  transferDay

  -- Stage 17
  plainStage sanRemo cuneo 190.0

  -- Stage 18
  plainStage cuneo saintVincent 190.0

  -- Stage 19
  plainStage saintVincent verbania 298.0

  -- Stage 20
  plainStage verbania milan 147.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1953 :: StageRace
giro1953 = evalState giro1953' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1953 5 12))

giro1953' :: State StageRaceState StageRace
giro1953' = do
  -- Stage 1
  plainStage milan abanoTerme 263.0

  -- Stage 2
  plainStage abanoTerme rimini 278.0

  -- Stage 3
  plainStage rimini sanBenedettoDelTronto 182.0

  -- Stage 4
  plainStage sanBenedettoDelTronto roccaraso 171.0

  -- Stage 5
  plainStage roccaraso naples 149.0

  -- Stage 6
  plainStage naples rome 285.0

  -- Stages 7a & 7b
  enableSplitStages
  plainStage rome grosseto 178.0
  individualTimeTrial grosseto follonica 48.0
  disableSplitStages

  -- Stage 8
  plainStage follonica pisa 114.0

  transferDay

  -- Stage 9
  plainStage pisa modena 189.0

  -- Stage 10
  outAndBackTeamTimeTrial modena 30.0

  -- Stage 11
  plainStage modena genoa 278.0

  -- Stage 12
  plainStage genoa bordighera 256.0

  -- Stage 13
  plainStage bordighera turin 242.0

  -- Stage 14
  plainStage turin sanPellegrinoTerme 232.0

  transferDay

  -- Stage 15
  plainStage sanPellegrinoTerme rivaDelGarda 279.0

  -- Stage 16
  plainStage rivaDelGarda vicenza 166.0

  -- Stage 17
  plainStage vicenza auronzoDiCadore 186.0

  -- Stage 18
  plainStage auronzoDiCadore bolzano 164.0

  -- Stage 19
  plainStage bolzano bormio 125.0

  -- Stage 20
  plainStage bormio milan 220.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1954 :: StageRace
giro1954 = evalState giro1954' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1954 5 21))

giro1954' :: State StageRaceState StageRace
giro1954' = do
  -- Stage 1
  outAndBackTeamTimeTrial palermo 36.0

  -- Stage 2
  plainStage palermo taormina 280.0

  -- Stage 3
  plainStage reggioCalabria catanzaro 172.0

  -- Stage 4
  plainStage catanzaro bari 352.0

  transferDay

  -- Stage 5
  plainStage bari naples 279.0

  -- Stage 6
  plainStage naples l'Aquila 252.0

  -- Stage 7
  plainStage l'Aquila rome 150.0

  -- Stage 8
  plainStage rome chiancianoTerme 195.0

  -- Stage 9
  plainStage chiancianoTerme florence 180.0

  -- Stage 10
  plainStage florence cesenatico 211.0

  -- Stage 11
  plainStage cesenatico abetone 230.0

  -- Stage 12
  plainStage abetone genoa 251.0

  -- Stage 13
  plainStage genoa turin 211.0

  -- Stage 14
  plainStage turin brescia 240.0

  transferDay

  -- Stage 15
  individualTimeTrial gardoneRiviera rivaDelGarda 42.0

  -- Stage 16
  plainStage rivaDelGarda abanoTerme 131.0

  -- Stage 17
  plainStage abanoTerme padua 105.0

  -- Stage 18
  plainStage padua grado 177.0

  -- Stage 19
  mountainStage (Left grado) 247
  addCol 247 sanMartinoDiCastrozza C2

  -- Stage 20
  roadStage (Right sanMartinoDiCastrozza) (Just bolzano) 152.0

  -- Stage 21
  plainStage bolzano saintMoritz 222.0

  -- Stage 22
  plainStage saintMoritz milan 222.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1955 :: StageRace
giro1955 = evalState giro1955' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1955 5 14))

giro1955' :: State StageRaceState StageRace
giro1955' = do
  -- Stage 1
  plainStage milan turin 163.0

  -- Stage 2
  plainStage turin cannes 243.0

  -- Stage 3
  plainStage cannes sanRemo 123.0

  -- Stage 4
  plainStage sanRemo acquiTerme 192.0

  -- Stage 5
  plainStage acquiTerme genoa 170.0

  -- Stage 6
  teamTimeTrial genoa lidoD'Albaro 18.0

  -- Stage 7
  plainStage genoa viareggio 164.0

  transferDay

  -- Stage 8
  plainStage viareggio perugia 260.0

  -- Stage 9
  plainStage perugia rome 174.0

  -- Stage 10
  plainStage frascati frascati 207.0

  -- Stage 11
  plainStage rome naples 242.0

  -- Stage 12
  plainStage naples scanno 216.0

  -- Stage 13
  plainStage scanno ancona 251.0

  -- Stage 14
  plainStage ancona pinetaDiCervia 173.0

  -- Stage 15
  individualTimeTrial pinetaDiCervia ravenna 50.0

  -- Stage 16
  plainStage ravenna lidoDiJesolo 245.0

  -- Stage 17
  plainStage lidoDiJesolo trieste 150.0

  transferDay

  -- Stage 18
  plainStage trieste cortinaD'Ampezzo 236.0

  -- Stage 19
  plainStage cortinaD'Ampezzo trento 227.0

  -- Stage 20
  plainStage trento sanPellegrinoTerme 216.0

  -- Stage 21
  plainStage sanPellegrinoTerme milan 141.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1956 :: StageRace
giro1956 = evalState giro1956' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1956 5 19))

giro1956' :: State StageRaceState StageRace
giro1956' = do
  -- Stage 1
  plainStage milan alessandria 210.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage alessandria genoa 96.0
  outAndBackTeamTimeTrial circuitoDiLidoD'Albaro 12.0
  disableSplitStages

  -- Stage 3
  plainStage genoa saliceTerme 152.0

  -- Stage 4
  plainStage voghera mantua 198.0

  -- Stages 5a & 5b
  enableSplitStages
  plainStage mantua rimini 228.0
  individualTimeTrial sanMarino sanMarino 13.0
  disableSplitStages

  -- Stage 6
  plainStage rimini pescara 245.0

  -- Stage 7
  plainStage pescara campobasso 205.0

  -- Stage 8
  plainStage campobasso salerno 156.0

  transferDay

  -- Stage 9
  plainStage rome grosseto 198.0

  -- Stage 10
  plainStage grosseto livorno 230.0

  transferDay

  -- Stage 11
  individualTimeTrial livorno lucca 45.0

  -- Stage 12
  plainStage lucca bologna 168.0

  -- Stage 13
  individualTimeTrial bologna madonnaDiSanLuca 3.0

  -- Stage 14
  plainStage bologna rapallo 271.0

  -- Stage 15
  plainStage rapallo lecco 278.0

  -- Stage 16
  plainStage lecco sondrio 98.0

  transferDay

  -- Stage 17
  plainStage sondrio merano 163.0

  -- Stage 18
  plainStage merano monteBondone 242.0

  -- Stage 19
  plainStage trento sanPellegrinoTerme 191.0

  -- Stage 20
  plainStage sanPellegrinoTerme milan 113.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1957 :: StageRace
giro1957 = evalState giro1957' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1957 5 18))

giro1957' :: State StageRaceState StageRace
giro1957' = do
  -- Stage 1
  plainStage milan verona 191.0

  -- Stage 2
  individualTimeTrial verona boscoChiesanuova 28.0

  -- Stage 3
  plainStage verona ferrara 169.0

  -- Stage 4
  plainStage ferrara cattolica 190.0

  -- Stage 5
  plainStage cattolica loreto 235.0

  -- Stage 6
  plainStage loreto terni 175.0

  -- Stage 7
  plainStage terni pescara 221.0

  -- Stage 8
  plainStage pescara naples 250.0

  -- Stage 9
  plainStage naples frascati 220.0

  -- Stage 10
  plainStage rome siena 227.0

  -- Stage 11
  plainStage siena montecatiniTerme 230.0

  transferDay

  -- Stage 12
  individualTimeTrial montecatini forteDeiMarmi 58.0

  -- Stage 13
  plainStage forteDeiMarmi genoa 163.0

  -- Stage 14
  plainStage genoa saintVincent 235.0

  -- Stage 15
  plainStage saintVincent sion 134.0

  -- Stage 16
  plainStage sion campoDeiFiori 229.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage varese como 82.0
  plainStage como como 34.0
  disableSplitStages

  transferDay

  -- Stage 18
  plainStage como monteBondone 242.0

  -- Stage 19
  plainStage trento levicoTerme 199.0

  -- Stage 20
  plainStage levicoTerme abanoTerme 157.0

  -- Stage 21
  plainStage abanoTerme milan 257.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1958 :: StageRace
giro1958 = evalState giro1958' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1958 5 18))

giro1958' :: State StageRaceState StageRace
giro1958' = do
  -- Stage 1
  plainStage milan varese 178.0

  -- Stage 2
  individualTimeTrial varese comerio 26.0

  -- Stage 3
  plainStage varese saintVincent 187.0

  -- Stage 4
  plainStage saintVincent collinaDiSuperga 132.0

  -- Stage 5
  plainStage turin mondovi 193.0

  -- Stage 6
  plainStage mondovi chiavari 258.0

  -- Stage 7
  plainStage chiavari forteDeiMarmi 115.0

  transferDay

  -- Stage 8
  individualTimeTrial viareggio viareggio 59.1

  -- Stage 9
  plainStage florence viterbo 215.0

  -- Stage 10
  plainStage viterbo rome 155.0

  -- Stage 11
  plainStage rome scanno 225.0

  -- Stage 12
  plainStage scanno sanBenedettoDelTronto 211.0

  -- Stage 13
  plainStage sanBenedettoDelTronto cattolica 192.0

  -- Stage 14
  individualTimeTrial sanMarino sanMarino 12.0

  -- Stage 15
  plainStage cesena boscoChiesanuova 249.0

  -- Stage 16
  plainStage verona levicoTerme 200.0

  transferDay

  -- Stage 17
  plainStage levicoTerme bolzano 198.0

  -- Stage 18
  plainStage bolzano trento 183.0

  -- Stage 19
  plainStage trento gardoneRiviera 176.0

  -- Stage 20
  plainStage salo milan 177.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1959 :: StageRace
giro1959 = evalState giro1959' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1959 5 16))

giro1959' :: State StageRaceState StageRace
giro1959' = do
  -- Stage 1
  plainStage milan salsomaggioreTerme 135.0

  -- Stage 2
  individualTimeTrial salsomaggioreTerme salsomaggioreTerme 22.0

  -- Stage 3
  plainStage salsomaggioreTerme abetone 180.0

  -- Stage 4
  plainStage abetone arezzo 178.0

  -- Stage 5
  plainStage arezzo rome 243.0

  -- Stage 6
  plainStage rome naples 213.0

  -- Stage 7
  individualTimeTrial ercolano mountVesuvius 8.0

  -- Stage 8
  individualTimeTrial ischia ischia 31.0

  -- Stage 9
  plainStage naples vasto 206.0

  -- Stage 10
  plainStage vasto teramo 148.0

  -- Stage 11
  plainStage ascoliPiceno rimini 245.0

  -- Stage 12
  plainStage rimini sanMarino 141.0

  transferDay

  -- Stage 13
  plainStage rimini verona 233.0

  -- Stage 14
  plainStage verona rovereto 143.0

  -- Stage 15
  plainStage trento bolzano 198.0

  -- Stage 16
  plainStage bolzano sanPellegrinoTerme 245.0

  -- Stage 17
  plainStage sanPellegrinoTerme genoa 241.0

  -- Stage 18
  plainStage genoa turin 180.0

  -- Stage 19
  individualTimeTrial turin susa 51.0

  -- Stage 20
  plainStage turin saintVincent 100.0

  -- Stage 21
  plainStage aosta courmayeur 296.0

  -- Stage 22
  plainStage courmayeur milan 220.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1960 :: StageRace
giro1960 = evalState giro1960' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1960 5 19))

giro1960' :: State StageRaceState StageRace
giro1960' = do
  -- Stage 1
  plainStage rome naples 212.0

  -- Stage 2
  individualTimeTrial sorrento sorrento 25.0

  -- Stage 3
  plainStage sorrento campobasso 186.0

  -- Stage 4
  plainStage campobasso pescara 192.0

  -- Stage 5
  plainStage pescara rieti 218.0

  -- Stage 6
  plainStage terni rimini 230.0

  -- Stages 7a & 7b
  enableSplitStages
  individualTimeTrial igeaMarina igeaMarina 5.0
  plainStage bellaria forli 81.0
  disableSplitStages

  -- Stage 8
  plainStage forli livorno 206.0

  -- Stages 9a & 9b
  enableSplitStages
  plainStage livorno carrara 93.0
  individualTimeTrial carrara caveDiCarrara 2.2
  disableSplitStages

  -- Stage 10
  plainStage carrara sestriLevante 171.0

  -- Stage 11
  plainStage sestriLevante asti 180.0

  -- Stage 12
  plainStage asti cervinia 176.0

  -- Stage 13
  plainStage saintVincent milan 225.0

  transferDay

  -- Stage 14
  individualTimeTrial seregno lecco 68.0

  -- Stage 15
  plainStage lecco verona 150.0

  -- Stage 16
  plainStage verona treviso 110.0

  -- Stage 17
  plainStage treviso trieste 147.0

  -- Stage 18
  plainStage trieste belluno 240.0

  -- Stage 19
  plainStage belluno trento 110.0

  -- Stage 20
  plainStage trento bormio 229.0

  -- Stage 21
  plainStage bormio milan 225.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1961 :: StageRace
giro1961 = evalState giro1961' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1961 5 20))

giro1961' :: State StageRaceState StageRace
giro1961' = do
  -- Stage 1
  criterium turin 115.0

  -- Stage 2
  plainStage turin sanRemo 185.0

  -- Stage 3
  plainStage sanRemo genoa 149.0

  -- Stage 4
  criterium cagliari 118.0

  -- Stage 5
  plainStage marsala palermo 144.0

  transferDay

  -- Stage 6
  plainStage palermo milazzo 224.0

  -- Stage 7
  plainStage reggioCalabria cosenza 221.0

  -- Stage 8
  plainStage cosenza taranto 237.0

  -- Stage 9
  individualTimeTrial castellanaGrotte bari 53.0

  -- Stage 10
  plainStage bari potenza 140.0

  -- Stage 11
  plainStage potenza teano 252.0

  -- Stage 12
  plainStage gaeta rome 149.0

  -- Stage 13
  plainStage mentana castelfidardo 279.0

  -- Stage 14
  plainStage ancona florence 250.0

  -- Stage 15
  plainStage florence modena 178.0

  -- Stage 16
  plainStage modena vicenza 207.0

  -- Stage 17
  plainStage vicenza trieste 204.0

  transferDay

  -- Stage 18
  plainStage trieste vittorioVeneto 161.0

  -- Stage 19
  plainStage vittorioVeneto trento 249.0

  -- Stage 20
  plainStage trento bormio 275.0

  -- Stage 21
  plainStage bormio milan 214.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1962 :: StageRace
giro1962 = evalState giro1962' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1962 5 19))

giro1962' :: State StageRaceState StageRace
giro1962' = do
  -- Stage 1
  plainStage milan tabianoTerme 185.0

  -- Stage 2
  plainStage salsomaggioreTerme sestriLevante 158.0

  -- Stage 3
  plainStage sestriLevante panicaglioraMarliana 225.0

  -- Stage 4
  plainStage montecatiniTerme perugia 248.0

  -- Stage 5
  plainStage perugia rieti 258.0

  -- Stage 6
  plainStage rieti fiuggi 193.0

  -- Stage 7
  plainStage fiuggi montevergineDiMercogliano 224.0

  -- Stage 8
  plainStage avellino foggia 110.0

  -- Stage 9
  plainStage foggia chieti 205.0

  -- Stage 10
  plainStage chieti fano 218.0

  -- Stage 11
  plainStage fano castrocaroTerme 170.0

  -- Stage 12
  plainStage forli lignanoSabbiadoro 298.0

  -- Stage 13
  plainStage lignanoSabbiadoro nevegal 173.0

  transferDay

  -- Stage 14
  mountainStage (Left belluno) 160
  addCol 160 passoRolle C2

  -- Stage 15
  mountainStage (Left moena) 215
  addCol 215 aprica C3

  -- Stage 16
  roadStage (Right aprica) (Just pianDelResinelli) 123.0

  -- Stage 17
  plainStage lecco casaleMonferrato 194.0

  -- Stage 18
  plainStage casaleMonferrato frabosaSoprana 232.0

  -- Stage 19
  plainStage frabosaSoprana saintVincent 193.0

  -- Stage 20
  criterium saintVincent 238.0

  -- Stage 21
  plainStage saintVincent milan 160.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1963 :: StageRace
giro1963 = evalState giro1963' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1963 5 19))

giro1963' :: State StageRaceState StageRace
giro1963' = do
  -- Stage 1
  plainStage naples potenza 182.0

  -- Stage 2
  plainStage potenza bari 185.0

  -- Stage 3
  plainStage bari campobasso 252.0

  -- Stage 4
  plainStage campobasso pescara 213.0

  -- Stage 5
  plainStage pescara viterbo 263.0

  -- Stage 6
  plainStage bolsena arezzo 192.0

  -- Stage 7
  plainStage arezzo rioloTerme 173.0

  -- Stage 8
  plainStage rioloTerme salsomaggioreTerme 203.0

  -- Stage 9
  plainStage salsomaggioreTerme laSpezia 173.0

  -- Stage 10
  plainStage laSpezia asti 225.0

  -- Stage 11
  plainStage asti santuarioDiOropa 130.0

  -- Stage 12
  plainStage biella leukerbad 214.0

  -- Stage 13
  plainStage leukerbad saintVincent 152.0

  -- Stage 14
  plainStage saintVincent cremona 260.0

  -- Stage 15
  plainStage mantua treviso 155.0

  transferDay

  -- Stage 16
  outAndBackIndividualTimeTrial treviso 56.0

  -- Stage 17
  plainStage treviso gorizia 213.0

  -- Stage 18
  plainStage gorizia bellunoNevegal 248.0

  -- Stage 19
  plainStage belluno moena 198.0

  -- Stage 20
  plainStage moena lumezzane 240.0

  -- Stage 21
  plainStage brescia milan 136.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1964 :: StageRace
giro1964 = evalState giro1964' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1964 5 16))

giro1964' :: State StageRaceState StageRace
giro1964' = do
  -- Stage 1
  plainStage bolzano rivaDelGarda 173.0

  -- Stage 2
  plainStage rivaDelGarda brescia 146.0

  -- Stage 3
  plainStage brescia sanPellegrinoTerme 193.0

  -- Stage 4
  plainStage sanPellegrinoTerme parma 189.0

  -- Stage 5
  individualTimeTrial parma busseto 50.0

  -- Stage 6
  plainStage parma verona 100.0

  -- Stage 7
  plainStage verona lavarone 168.0

  -- Stage 8
  plainStage lavarone pedavena 183.0

  -- Stage 9
  plainStage feltre marinaDiRavenna 260.0

  -- Stage 10
  plainStage marinaDiRavenna sanMarino 135.0

  -- Stage 11
  plainStage rimini sanBenedettoDelTronto 185.0

  -- Stage 12
  plainStage sanBenedettoDelTronto roccaraso 257.0

  -- Stage 13
  plainStage roccaraso caserta 188.0

  -- Stage 14
  plainStage caserta castelGandolfo 210.0

  -- Stage 15
  plainStage rome montepulciano 214.0

  -- Stage 16
  plainStage montepulciano livorno 199.0

  -- Stage 17
  plainStage livorno santaMargheritaLigure 210.0

  transferDay

  -- Stage 18
  plainStage santaMargheritaLigure alessandria 205.0

  -- Stage 19
  plainStage alessandria cuneo 205.0

  -- Stage 20
  plainStage cuneo pinerolo 254.0

  -- Stage 21
  plainStage turin biella 200.0

  -- Stage 22
  plainStage biella milan 146.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1965 :: StageRace
giro1965 = evalState giro1965' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1965 5 15))

giro1965' :: State StageRaceState StageRace
giro1965' = do
  -- Stage 1
  plainStage sanMarino perugia 198.0

  -- Stage 2
  plainStage perugia l'Aquila 180.0

  -- Stage 3
  plainStage l'Aquila roccaDiCambio 199.0

  -- Stage 4
  plainStage roccaDiCambio benevento 239.0

  -- Stage 5
  plainStage benevento avellino 175.0

  -- Stage 6
  plainStage avellino potenza 161.0

  -- Stage 7
  plainStage potenza maratea 164.0

  -- Stage 8
  plainStage maratea catanzaro 103.0

  -- Stage 9
  plainStage catanzaro reggioCalabria 161.0

  -- Stage 10
  plainStage messina palermo 260.0

  -- Stage 11
  plainStage palermo agrigento 146.0

  -- Stage 12
  plainStage agrigento siracusa 230.0

  -- Stage 13
  individualTimeTrial catania taormina 50.0

  transferDay

  -- Stage 14
  plainStage milan noviLigure 100.0

  -- Stage 15
  plainStage noviLigure dianoMarina 223.0

  -- Stage 16
  plainStage dianoMarina turin 205.0

  -- Stage 17
  plainStage turin biandronno 163.0

  -- Stage 18
  plainStage biandronno saasFee 178.0

  -- Stage 19
  plainStage saasFee madesimo 282.0

  -- Stage 20
  mountainStage (Left madesimo) 160
  addCol 160 passoDelloStelvio C1

  -- Stage 21
  plainStage bormio brescia 179.0

  -- Stage 22
  plainStage brescia florence 295.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1966 :: StageRace
giro1966 = evalState giro1966' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1966 5 18))

giro1966' :: State StageRaceState StageRace
giro1966' = do
  -- Stage 1
  plainStage monteCarlo dianoMarina 149.0

  -- Stage 2
  plainStage imperia monesi 60.0

  -- Stage 3
  plainStage dianoMarina genoa 120.0

  -- Stage 4
  plainStage genoa viareggio 241.0

  -- Stage 5
  plainStage viareggio chiancianoTerme 222.0

  -- Stage 6
  plainStage chiancianoTerme rome 226.0

  -- Stage 7
  plainStage rome roccaDiCambio 158.0

  -- Stage 8
  plainStage roccaDiCambio naples 238.0

  -- Stage 9
  plainStage naples campobasso 210.0

  -- Stage 10
  plainStage campobasso guilianova 221.0

  -- Stage 11
  plainStage guilianova cesenatico 229.0

  -- Stage 12
  plainStage cesenatico reggioEmilia 206.0

  -- Stage 13
  outAndBackIndividualTimeTrial parma 46.0

  transferDay

  -- Stage 14
  plainStage parma arona 267.0

  -- Stage 15
  plainStage arona brescia 196.0

  -- Stage 16
  plainStage brescia bezzecca 143.0

  -- Stage 17
  plainStage rivaDelGarda levicoTerme 239.0

  -- Stage 18
  plainStage levicoTerme bolzano 137.0

  -- Stage 19
  plainStage bolzano moena 100.0

  -- Stage 20
  plainStage moena belluno 215.0

  -- Stage 21
  plainStage belluno vittorioVeneto 181.0

  -- Stage 22
  plainStage vittorioVeneto trieste 172.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1967 :: StageRace
giro1967 = evalState giro1967' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1967 5 20))

giro1967' :: State StageRaceState StageRace
giro1967' = do
  -- Stage 1
  plainStage treviglio alessandria 135.0

  -- Stage 2
  plainStage alessandria laSpezia 223.0

  -- Stage 3
  plainStage laSpezia prato 205.0

  -- Stage 4
  plainStage florence chiancianoTerme 155.0

  -- Stage 5
  plainStage rome naples 220.0

  -- Stage 6
  criterium palermo 63.0

  -- Stage 7
  plainStage catania etna 169.0

  -- Stage 8
  plainStage reggioCalabria cosenza 218.0

  -- Stage 9
  plainStage cosenza taranto 202.0

  -- Stage 10
  plainStage bari potenza 145.0

  -- Stage 11
  plainStage potenza salerno 160.0

  -- Stage 12
  plainStage caserta blockhaus 220.0

  -- Stage 13
  plainStage chieti riccione 253.0

  -- Stage 14
  plainStage riccione lidoDegliEstensi 94.0

  -- Stage 15
  plainStage lidoDegliEstensi mantua 164.0

  -- Stage 16
  individualTimeTrial mantua verona 45.0

  transferDay

  -- Stage 17
  plainStage verona vicenza 140.0

  -- Stage 18
  plainStage vicenza udine 167.0

  -- Stage 19
  plainStage udine treCimeDiLavaredo 170.0

  -- Stage 20
  plainStage cortinaD'Ampezzo trento 235.0

  -- Stage 21
  plainStage trento tirano 153.0

  -- Stages 22a & 22b
  enableSplitStages
  mountainStage (Left tirano) 137
  addCol 137 madonnaDelGhisallo C3
  roadStage (Right madonnaDelGhisallo) (Just milan) 68.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1968 :: StageRace
giro1968 = evalState giro1968' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1968 5 20))

giro1968' :: State StageRaceState StageRace
giro1968' = do
  -- Prologue
  outAndBackPrologue campioneD'Italia 5.7

  -- Stage 1
  plainStage campioneD'Italia novara 128.0

  -- Stage 2
  plainStage novara saintVincent 189.0

  -- Stage 3
  plainStage saintVincent alba 168.0

  -- Stage 4
  plainStage alba sanRemo 162.0

  -- Stage 5
  criterium sanRemo 149.0

  -- Stage 6
  plainStage sanRemo alessandria 223.0

  -- Stage 7
  plainStage alessandria piacenza 174.0

  -- Stage 8
  plainStage sanGiorgioPiacentino brescia 225.0

  -- Stage 9
  plainStage brescia lidoDiCaldonazzo 210.0

  -- Stage 10
  mountainStage (Left trento) 136
  addCol 136 monteGrappa C1

  -- Stage 11
  plainStage bassanoDelGrappa trieste 197.0

  -- Stage 12
  plainStage gorizia treCimeDiLavaredo 213.0

  -- Stage 13
  plainStage cortinaD'Ampezzo vittorioVeneto 163.0

  -- Stage 14
  plainStage vittorioVeneto marinaRomea 199.0

  -- Stage 15
  plainStage ravenna imola 141.0

  transferDay

  -- Stage 16
  individualTimeTrial cesenatico sanMarino 49.3

  -- Stage 17
  plainStage sanMarino foligno 196.0

  -- Stage 18
  plainStage foligno abbadiaSanSalvatore 166.0

  -- Stage 19
  plainStage abbadiaSanSalvatore rome 181.0

  -- Stage 20
  plainStage rome roccaDiCambio 215.0

  -- Stage 21
  plainStage roccaDiCambio blockhaus 198.0

  -- Stage 22
  plainStage chieti naples 235.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1969 :: StageRace
giro1969 = evalState giro1969' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1969 5 16))

giro1969' :: State StageRaceState StageRace
giro1969' = do
  -- Stage 1
  plainStage garda brescia 142.0

  -- Stage 2
  plainStage brescia mirandola 180.0

  -- Stage 3
  plainStage mirandola montecatiniTerme 188.0

  -- Stage 4
  outAndBackIndividualTimeTrial montecatiniTerme 21.0

  -- Stage 5
  plainStage montecatiniTerme follonica 194.0

  -- Stage 6
  plainStage follonica viterbo 198.0

  -- Stage 7
  plainStage viterbo terracina 206.0

  -- Stage 8
  plainStage terracina naples 133.0

  -- Stage 9
  plainStage naples potenza 173.0

  -- Stage 10
  plainStage potenza campitelloMatese 254.0

  -- Stage 11
  plainStage campitelloMatese scanno 165.0

  -- Stage 12
  plainStage scanno silviMarina 180.0

  -- Stage 13
  plainStage silviMarina senigallia 166.0

  -- Stage 14
  plainStage senigallia sanMarino 185.0

  -- Stage 15
  individualTimeTrial cesenatico sanMarino 49.3

  transferDay

  -- Stage 16
  plainStage parma savona 234.0

  -- Stage 17
  plainStage celleLigure pavia 182.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage pavia zingonia 115.0
  plainStage zingonia sanPellegrinoTerme 100.0
  disableSplitStages

  -- Stage 19
  plainStage sanPellegrinoTerme folgaria 248.0

  -- Stage 20
  plainStage trento marmolada 230.0

  -- Stage 21
  plainStage roccaPietore cavalese 131.0

  -- Stage 22
  plainStage cavalese folgarida 150.0

  -- Stage 23
  plainStage folgarida milan 257.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1970 :: StageRace
giro1970 = evalState giro1970' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1970 5 18))

giro1970' :: State StageRaceState StageRace
giro1970' = do
  -- Stage 1
  plainStage sanPellegrinoTerme biandronno 115.0

  -- Stage 2
  plainStage comerio saintVincent 164.0

  -- Stage 3
  plainStage saintVincent aosta 162.0

  -- Stage 4
  plainStage saintVincent lodi 205.0

  -- Stage 5
  plainStage lodi zingonia 155.0

  -- Stage 6
  plainStage zingonia malcesine 212.0

  -- Stage 7
  plainStage malcesine brentonico 130.0

  -- Stage 8
  plainStage rovereto bassanoDelGrappa 130.0

  -- Stage 9
  individualTimeTrial bassanoDelGrappa treviso 56.0

  transferDay

  -- Stage 10
  plainStage terracina rivisondoli 172.0

  -- Stage 11
  plainStage rivisondoli francavillaAlMare 180.0

  -- Stage 12
  plainStage francavillaAlMare loreto 175.0

  -- Stage 13
  plainStage loreto faenza 188.0

  -- Stage 14
  plainStage faenza cascianaTerme 218.0

  -- Stage 15
  plainStage cascianaTerme mirandola 215.0

  -- Stage 16
  plainStage mirandola lidoDiJesolo 195.0

  -- Stage 17
  plainStage lidoDiJesolo artaTerme 165.0

  -- Stage 18
  plainStage artaTerme marmolada 180.0

  -- Stage 19
  plainStage roccaPietore dobbiaco 120.0

  -- Stage 20
  plainStage dobbiaco bolzano 155.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1971 :: StageRace
giro1971 = evalState giro1971' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1971 5 20))

giro1971' :: State StageRaceState StageRace
giro1971' = do
  -- Prologue
  prologueTeamTimeTrial lecce brindisi 62.2

  -- Stage 1
  plainStage brindisi bari 175.0

  -- Stage 2
  plainStage bari potenza 260.0

  -- Stage 3
  plainStage potenza benevento 177.0

  -- Stage 4
  plainStage benevento pescasseroli 203.0

  -- Stage 5
  plainStage pescasseroli granSassoD'Italia 198.0

  -- Stage 6
  plainStage l'Aquila orvieto 163.0

  -- Stage 7
  plainStage orvieto sanVincenzo 220.0

  -- Stage 8
  plainStage sanVincenzo cascianaTerme 203.0

  -- Stage 9
  plainStage cascianaTerme forteDeiMarmi 141.0

  -- Stage 10
  criterium forteDeiMarmi 141.0

  -- Stage 11
  plainStage sestola mantua 199.0

  transferDay

  -- Stage 12
  individualTimeTrial desenzanoDelGarda sernigaDiSalo 28.0

  -- Stage 13
  plainStage salo sottomarinaDiChioggia 218.0

  -- Stage 14
  plainStage chioggia bibione 170.0

  -- Stage 15
  plainStage bibione Countries.Yugoslavia.ljubljana 201.0

  -- Stage 16
  plainStage Countries.Yugoslavia.ljubljana tarvisio 100.0

  -- Stage 17
  plainStage tarvisio grossglockner 206.0

  -- Stage 18
  plainStage lienz falcade 195.0

  -- Stage 19
  plainStage falcade ponteDiLegno 182.0

  -- Stages 20a & 20b
  enableSplitStages
  plainStage ponteDiLegno lainate 185.0
  individualTimeTrial lainate milan 20.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1972 :: StageRace
giro1972 = evalState giro1972' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1972 5 21))

giro1972' :: State StageRaceState StageRace
giro1972' = do
  -- Stage 1
  plainStage venice ravenna 196.0

  -- Stage 2
  plainStage ravenna fermo 212.0

  -- Stage 3
  plainStage portoSanGiorgio francavillaAlMare 205.0

  -- Stages 4a & 4b
  enableSplitStages
  plainStage francavillaAlMare blockhaus 48.0
  plainStage blockhaus foggia 210.0
  disableSplitStages

  -- Stage 5
  plainStage foggia montesanoSullaMarcellana 238.0

  -- Stage 6
  plainStage montesanoSullaMarcellana cosenza 190.0

  -- Stage 7
  plainStage cosenza catanzaro 151.0

  -- Stage 8
  plainStage catanzaro reggioCalabria 160.0

  -- Stage 9
  criterium messina 110.0

  transferDay

  -- Stage 10
  plainStage rome monteArgentario 166.0

  -- Stage 11
  plainStage monteArgentario forteDeiMarmi 242.0

  -- Stages 12a & 12b
  enableSplitStages
  outAndBackIndividualTimeTrial forteDeiMarmi 20.0
  outAndBackIndividualTimeTrial forteDeiMarmi 20.0
  disableSplitStages

  -- Stage 13
  plainStage forteDeiMarmi savona 200.0

  -- Stage 14
  mountainStage (Left savona) 256
  addCol 256 monteJafferau C1

  transferDay

  -- Stage 15
  criterium parabiago 168.0

  -- Stage 16
  plainStage parabiago livigno 256.0

  -- Stage 17
  mountainStage (Left livigno) 88
  addCol 88 passoDelloStelvio C1

  -- Stage 18
  plainStage sulden asiago 223.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage asiago arco 163.0
  outAndBackIndividualTimeTrial arco 18.0
  disableSplitStages

  -- Stage 20
  plainStage arco milan 185.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1973 :: StageRace
giro1973 = evalState giro1973' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1973 5 18))

giro1973' :: State StageRaceState StageRace
giro1973' = do
  -- Prologue
  prologueTwoManTeamTimeTrial verviers 5.2

  -- Stage 1
  plainStage verviers Countries.WestGermany.cologne 137.0

  -- Stage 2
  plainStage Countries.WestGermany.cologne luxembourg 227.0

  -- Stage 3
  plainStage luxembourg strasbourg 239.0

  -- Stage 4
  plainStage geneva aosta 163.0

  transferDay

  -- Stage 5
  plainStage saintVincent milan 173.0

  -- Stage 6
  plainStage milan iseo 144.0

  -- Stage 7
  plainStage iseo lidoDelleNazioni 248.0

  -- Stage 8
  plainStage lidoDelleNazioni monteCarpegna 156.0

  -- Stage 9
  plainStage carpegna albaAdriatica 243.0

  -- Stage 10
  plainStage albaAdriatica lanciano 174.0

  -- Stage 11
  plainStage lanciano benevento 230.0

  -- Stage 12
  plainStage benevento fiuggi 236.0

  -- Stage 13
  plainStage fiuggi bolsena 215.0

  -- Stage 14
  plainStage bolsena florence 202.0

  -- Stage 15
  plainStage florence forteDeiMarmi 150.0

  transferDay

  -- Stage 16
  outAndBackIndividualTimeTrial forteDeiMarmi 37.0

  -- Stage 17
  plainStage forteDeiMarmi verona 244.0

  -- Stage 18
  plainStage verona andalo 173.0

  -- Stage 19
  plainStage andalo auronzoDiCadore 208.0

  -- Stage 20
  plainStage auronzoDiCadore trieste 197.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1974 :: StageRace
giro1974 = evalState giro1974' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1974 5 16))

giro1974' :: State StageRaceState StageRace
giro1974' = do
  -- Stage 1
  plainStage vaticanCity formia 164.0

  -- Stage 2
  plainStage formia pompeii 121.0

  -- Stage 3
  plainStage pompeii sorrento 137.0

  transferDay

  -- Stage 4
  plainStage sorrento sapri 208.0

  -- Stage 5
  plainStage sapri taranto 215.0

  -- Stage 6
  plainStage taranto foggia 206.0

  -- Stage 7
  plainStage foggia chieti 257.0

  -- Stage 8
  plainStage chieti macerata 150.0

  -- Stage 9
  plainStage macerata carpegna 191.0

  -- Stage 10
  plainStage macerata carpegna 191.0

  -- Stages 11a & 11b
  enableSplitStages
  plainStage modena ilCiocco 153.0
  plainStage ilCiocco forteDeiMarmi 62.0
  disableSplitStages

  -- Stage 12
  outAndBackIndividualTimeTrial forteDeiMarmi 40.0

  -- Stage 13
  plainStage forteDeiMarmi pietraLigure 231.0

  -- Stage 14
  plainStage pietraLigure sanRemo 189.0

  -- Stage 15
  plainStage sanRemo valenza 206.0

  transferDay

  -- Stage 16
  plainStage valenza Countries.Italy.monteGeneroso 158.0

  -- Stage 17
  plainStage como iseo 158.0

  -- Stage 18
  plainStage iseo sellaValsugana 190.0

  -- Stage 19
  plainStage borgoValsugana pordenone 146.0

  -- Stage 20
  plainStage pordenone treCimeDiLavaredo 163.0

  -- Stage 21
  plainStage misurina bassanoDelGrappa 194.0

  -- Stage 22
  plainStage bassanoDelGrappa milan 257.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1975 :: StageRace
giro1975 = evalState giro1975' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1975 5 17))

giro1975' :: State StageRaceState StageRace
giro1975' = do
  -- Stage 1
  plainStage milan fioranoModenese 177.0

  -- Stage 2
  plainStage modena ancona 249.0

  -- Stage 3
  plainStage ancona pratiDiTivo 175.0

  -- Stage 4
  plainStage teramo campobasso 258.0

  -- Stage 5
  plainStage campobasso bari 224.0

  -- Stage 6
  plainStage bari castrovillari 213.0

  -- Stages 7a & 7b
  enableSplitStages
  plainStage castrovillari padula 123.0
  plainStage padula potenza 80.0
  disableSplitStages

  -- Stage 8
  plainStage potenza sorrento 220.0

  -- Stage 9
  plainStage sorrento frosinone 222.0

  -- Stage 10
  plainStage frosinone tivoli 176.0

  -- Stage 11
  plainStage rome orvieto 158.0

  -- Stage 12
  plainStage chiancianoTerme forteDeiMarmi 232.0

  -- Stage 13
  outAndBackIndividualTimeTrial forteDeiMarmi 38.0

  transferDay

  -- Stage 14
  outAndBackIndividualTimeTrial ilCiocco 13.0

  -- Stage 15
  plainStage ilCiocco arenzano 203.0

  -- Stage 16
  plainStage arenzano ortaSanGiulio 193.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage ortaSanGiulio pontoglio 167.0
  plainStage pontoglio monteMaddalena 46.0
  disableSplitStages

  -- Stage 18
  plainStage brescia baselgaDiPine 223.0

  -- Stage 19
  plainStage baselgaDiPine pordenone 175.0

  -- Stage 20
  plainStage pordenone alleghe 197.0

  -- Stage 21
  mountainStage (Left alleghe) 186
  addCol 186 passoDelloStelvio C1

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1976 :: StageRace
giro1976 = evalState giro1976' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1976 5 21))

giro1976' :: State StageRaceState StageRace
giro1976' = do
  -- Stages 1a & 1b
  enableSplitStages
  criterium catania 64.0
  plainStage catania siracusa 78.0
  disableSplitStages

  -- Stage 2
  plainStage siracusa caltanissetta 210.0

  -- Stage 3
  plainStage caltanissetta palermo 163.0

  -- Stage 4
  plainStage cefalu messina 192.0

  -- Stage 5
  plainStage reggioCalabria cosenza 220.0

  -- Stage 6
  plainStage cosenza matera 207.0

  -- Stage 7
  outAndBackIndividualTimeTrial ostuni 37.0

  -- Stage 8
  plainStage selvaDiFasano lagoLaceno 256.0

  -- Stage 9
  plainStage bagnoliIrpino roccaraso 204.0

  -- Stage 10
  plainStage roccaraso terni 203.0

  -- Stage 11
  plainStage terni gabicceMare 222.0

  -- Stage 12
  plainStage gabicceMare porrettaTerme 215.0

  -- Stage 13
  plainStage porrettaTerme ilCiocco 146.0

  -- Stage 14
  plainStage ilCiocco varazze 227.0

  transferDay

  -- Stage 15
  plainStage varazze ozegna 216.0

  -- Stage 16
  plainStage castellamonte arosio 258.0

  -- Stage 17
  plainStage arosio verona 196.0

  -- Stage 18
  plainStage verona longarone 174.0

  -- Stage 19
  plainStage longarone vajoletTowers 132.0

  -- Stage 20
  plainStage vigoDiFassa termeDiComano 170.0

  -- Stage 21
  plainStage termeDiComano bergamo 238.0

  -- Stages 22a & 22b
  enableSplitStages
  outAndBackIndividualTimeTrial arcore 28.0
  criterium milan 106.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1977 :: StageRace
giro1977 = evalState giro1977' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1977 5 20))

giro1977' :: State StageRaceState StageRace
giro1977' = do
  -- Stage 1
  prologue bacoli monteDiProcida 7.0

  -- Stage 2
  plainStage lagoMiseno avellino 159.0

  -- Stages 3a & 3b
  enableSplitStages
  plainStage avellino foggia 118.0
  criterium foggia 65.0
  disableSplitStages

  -- Stage 4
  plainStage foggia isernia 166.0

  -- Stage 5
  plainStage isernia pescara 228.0

  -- Stage 6
  plainStage pescara montelucoDiSpoleto 215.0

  -- Stages 7a & 7b
  enableSplitStages
  plainStage spoleto gabicceMare 185.0
  criterium gabicceMare 70.0
  disableSplitStages

  -- Stage 8
  plainStage gabicceMare forli 163.0

  -- Stages 9a & 9b
  enableSplitStages
  plainStage forli circuitoDelMugello 103.0
  criterium circuitoDelMugello 79.0
  disableSplitStages

  -- Stage 10
  individualTimeTrial lucca pisa 25.0

  -- Stage 11
  plainStage pisa salsomaggioreTerme 205.0

  -- Stage 12
  plainStage salsomaggioreTerme santaMargheritaLigure 198.0

  transferDay

  -- Stage 13
  plainStage santaMargheritaLigure sanGiacomoDiRoburent 160.0

  -- Stage 14
  plainStage mondovi varzi 192.0

  -- Stage 15
  plainStage voghera vicenza 247.0

  -- Stage 16
  plainStage vicenza trieste 223.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage trieste gemonaDelFriuli 107.0
  plainStage gemonaDelFriuli conegliano 116.0
  disableSplitStages

  -- Stage 18
  plainStage conegliano cortinaD'Ampezzo 220.0

  -- Stage 19
  plainStage cortinaD'Ampezzo pinzolo 223.0

  -- Stage 20
  plainStage pinzolo sanPellegrinoTerme 205.0

  -- Stage 21
  plainStage sanPellegrinoTerme varese 138.0

  -- Stage 22
  outAndBackIndividualTimeTrial binago 29.0

  -- Stage 23
  criterium milan 122.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1978 :: StageRace
giro1978 = evalState giro1978' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1978 5 7))

giro1978' :: State StageRaceState StageRace
giro1978' = do
  -- Prologue
  outAndBackPrologue saintVincent 2.0

  -- Stage 1
  plainStage saintVincent noviLigure 175.0

  -- Stage 2
  plainStage noviLigure laSpezia 195.0

  -- Stage 3
  plainStage laSpezia cascina 183.0

  -- Stage 4
  individualTimeTrial larciano pistoia 25.0

  -- Stage 5
  plainStage prato cattolica 200.0

  -- Stage 6
  plainStage cattolica silviMarina 218.0

  -- Stage 7
  plainStage silviMarina benevento 242.0

  -- Stage 8
  plainStage benevento ravello 175.0

  -- Stage 9
  plainStage amalfi latina 248.0

  -- Stage 10
  plainStage latina lagoDiPiediluco 220.0

  -- Stages 11a & 11b
  enableSplitStages
  plainStage terni assisi 74.0
  plainStage assisi siena 145.0
  disableSplitStages

  -- Stage 12
  plainStage poggibonsi monteTrebbio 204.0

  -- Stage 13
  plainStage modigiliana padua 183.0

  -- Stage 14
  outAndBackIndividualTimeTrial venice 12.0

  transferDay

  -- Stage 15
  plainStage treviso canazei 234.0

  -- Stage 16
  individualTimeTrial mazzin cavalese 48.0

  -- Stage 17
  plainStage cavalese monteBondone 205.0

  -- Stage 18
  plainStage mezzolombardo sarezzo 245.0

  -- Stage 19
  plainStage brescia inverigo 175.0

  -- Stage 20
  plainStage inverigo milan 220.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1979 :: StageRace
giro1979 = evalState giro1979' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1979 5 17))

giro1979' :: State StageRaceState StageRace
giro1979' = do
  -- Prologue
  outAndBackPrologue florence 2.0

  -- Stage 1
  plainStage florence perugia 156.0

  -- Stage 2
  plainStage perugia castelGandolfo 204.0

  -- Stage 3
  individualTimeTrial caserta naples 31.0

  -- Stage 4
  plainStage caserta potenza 210.0

  -- Stage 5
  plainStage potenza vieste 223.0

  -- Stage 6
  plainStage vieste chieti 260.0

  -- Stage 7
  plainStage chieti pesaro 252.0

  -- Stage 8
  individualTimeTrial rimini sanMarino 28.0

  -- Stage 9
  plainStage sanMarino pistoia 248.0

  -- Stage 10
  individualTimeTrial lerici portovenere 25.0

  -- Stage 11
  plainStage laSpezia voghera 212.0

  -- Stage 12
  plainStage alessandria saintVincent 204.0

  -- Stage 13
  plainStage aosta meda 229.0

  -- Stage 14
  plainStage meda boscoChiesanuova 212.0

  -- Stage 15
  plainStage verona treviso 121.0

  -- Stage 16
  plainStage treviso pieveDiCadore 195.0

  transferDay

  -- Stage 17
  plainStage pieveDiCadore trento 194.0

  -- Stage 18
  plainStage trento barzio 245.0

  -- Stage 19
  individualTimeTrial cesanoMaderno milan 44.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1980 :: StageRace
giro1980 = evalState giro1980' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1980 5 15))

giro1980' :: State StageRaceState StageRace
giro1980' = do
  -- Prologue
  outAndBackPrologue genoa 7.0

  -- Stage 1
  plainStage genoa imperia 123.0

  -- Stage 2
  plainStage imperia turin 179.0

  -- Stage 3
  plainStage turin parma 243.0

  -- Stage 4
  plainStage parma marinaDiPisa 193.0

  -- Stage 5
  individualTimeTrial pontedera pisa 36.0

  transferDay

  -- Stage 6
  plainStage rioMarina portoferraio 126.0

  -- Stage 7
  plainStage castiglioneDellaPescaia orvieto 200.0

  -- Stage 8
  plainStage orvieto fiuggi 216.0

  -- Stage 9
  plainStage fiuggi sorrento 247.0

  -- Stage 10
  plainStage sorrento palinuro 177.0

  -- Stage 11
  plainStage palinuro campotenese 145.0

  -- Stage 12
  plainStage villapianaLido campiSalentina 203.0

  -- Stage 13
  plainStage campiSalentina barletta 220.0

  -- Stage 14
  plainStage foggia roccaraso 186.0

  -- Stage 15
  plainStage roccaraso termamo 194.0

  -- Stage 16
  plainStage giulianova gatteoAMare 229.0

  -- Stage 17
  plainStage gatteoAMare sirmione 237.0

  -- Stage 18
  plainStage sirmione zoldoAlto 239.0

  -- Stage 19
  plainStage longarone cles 241.0

  -- Stage 20
  plainStage cles sondrio 221.0

  -- Stage 21
  individualTimeTrial saronno turbigo 50.0

  -- Stage 22
  criterium milan 114.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1981 :: StageRace
giro1981 = evalState giro1981' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1981 5 13))

giro1981' :: State StageRaceState StageRace
giro1981' = do
  -- Prologue
  outAndBackPrologue trieste 6.6

  -- Stages 1a & 1b
  enableSplitStages
  plainStage trieste bibione 100.0
  teamTimeTrial lignanoSabbiadoro bibione 15.0
  disableSplitStages

  -- Stage 2
  plainStage bibione ferrara 211.0

  -- Stage 3
  plainStage bologna recanati 255.0

  transferDay

  -- Stage 4
  plainStage recanati lanciano 214.0

  -- Stage 5
  plainStage marinaDiSanVito rodiGarganico 180.0

  -- Stage 6
  plainStage rodiGarganico bari 225.0

  -- Stage 7
  plainStage bari potenza 143.0

  -- Stage 8
  plainStage salaConsilina cosenza 202.0

  -- Stage 9
  plainStage cosenza reggioCalabria 231.0

  transferDay

  -- Stage 10
  plainStage rome cascia 166.0

  -- Stage 11
  plainStage cascia arezzo 199.0

  -- Stage 12
  plainStage arezzo livorno 224.0

  -- Stage 13
  individualTimeTrial empoli montecatiniTerme 35.0

  -- Stage 14
  plainStage montecatiniTerme salsomaggioreTerme 224.0

  -- Stage 15
  plainStage salsomaggioreTerme pavia 198.0

  -- Stage 16
  plainStage milan mantua 178.0

  -- Stage 17
  plainStage mantua borno 215.0

  -- Stage 18
  plainStage borno dimaro 127.0

  transferDay

  -- Stage 19
  plainStage dimaro sanVigilloDiMarebbe 208.0

  -- Stage 20
  plainStage sanVigilloDiMarebbe treCimeDiLavaredo 100.0

  -- Stage 21
  plainStage auronzoDiCadore arzignano 197.0

  -- Stage 22
  individualTimeTrial soave verona 42.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1982 :: StageRace
giro1982 = evalState giro1982' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1982 5 13))

giro1982' :: State StageRaceState StageRace
giro1982' = do
  -- Prologue
  outAndBackPrologue milan 16.0

  -- Stage 1
  plainStage parma viareggio 174.0

  -- Stage 2
  plainStage viareggio cortona 233.0

  -- Stage 3
  individualTimeTrial perugia assisi 37.0

  -- Stage 4
  plainStage assisi rome 169.0

  -- Stage 5
  plainStage rome caserta 213.0

  -- Stage 6
  plainStage caserta castellammareDiStabia 130.0

  -- Stage 7
  plainStage castellammareDiStabia diamante 226.0

  transferDay

  -- Stage 8
  plainStage taormina agrigento 248.0

  -- Stage 9
  plainStage agrigento palermo 151.0

  -- Stage 10
  plainStage cefalu messina 197.0

  -- Stage 11
  plainStage palmi camigliatelloSilano 229.0

  transferDay

  -- Stage 12
  plainStage cavaDe'Tirreni campitelloMatese 171.0

  -- Stage 13
  plainStage campitelloMatese pescara 164.0

  -- Stage 14
  plainStage pescara urbino 248.0

  -- Stage 15
  plainStage urbino comacchio 190.0

  -- Stage 16
  mountainStage (Left comacchio) 243
  addCol 243 sanMartinoDiCastrozza C2

  -- Stage 17
  plainStage fieraDiPrimiero boarioTerme 235.0

  -- Stage 18
  plainStage piancogno montecampione 85.0

  -- Stage 19
  plainStage boarioTerme vigevano 162.0

  -- Stage 20
  plainStage vigevano cuneo 177.0

  -- Stage 21
  plainStage cuneo pinerolo 254.0

  -- Stage 22
  individualTimeTrial pinerolo turin 42.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1983 :: StageRace
giro1983 = evalState giro1983' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1983 5 12))

giro1983' :: State StageRaceState StageRace
giro1983' = do
  -- Prologue
  outAndBackPrologue brescia 8.0

  -- Stage 1
  teamTimeTrial brescia mantua 70.0

  -- Stage 2
  plainStage mantua comacchio 192.0

  -- Stage 3
  plainStage comacchio fano 148.0

  -- Stage 4
  plainStage pesaro todi 187.0

  -- Stage 5
  plainStage terni vasto 269.0

  -- Stage 6
  plainStage vasto campitelloMatese 145.0

  -- Stage 7
  plainStage campitelloMatese salerno 216.0

  -- Stage 8
  plainStage salerno terracina 212.0

  -- Stage 9
  plainStage terracina montefiascone 225.0

  -- Stage 10
  plainStage montefiascone bibbiena 232.0

  -- Stage 11
  plainStage bibbiena pietrasanta 202.0

  transferDay

  -- Stage 12
  plainStage pietrasanta reggioEmilia 180.0

  -- Stage 13
  individualTimeTrial reggioEmilia parma 38.0

  -- Stage 14
  plainStage parma savona 243.0

  -- Stage 15
  plainStage savona ortaSanGiulio 219.0

  -- Stages 16a & 16b
  enableSplitStages
  plainStage ortaSanGiulio milan 110.0
  plainStage milan bergamo 100.0
  disableSplitStages

  -- Stage 17
  plainStage bergamo colliDiSanFermo 91.0

  -- Stage 18
  plainStage sarnico vicenza 178.0

  transferDay

  -- Stage 19
  plainStage vicenza selvaDiValGardena 224.0

  -- Stage 20
  plainStage selvaDiValGardena arabba 169.0

  -- Stage 21
  plainStage arabba gorizia 232.0

  -- Stage 22
  individualTimeTrial gorizia udine 40.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1984 :: StageRace
giro1984 = evalState giro1984' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1984 5 17))

giro1984' :: State StageRaceState StageRace
giro1984' = do
  -- Prologue
  outAndBackPrologue lucca 5.0

  -- Stage 1
  teamTimeTrial lucca marinaDiPietrasanta 55.0

  -- Stage 2
  plainStage marinaDiPietrasanta firenze 127.0

  -- Stage 3
  plainStage bologna madonnaDiSanLuca 110.0

  -- Stage 4
  plainStage bologna numana 238.0

  -- Stage 5
  plainStage numana blockhaus 194.0

  -- Stage 6
  plainStage chieti foggia 193.0

  -- Stage 7
  plainStage foggia marconiaDiPisticci 226.0

  -- Stage 8
  plainStage policoro agropoli 228.0

  -- Stage 9
  plainStage agropoli cavaDe'Tirreni 104.0

  transferDay

  -- Stage 10
  plainStage cavaDe'Tirreni isernia 209.0

  -- Stage 11
  plainStage isernia rieti 243.0

  -- Stage 12
  plainStage rieti cittaDiCastello 175.0

  -- Stage 13
  plainStage cittaDiCastello lerici 269.0

  -- Stage 14
  plainStage lerici alessandria 204.0

  -- Stage 15
  individualTimeTrial certosaDiPavia milan 38.0

  transferDay

  -- Stage 16
  plainStage alessandria bardonecchia 198.0

  -- Stage 17
  plainStage bardonecchia lecco 249.0

  -- Stage 18
  plainStage lecco merano 252.0

  -- Stage 19
  plainStage merano selvaDiValGardena 74.0

  -- Stage 20
  plainStage selvaDiValGardena arabba 169.0

  -- Stage 21
  plainStage arabba treviso 208.0

  -- Stage 22
  individualTimeTrial soave verona 42.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1985 :: StageRace
giro1985 = evalState giro1985' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1985 5 16))

giro1985' :: State StageRaceState StageRace
giro1985' = do
  -- Prologue
  outAndBackPrologue verona 6.6

  -- Stage 1
  plainStage verona bustoArsizio 218.0

  -- Stage 2
  teamTimeTrial bustoArsizio milan 38.0

  -- Stage 3
  plainStage milan pinzolo 190.0

  -- Stage 4
  plainStage pinzolo selvaDiValGardena 237.0

  -- Stage 5
  plainStage selvaDiValGardena vittorioVeneto 225.0

  -- Stage 6
  plainStage vittorioVeneto cervia 237.0

  -- Stage 7
  plainStage cervia jesi 185.0

  transferDay

  -- Stages 8a & 8b
  enableSplitStages
  criterium foggia 45.0
  plainStage foggia matera 167.0
  disableSplitStages

  -- Stage 9
  plainStage matera crotone 237.0

  -- Stage 10
  plainStage crotone paola 203.0

  -- Stage 11
  plainStage paola salerno 240.0

  -- Stage 12
  individualTimeTrial capua maddaloni 38.0

  -- Stage 13
  plainStage maddaloni frosinone 154.0

  -- Stage 14
  plainStage frosinone granSassoD'Italia 195.0

  -- Stage 15
  plainStage l'Aquila perugia 208.0

  -- Stage 16
  plainStage perugia cecina 217.0

  -- Stage 17
  plainStage cecina modena 248.0

  transferDay

  -- Stage 18
  plainStage monza domodossola 128.0

  -- Stage 19
  plainStage domodossola saintVincent 247.0

  -- Stage 20
  plainStage saintVincent valnonteyDiCogne 58.0

  -- Stage 21
  plainStage saintVincent genoa 229.0

  -- Stage 22
  individualTimeTrial lidoDiCamaiore lucca 48.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1986 :: StageRace
giro1986 = evalState giro1986' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1986 5 12))

giro1986' :: State StageRaceState StageRace
giro1986' = do
  -- Prologue and Stage 1
  enableMorningStage
  outAndBackPrologue palermo 1.0
  plainStage palermo sciacca 140.0

  -- Stage 2
  plainStage sciacca catania 259.0

  -- Stage 3
  teamTimeTrial catania taormina 50.0

  -- Stage 4
  plainStage villaSanGiovanni nicotera 115.0

  -- Stage 5
  plainStage nicotera cosenza 194.0

  -- Stage 6
  plainStage cosenza potenza 251.0

  -- Stage 7
  plainStage potenza baiaDomizia 257.0

  -- Stage 8
  plainStage cellole avezzano 160.0

  -- Stage 9
  plainStage avezzano rieti 172.0

  -- Stage 10
  plainStage rieti pesaro 238.0

  -- Stage 11
  plainStage pesaro castiglioneDelLago 207.0

  -- Stage 12
  individualTimeTrial sinalunga siena 46.0

  -- Stage 13
  plainStage siena sarzana 175.0

  -- Stage 14
  plainStage savona sauzeD'Oulx 236.0

  -- Stage 15
  plainStage sauzeD'Oulx erba 260.0

  -- Stage 16
  plainStage erba foppolo 143.0

  -- Stage 17
  plainStage foppolo piacenza 186.0

  -- Stage 18
  individualTimeTrial piacenza cremona 36.0

  -- Stage 19
  plainStage cremona peio 211.0

  -- Stage 20
  plainStage peio bassanoDelGrappa 179.0

  -- Stage 21
  plainStage bassanoDelGrappa bolzano 234.0

  -- Stage 22
  criterium merano 108.6

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1987 :: StageRace
giro1987 = evalState giro1987' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1987 5 21))

giro1987' :: State StageRaceState StageRace
giro1987' = do
  -- Prologue
  outAndBackPrologue sanRemo 4.0

  -- Stages 1a & 1b
  enableSplitStages
  plainStage sanRemo sanRomolo 31.0
  individualTimeTrial poggioDiSanRemo sanRemo 8.0
  disableSplitStages

  -- Stage 2
  plainStage imperia borgoValDiTaro 242.0

  -- Stage 3
  teamTimeTrial lerici camaiore 43.0

  -- Stage 4
  plainStage camaiore montalcino 203.0

  -- Stage 5
  plainStage montalcino terni 208.0

  -- Stage 6
  plainStage terni monteTerminillo 134.0

  -- Stage 7
  plainStage rieti roccaraso 205.0

  -- Stage 8
  plainStage roccaraso sanGiorgioDelSannio 168.0

  -- Stage 9
  plainStage sanGiorgioDelSannio bari 257.0

  -- Stage 10
  plainStage bari termoli 210.0

  transferDay

  -- Stage 11
  plainStage guilianova osimo 245.0

  -- Stage 12
  plainStage osimo bellaria 197.0

  -- Stage 13
  individualTimeTrial rimini sanMarino 46.0

  -- Stage 14
  plainStage sanMarino lidoDiJesolo 260.0

  -- Stage 15
  plainStage lidoDiJesolo sappada 224.0

  -- Stage 16
  plainStage sappada canazei 211.0

  -- Stage 17
  plainStage canazei rivaDelGarda 206.0

  -- Stage 18
  plainStage rivaDelGarda trescoreBalneario 213.0

  -- Stage 19
  plainStage trescoreBalneario madesimo 160.0

  -- Stage 20
  plainStage madesimo como 156.0

  -- Stage 21
  plainStage como pila 252.0

  -- Stage 22
  individualTimeTrial aosta saintVincent 32.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1988 :: StageRace
giro1988 = evalState giro1988' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1988 5 23))

giro1988' :: State StageRaceState StageRace
giro1988' = do
  -- Stage 1
  outAndBackIndividualTimeTrial urbino 9

  -- Stage 2
  plainStage urbino ascoliPiceno 230

  -- Stage 3
  plainStage ascoliPiceno vasto 184

  -- Stages 4a & 4b
  enableSplitStages
  plainStage vasto rodiGarganico 123
  teamTimeTrial rodiGarganico vieste 40
  disableSplitStages

  -- Stage 5
  plainStage vieste santaMariaCapuaVetere 260

  -- Stage 6
  plainStage santaMariaCapuaVetere campitelloMatese 137

  -- Stage 7
  plainStage campitelloMatese avezzano 178

  -- Stage 8
  plainStage avezzano chiancianoTerme 251

  -- Stage 9
  plainStage pienza marinaDiMassa 235

  -- Stage 10
  plainStage carrara salsomaggioreTerme 190

  -- Stage 11
  plainStage parma colleDonBosco 229

  -- Stage 12
  plainStage novara selvino 205

  -- Stage 13
  plainStage bergamo chiesaInValmalenco 129

  -- Stage 14
  plainStage chiesaInValmalenco bormio 120

  -- Stage 15
  plainStage spondigna merano2000 83

  -- Stage 16
  plainStage merano innsbruck 176

  -- Stage 17
  plainStage innsbruck borgoValsugana 221

  -- Stage 18
  individualTimeTrial levicoTerme valicoDelVetriolo 18

  -- Stage 19
  plainStage borgoValsugana artaTerme 223

  -- Stage 20
  plainStage artaTerme lidoDiJesolo 212

  -- Stages 21a & 21b
  enableSplitStages
  plainStage lidoDiJesolo vittorioVeneto 73
  outAndBackIndividualTimeTrial vittorioVeneto 43
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1989 :: StageRace
giro1989 = evalState giro1989' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1989 5 21))

giro1989' :: State StageRaceState StageRace
giro1989' = do
  -- Stage 1
  plainStage taormina catania 123.0

  -- Stage 2
  plainStage catania mountEtna 132.0

  -- Stage 3
  teamTimeTrial villafranca messina 32.5

  -- Stage 4
  plainStage scilla cosenza 204.0

  -- Stage 5
  plainStage cosenza potenza 275.0

  -- Stage 6
  plainStage potenza campobasso 223.0

  -- Stage 7
  plainStage isernia rome 208.0

  -- Stage 8
  plainStage rome granSassoD'Italia 179.0

  -- Stage 9
  plainStage l'Aquila gubbio 221.0

  -- Stage 10
  individualTimeTrial pesaro riccione 36.8

  -- Stage 11
  plainStage riccione mantua 148.0

  -- Stage 12
  plainStage mantua mira 148.0

  -- Stage 13
  plainStage padua auronzoDiCadore 207.0

  -- Stage 14
  plainStage auronzoDiCadore corvara 131.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage corvara trento 131.0
  criterium trento 83.2
  disableSplitStages

  -- Stage 16
  plainStage trento santaCaterinaDiValfurva 208.0

  -- Stage 17
  plainStage sondrio meda 137.0

  -- Stage 18
  individualTimeTrial mendrisio Countries.Switzerland.monteGeneroso 10.7

  -- Stage 19
  plainStage meda tortona 198.0

  -- Stage 20
  plainStage voghera laSpezia 220.0

  -- Stage 21
  plainStage laSpezia prato 216.0

  -- Stage 22
  individualTimeTrial prato florence 53.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1990 :: StageRace
giro1990 = evalState giro1990' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1990 5 18))

giro1990' :: State StageRaceState StageRace
giro1990' = do
  -- Prologue
  outAndBackPrologue bari 13.0

  -- Stage 1
  plainStage bari salaConsilina 239.0

  -- Stage 2
  plainStage salaConsilina mountVesuvius 190.0

  -- Stages 3a & 3b
  enableSplitStages
  plainStage ercolano nola 31.0
  plainStage nola sora 164.0
  disableSplitStages

  -- Stage 4
  plainStage sora teramo 233.0

  -- Stage 5
  plainStage teramo fabriano 200.0

  -- Stage 6
  plainStage fabriano vallombrosa 197.0

  -- Stage 7
  plainStage reggello marinaDiPietrasanta 188.0

  -- Stage 8
  plainStage laSpezia langhirano 176.0

  -- Stage 9
  individualTimeTrial grinzaneCavour cuneo 68.0

  -- Stage 10
  plainStage cuneo lodi 241.0

  -- Stage 11
  plainStage brescia baselgaDiPine 241.0

  -- Stage 12
  plainStage baselgaDiPine udine 224.0

  -- Stage 13
  criterium klagenfurt 164.0

  -- Stage 14
  plainStage veldenAmWorther dobbiaco 226.0

  -- Stage 15
  mountainStage (Left dobbiaco) 171
  addCol 171 passoPordoi C1

  -- Stage 16
  mountainStage (Left moena) 223
  addCol 223 aprica C3

  -- Stage 17
  roadStage (Right aprica) (Just gallarate) 180.0

  -- Stage 18
  individualTimeTrial gallarate sacroMonteDiVarese 39.0

  -- Stage 19
  criterium milan 90.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1991 :: StageRace
giro1991 = evalState giro1991' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1991 5 26))

giro1991' :: State StageRaceState StageRace
giro1991' = do
  -- Stage 1
  criterium olbia 193.0

  -- Stages 2a & 2b
  enableSplitStages
  plainStage olbia sassari 127.0
  outAndBackIndividualTimeTrial sassari 7.0
  disableSplitStages

  -- Stage 3
  plainStage sassari cagliari 231.0

  transferDay

  -- Stage 4
  criterium sorrento 170.0

  -- Stage 5
  plainStage sorrento scanno 246.0

  -- Stage 6
  plainStage scanno rieti 205.0

  -- Stage 7
  plainStage rieti cittaDiCastello 174.0

  -- Stage 8
  plainStage cittaDiCastello prato 169.0

  -- Stage 9
  plainStage prato felino 229.0

  -- Stage 10
  individualTimeTrial collecchio langhirano 43.0

  -- Stage 11
  plainStage salaBaganza savona 223.0

  -- Stage 12
  plainStage savona pianDelRe 182.0

  -- Stage 13
  mountainStage (Left savigliano) 192
  addCol 192 sestriere C1

  -- Stage 14
  plainStage turin morbegno 239.0

  -- Stage 15
  mountainStage (Left morbegno) 132
  addCol 132 aprica C3

  -- Stage 16
  plainStage tirano selvaDiValGardena 220.0

  -- Stage 17
  mountainStage (Left selvaDiValGardena) 169
  addCol 169 passoPordoi C1

  -- Stage 18
  plainStage pozzaDiFassa castelfrancoVeneto 165.0

  -- Stage 19
  plainStage castelfrancoVeneto brescia 185.0

  -- Stage 20
  individualTimeTrial brescia casteggio 66.0

  -- Stage 21
  plainStage pavia milan 153.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1992 :: StageRace
giro1992 = evalState giro1992' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1992 5 24))

giro1992' :: State StageRaceState StageRace
giro1992' = do
  -- Stage 1
  outAndBackIndividualTimeTrial genoa 8.0

  -- Stage 2
  plainStage genoa ulivetoTerme 194.0

  -- Stage 3
  plainStage ulivetoTerme arezzo 174.0

  -- Stage 4
  individualTimeTrial arezzo sansepolcro 38.0

  -- Stage 5
  plainStage sansepolcro portoSant'Elpidio 198.0

  -- Stage 6
  plainStage portoSant'Elpidio sulmona 223.0

  -- Stage 7
  plainStage roccaraso melfi 232.0

  -- Stage 8
  plainStage melfi aversa 184.0

  -- Stage 9
  plainStage aversa latina 165.0

  -- Stage 10
  plainStage latina monteTerminillo 196.0

  -- Stage 11
  plainStage montepulciano imola 233.0

  -- Stage 12
  plainStage imola bassanoDelGrappa 233.0

  -- Stage 13
  plainStage bassanoDelGrappa corvara 204.0

  -- Stage 14
  plainStage corvara monteBondone 205.0

  -- Stage 15
  plainStage rivaDelGarda palazzoloSull'Oglio 171.0

  -- Stage 16
  plainStage palazzoloSull'Oglio sondrio 166.0

  -- Stage 17
  plainStage sondrio vercelli 203.0

  -- Stage 18
  plainStage vercelli pianDelRe 200.0

  -- Stage 19
  plainStage saluzzo pila 260.0

  -- Stage 20
  plainStage saintVincent verbania 201.0

  -- Stage 21
  plainStage verbania vigevano 95.0

  -- Stage 22
  individualTimeTrial vigevano milan 66.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1993 :: StageRace
giro1993 = evalState giro1993' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1993 5 23))

giro1993' :: State StageRaceState StageRace
giro1993' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage portoAzzurro porteferraio 85.0
  outAndBackIndividualTimeTrial porteferraio 9.0
  disableSplitStages

  -- Stage 2
  plainStage grosseto rieti 224.0

  -- Stage 3
  plainStage rieti scanno 153.0

  -- Stage 4
  plainStage lagoDiScanno marcianise 179.0

  -- Stage 5
  plainStage paestum termeLuigiane 210.0

  -- Stage 6
  plainStage villafrancaTirrena messina 130.0

  -- Stage 7
  plainStage capoD'Orlando agrigento 240.0

  -- Stage 8
  plainStage agrigento palermo 140.0

  transferDay

  -- Stage 9
  plainStage montelibretti fabriano 216.0

  -- Stage 10
  outAndBackIndividualTimeTrial senigallia 28.0

  -- Stage 11
  plainStage senigallia dozza 184.0

  -- Stage 12
  plainStage dozza asiago 239.0

  -- Stage 13
  plainStage asiago corvara 220.0

  -- Stage 14
  criterium corvara 245.0

  -- Stage 15
  plainStage corvara lumezzane 263.0

  -- Stage 16
  plainStage lumezzane borgoValDiTaro 181.0

  -- Stage 17
  plainStage varazze pontechianale 223.0

  -- Stage 18
  plainStage sampeyre fossano 150.0

  -- Stage 19
  mountainTimeTrial (Left pinerolo) 55
  addCol 55 sestriere C1

  -- Stage 20
  plainStage turin santuarioDiOropa 162.0

  -- Stage 21
  plainStage biella milan 166.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1994 :: StageRace
giro1994 = evalState giro1994' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1994 5 22))

giro1994' :: State StageRaceState StageRace
giro1994' = do
  -- Stages 1a & 1b
  enableSplitStages
  criterium bologna 86.0
  outAndBackIndividualTimeTrial bologna 7.0
  disableSplitStages

  -- Stage 2
  plainStage bologna osimo 232.0

  -- Stage 3
  plainStage osimo loretoAprutino 185.0

  -- Stage 4
  plainStage montesilvano campitelloMatese 204.0

  -- Stage 5
  plainStage campobasso melfi 158.0

  -- Stage 6
  plainStage potenza caserta 215.0

  -- Stage 7
  criterium fiuggi 119.0

  -- Stage 8
  individualTimeTrial grosseto follonica 44.0

  -- Stage 9
  plainStage castigilioneDellaPescaia pontedera 153.0

  -- Stage 10
  criterium marostica 115.0

  -- Stage 11
  plainStage marostica bibione 165.0

  -- Stage 12
  plainStage bibione kranj 204.0

  -- Stage 13
  plainStage kranj lienz 231.0

  -- Stage 14
  plainStage lienz merano 235.0

  -- Stage 15
  mountainStage (Left merano) 195
  addCol 195 aprica C3

  -- Stage 16
  plainStage sondrio stradella 220.0

  -- Stage 17
  plainStage santaMariaDellaVersa lavagna 190.0

  -- Stage 18
  individualTimeTrial chiavari passoDelBocco 35.0

  -- Stage 19
  plainStage lavagna bra 212.0

  -- Stage 20
  mountainStage (Left cuneo) 206
  addCol 206 lesDeuxAlpes C1

  -- Stage 21
  mountainStage (Right lesDeuxAlpes) 121
  addCol 121 sestriere C1

  -- Stage 22
  plainStage turin milan 198.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1995 :: StageRace
giro1995 = evalState giro1995' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1995 5 13))

giro1995' :: State StageRaceState StageRace
giro1995' = do
  -- Stage 1
  plainStage perugia terni 205.0

  -- Stage 2
  individualTimeTrial foligno assisi 19.0

  -- Stage 3
  plainStage spoleto marotta 161.0

  -- Stage 4
  plainStage mondolfo loreto 192.0

  -- Stage 5
  plainStage portoRecanati tortoreto 182.0

  -- Stage 6
  plainStage trani taranto 165.0

  -- Stage 7
  plainStage taranto termeLuigiane 216.0

  -- Stage 8
  plainStage acquappesa massiccioDelSirino 209.0

  -- Stage 9
  plainStage termeLaCalda salerno 165.0

  -- Stage 10
  individualTimeTrial teleseTerme maddaloni 42.0

  transferDay

  -- Stage 11
  plainStage pietrasanta ilCiocco 175.0

  -- Stage 12
  plainStage borgoAMozzano cento 195.0

  -- Stage 13
  plainStage pieveDiCento rovereto 218.0

  -- Stage 14
  plainStage trento schnals 240.0

  -- Stage 15
  plainStage schnals lenzerheide 185.0

  -- Stage 16
  plainStage lenzerheide treviglio 224.0

  -- Stage 17
  individualTimeTrial cenateSotto selvino 43.0

  -- Stage 18
  plainStage stradella sanctuarioDiVicoforte 221.0

  -- Stage 19
  plainStage mondovi pontechianale 130.0

  -- Stage 20
  plainStage briancon gressoneySaintJean 208.0

  -- Stage 21
  plainStage pontSaintMartin luino 190.0

  -- Stage 22
  plainStage luino milan 148.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1996 :: StageRace
giro1996 = evalState giro1996' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1996 5 18))

giro1996' :: State StageRaceState StageRace
giro1996' = do
  -- Stage 1
  criterium athens 170.0

  -- Stage 2
  plainStage eleusis naupactus 235.0

  -- Stage 3
  plainStage missolonghi ioannina 199.0

  transferDay

  -- Stage 4
  criterium ostuni 147.0

  -- Stage 5
  plainStage metaponto crotone 196.0

  -- Stage 6
  plainStage crotone catanzaro 176.0

  -- Stage 7
  plainStage amantea massiccioDelSirino 164.0

  -- Stage 8
  plainStage polla naples 135.0

  -- Stage 9
  plainStage naples fiuggi 184.0

  -- Stage 10
  plainStage arezzo prato 164.0

  -- Stage 11
  plainStage prato marinoDiMassa 130.0

  -- Stage 12
  plainStage aulla loano 195.0

  -- Stage 13
  plainStage loano pratoNevoso 115.0

  -- Stage 14
  plainStage sanctuarioDiVicoforte briancon 202.0

  -- Stage 15
  plainStage briancon aosta 235.0

  -- Stage 16
  plainStage aosta lausanne 180.0

  -- Stage 17
  plainStage lausanne biella 236.0

  -- Stage 18
  plainStage meda vicenza 216.0

  -- Stage 19
  individualTimeTrial vicenza marostica 62.0

  -- Stage 20
  mountainStage (Left marostica) 220
  addCol 220 passoPordoi C1

  -- Stage 21
  mountainStage (Left cavalese) 250
  addCol 250 aprica C3

  -- Stage 22
  plainStage sondrio milan 176.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1997 :: StageRace
giro1997 = evalState giro1997' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1997 5 17))

giro1997' :: State StageRaceState StageRace
giro1997' = do
  -- Stage 1
  criterium venezia 128.0

  -- Stage 2
  plainStage mestre cervia 211.0

  -- Stage 3
  individualTimeTrial santarcangeloDiRomagna sanMarino 18.0

  -- Stage 4
  plainStage sanMarino arezzo 156.0

  -- Stage 5
  plainStage arezzo monteTerminillo 215.0

  -- Stage 6
  plainStage rieti lanciano 210.0

  -- Stage 7
  plainStage lanciano mondragone 210.0

  -- Stage 8
  plainStage mondragone cavaDe'Tirreni 212.0

  -- Stage 9
  plainStage cavaDe'Tirreni castrovillari 232.0

  -- Stage 10
  plainStage castrovillari taranto 195.0

  transferDay

  -- Stage 11
  criterium lidoDiCamaiore 155.0

  -- Stage 12
  plainStage laSpezia varazze 214.0

  -- Stage 13
  plainStage varazze cuneo 150.0

  -- Stage 14
  plainStage racconigi breuilCervinia 240.0

  -- Stage 15
  plainStage verres borgomanero 173.0

  -- Stage 16
  plainStage borgomanero dalmine 158.0

  -- Stage 17
  plainStage dalmine verona 200.0

  -- Stage 18
  individualTimeTrial baselgaDiPine cavalese 40.0

  -- Stage 19
  plainStage predazzo pfalzen 222.0

  -- Stage 20
  plainStage bruneck passoDelTonale 176.0

  -- Stage 21
  plainStage male edolo 238.0

  -- Stage 22
  plainStage boarioTerme milan 165.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1998 :: StageRace
giro1998 = evalState giro1998' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1998 5 16))

giro1998' :: State StageRaceState StageRace
giro1998' = do
  -- Prologue
  outAndBackPrologue nice 8.0

  -- Stage 1
  plainStage nice cuneo 159.0

  -- Stage 2
  plainStage alba imperia 160.0

  -- Stage 3
  plainStage rapallo forteDeiMarmi 196.0

  -- Stage 4
  plainStage viareggio monteArgentario 239.0

  -- Stage 5
  plainStage orbetello frascati 206.0

  -- Stage 6
  plainStage maddaloni lagaLaceno 158.0

  -- Stage 7
  plainStage montella matera 238.0

  -- Stage 8
  plainStage matera lecce 191.0

  -- Stage 9
  plainStage foggia vasto 167.0

  -- Stage 10
  plainStage vasto macerata 212.0

  -- Stage 11
  plainStage macerata sanMarino 220.0

  -- Stage 12
  plainStage sanMarino carpi 202.0

  -- Stage 13
  plainStage carpi schio 166.0

  -- Stage 14
  plainStage schio piancavallo 165.0

  -- Stage 15
  outAndBackIndividualTimeTrial trieste 40.0

  -- Stage 16
  plainStage udine asiago 227.0

  -- Stage 17
  plainStage asiago selva 217.0

  -- Stage 18
  plainStage selva passoDiPampeagno 115.0

  -- Stage 19
  plainStage cavalese planDiMontecampione 239.0

  -- Stage 20
  plainStage darfoBoarioTerme mendrisio 137.0

  -- Stage 21
  individualTimeTrial mendrisio lugano 34.0

  -- Stage 22
  plainStage lugano milan 173.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro1999 :: StageRace
giro1999 = evalState giro1999' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1999 5 15))

giro1999' :: State StageRaceState StageRace
giro1999' = do
  -- Stage 1
  plainStage agrigento modica 175.0

  -- Stage 2
  plainStage noto catania 133.0

  -- Stage 3
  plainStage catania messina 176.0

  -- Stage 4
  plainStage viboValentia termeLuigiane 186.0

  -- Stage 5
  plainStage termeLuigiane massiccioDelSirino 144.0

  -- Stage 6
  plainStage lauria foggia 257.0

  -- Stage 7
  plainStage foggia lanciano 153.0

  -- Stage 8
  plainStage pescara granSassoD'Italia 253.0

  -- Stage 9
  outAndBackIndividualTimeTrial ancona 32.0

  -- Stage 10
  plainStage ancona sansepolcro 189.0

  -- Stage 11
  plainStage sansepolcro cesenatico 125.0

  -- Stage 12
  plainStage cesenatico sassuolo 168.0

  -- Stage 13
  plainStage sassuolo rapallo 243.0

  transferDay

  -- Stage 14
  plainStage bra borgoSanDalmazzo 187.0

  -- Stage 15
  plainStage racconigi santuarioDiOropa 160.0

  -- Stage 16
  plainStage biella lumezzane 232.0

  -- Stage 17
  plainStage lumezzane castelfrancoVeneto 215.0

  -- Stage 18
  outAndBackIndividualTimeTrial treviso 45.0

  -- Stage 19
  plainStage castelfrancoVeneto alpeDiPampeago 166.0

  -- Stage 20
  plainStage predazzo madonnaDiCampiglio 175.0

  -- Stage 21
  mountainStage (Left madonnaDiCampiglio) 190
  addCol 190 aprica C3

  -- Stage 22
  plainStage darfoBoarioTerme milan 170.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2000 :: StageRace
giro2000 = evalState giro2000' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2000 5 13))

giro2000' :: State StageRaceState StageRace
giro2000' = do
  -- Prologue
  outAndBackPrologue rome 4.6

  -- Stage 1
  plainStage rome terracina 125.0

  -- Stage 2
  plainStage terracina maddaloni 225.0

  -- Stage 3
  plainStage paestum scalea 177.0

  -- Stage 4
  plainStage scalea matera 233.0

  -- Stage 5
  plainStage matera peschici 232.0

  -- Stage 6
  plainStage peschici vasto 160.0

  -- Stage 7
  plainStage vasto teramo 182.0

  -- Stage 8
  plainStage corinaldo prato 265.0

  -- Stage 9
  plainStage prato abetone 138.0

  -- Stage 10
  plainStage sanMarcelloPistoiese padua 253.0

  -- Stage 11
  individualTimeTrial lignanoSabbiadoro bibione 45.0

  transferDay

  -- Stage 12
  plainStage bibione feltre 184.0

  -- Stage 13
  plainStage feltre selva 186.0

  -- Stage 14
  plainStage selva bormio 203.0

  -- Stage 15
  plainStage bormio brescia 180.0

  -- Stage 16
  plainStage brescia meda 102.0

  -- Stage 17
  plainStage meda genoa 236.0

  -- Stage 18
  plainStage genoa pratoNevoso 173.0

  -- Stage 19
  plainStage saluzzo briancon 176.0

  -- Stage 20
  mountainTimeTrial (Left briancon) 32
  addCol 32 sestriere C1

  -- Stage 21
  plainStage turin milan 189.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2001 :: StageRace
giro2001 = evalState giro2001' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2001 5 19))

giro2001' :: State StageRaceState StageRace
giro2001' = do
  -- Stage 1
  prologue montesilvano pescara 7.0

  -- Stage 2
  plainStage guilianova francavillaAlMare 205.0

  -- Stage 3
  plainStage fossacesia lucera 163.0

  -- Stage 4
  plainStage lucera potenza 149.0

  -- Stage 5
  plainStage potenza mercogliano 169.0

  -- Stage 6
  plainStage avellino nettuno 229.0

  -- Stage 7
  plainStage nettuno rieti 152.0

  -- Stage 8
  plainStage rieti montevarchi 239.0

  -- Stage 9
  plainStage montecatiniTerme reggioEmilia 185.0

  -- Stage 10
  plainStage reggioEmilia rovigo 140.0

  -- Stage 11
  plainStage lidoDiJesolo Countries.Slovenia.ljubljana 212.0

  -- Stage 12
  plainStage bled gorizia 187.0

  -- Stage 13
  plainStage gradiscaD'Isonzo montebelluna 139.0

  -- Stage 14
  mountainStage (Left montebelluna) 225
  addCol 225 passoPordoi C1

  -- Stage 15
  plainStage cavalese arco 160.0

  -- Stage 16
  individualTimeTrial sirmione salo 55.0

  -- Stage 17
  plainStage erbusco parma 142.0

  transferDay

  -- Stage 18
  criterium sanRemo 123.0

  -- Stage 19
  plainStage imperia sant'AnnaDiVinadio 230.0

  -- Stage 20
  plainStage alba bustoArsizio 163.0

  -- Stage 21
  plainStage bustoArsizio arona 181.0

  -- Stage 22
  plainStage arona milan 125.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2002 :: StageRace
giro2002 = evalState giro2002' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2002 5 11))

giro2002' :: State StageRaceState StageRace
giro2002' = do
  -- Prologue
  outAndBackPrologue groningen 6.5

  -- Stage 1
  plainStage groningen munster 215.0

  -- Stage 2
  plainStage Countries.Germany.cologne ans 209.0

  -- Stage 3
  plainStage verviers eschSurAlzette 206.0

  -- Stage 4
  plainStage eschSurAlzette strasbourg 232.0

  transferDay

  -- Stage 5
  plainStage fossano limonePiemonte 150.0

  -- Stage 6
  plainStage cuneo varazze 190.0

  -- Stage 7
  plainStage viareggio lidoDiCamaiore 159.0

  -- Stage 8
  plainStage capannori orvieto 237.0

  -- Stage 9
  plainStage tivoli caserta 41.0

  -- Stage 10
  plainStage maddaloni benevento 118.0

  -- Stage 11
  plainStage benevento campitelloMatese 140.0

  -- Stage 12
  plainStage campobasso chieti 200.0

  -- Stage 13
  plainStage chieti sanGiacomoDiValleCastellana 190.0

  -- Stage 14
  outAndBackIndividualTimeTrial numana 30.0

  transferDay

  -- Stage 15
  plainStage termeEuganee conegliano 156.0

  -- Stage 16
  plainStage conegliano corvara 163.0

  -- Stage 17
  plainStage corvara folgaria 222.0

  -- Stage 18
  plainStage rovereto brescia 143.0

  -- Stage 19
  individualTimeTrial cambiago monticelloBrianza 46.0

  -- Stage 20
  plainStage cantu milan 141.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2003 :: StageRace
giro2003 = evalState giro2003' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2003 5 10))

giro2003' :: State StageRaceState StageRace
giro2003' = do
  -- Stage 1
  criterium lecce 201.0

  -- Stage 2
  plainStage copertino matera 177.0

  -- Stage 3
  plainStage policoro termLuigiane 145.0

  -- Stage 4
  plainStage termLuigiane viboValentia 170.0

  -- Stage 5
  plainStage messina catania 176.0

  transferDay

  -- Stage 6
  plainStage maddaloni avezzano 222.0

  -- Stage 7
  plainStage avezzano monteTerminillo 146.0

  -- Stage 8
  plainStage rieti arezzo 214.0

  -- Stage 9
  plainStage arezzo montecatiniTerme 160.0

  -- Stage 10
  plainStage montecatiniTerme faenza 202.0

  -- Stage 11
  plainStage faenza sanDonaDiPiave 222.0

  -- Stage 12
  mountainStage (Left sanDonaDiPiave) 185
  addCol 185 monteZoncolan C1

  -- Stage 13
  plainStage pordenone marostica 149.0

  -- Stage 14
  plainStage marostica alpeDiPampeago 162.0

  -- Stage 15
  individualTimeTrial merano bolzano 42.5

  -- Stage 16
  plainStage arco pavia 207.0

  transferDay

  -- Stage 17
  plainStage saliceTerme asti 117.0

  -- Stage 18
  plainStage sanuarioDiVicoforte chianale 174.0

  -- Stage 19
  plainStage canelli cascataDelToce 239.0

  -- Stage 20
  plainStage cannobio cantu 133.0

  -- Stage 21
  outAndBackIndividualTimeTrial milan 33.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2004 :: StageRace
giro2004 = evalState giro2004' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2004 5 8))

giro2004' :: State StageRaceState StageRace
giro2004' = do
  -- Prologue
  outAndBackPrologue genoa 6.9

  -- Stage 1
  plainStage genoa alba 143.0

  -- Stage 2
  plainStage noviLigure pontremoli 184.0

  -- Stage 3
  plainStage pontremoli cornoAlleScale 191.0

  -- Stage 4
  plainStage porrettaTerme civitellaDiValDiChiana 184.0

  -- Stage 5
  plainStage civitellaDiValDiChiana spoleto 177.0

  -- Stage 6
  plainStage spoleto valmontone 164.0

  -- Stage 7
  plainStage frosinone montevergineDiMercogliano 214.0

  -- Stage 8
  plainStage giffoniVallePiana policoro 214.0

  -- Stage 9
  plainStage policoro carovigno 142.0

  transferDay

  -- Stage 10
  plainStage portoSant'Elpidio ascoliPiceno 146.0

  -- Stage 11
  plainStage portoSant'Elpidio cesena 228.0

  -- Stage 12
  plainStage cesena treviso 210.0

  -- Stage 13
  outAndBackIndividualTimeTrial trieste 52.0

  -- Stage 14
  plainStage trieste pula 175.0

  -- Stage 15
  plainStage porec sanVendemiano 234.0

  -- Stage 16
  plainStage sanVendemiano pfalzen 217.0

  transferDay

  -- Stage 17
  plainStage bruneck fondoSarnonico 153.0

  -- Stage 18
  plainStage cles bormio2000 118.0

  -- Stage 19
  plainStage bormio presolana 122.0

  -- Stage 20
  plainStage clusone milan 149.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2005 :: StageRace
giro2005 = evalState giro2005' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2005 5 7))

giro2005' :: State StageRaceState StageRace
giro2005' = do
  -- Prologue
  outAndBackPrologue reggioCalabria 1.1

  -- Stage 1
  plainStage reggioCalabria tropea 208.0

  -- Stage 2
  plainStage catanzaroLido santaMariaDelCedro 182.0

  -- Stage 3
  plainStage diamante giffoniVallePiana 205.0

  -- Stage 4
  plainStage giffoniVallePiana frosinone 211.0

  -- Stage 5
  plainStage celano l'Aquila 223.0

  -- Stage 6
  plainStage viterbo marinaDiGrosseto 153.0

  -- Stage 7
  plainStage grosseto pistoia 211.0

  -- Stage 8
  individualTimeTrial lamporecchio florence 45.0

  -- Stage 9
  plainStage florence ravenna 139.0

  transferDay

  -- Stage 10
  plainStage ravenna rossantoVeneto 212.0

  -- Stage 11
  plainStage marostica zoldoAlto 150.0

  -- Stage 12
  plainStage alleghe rovereto 178.0

  -- Stage 13
  plainStage mezzocorona urtijei 218.0

  -- Stage 14
  plainStage neumarkt livigno 210.0

  -- Stage 15
  plainStage villaDiTirano lissone 154.0

  transferDay

  -- Stage 16
  plainStage lissone varazze 210.0

  -- Stage 17
  plainStage varazze limonePiemonte 194.0

  -- Stage 18
  individualTimeTrial chieri turin 34.0

  -- Stage 19
  mountainStage (Left savigliano) 190
  addCol 190 sestriere C1

  -- Stage 20
  plainStage albeseConCassano milan 119.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2006 :: StageRace
giro2006 = evalState giro2006' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2006 5 6))

giro2006' :: State StageRaceState StageRace
giro2006' = do
  -- Stage 1
  outAndBackIndividualTimeTrial seraing 6.2

  -- Stage 2
  plainStage mons charleroi 197.0

  -- Stage 3
  plainStage perwez namur 202.0

  -- Stage 4
  plainStage wanze hotton 193.0

  transferDay

  -- Stage 5
  teamTimeTrial piacenza cremona 38.0

  -- Stage 6
  plainStage busseto forli 227.0

  -- Stage 7
  plainStage cesena saltara 236.0

  -- Stage 8
  plainStage civitanovaMarche maielletta 171.0

  -- Stage 9
  plainStage francavillaAlMare termoli 121.0

  -- Stage 10
  plainStage termoli peschici 187.0

  transferDay

  -- Stage 11
  outAndBackIndividualTimeTrial pontedera 50.0

  -- Stage 12
  plainStage livorno sestriLevante 171.0

  -- Stage 13
  plainStage alessandria laThuile 218.0

  -- Stage 14
  plainStage aosta domodossola 223.0

  -- Stage 15
  plainStage mergozzo brescia 189.0

  -- Stage 16
  plainStage rovato trento 173.0

  -- Stage 17
  plainStage tramin planDeCorones 133.0

  -- Stage 18
  plainStage sillian gemonaDelFriuli 210.0

  -- Stage 19
  plainStage pordenone passoDiSanPellegrino 224.0

  -- Stage 20
  mountainStage (Left trento) 211
  addCol 211 aprica C3

  -- Stage 21
  plainStage museoDelGhisallo milan 140.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2007 :: StageRace
giro2007 = evalState giro2007' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2007 5 12))

giro2007' :: State StageRaceState StageRace
giro2007' = do
  -- Stage 1
  teamTimeTrial caprera laMaddalena 25.6

  -- Stage 2
  plainStage tempioPausania bosa 205.0

  -- Stage 3
  plainStage barumini cagliari 181.0

  transferDay

  -- Stage 4
  plainStage salerno montevergineDiMercogliano 153.0

  -- Stage 5
  plainStage teano frascati 173.0

  -- Stage 6
  plainStage tivoli spoleto 177.0

  -- Stage 7
  plainStage spoleto scarperia 254.0

  -- Stage 8
  plainStage barberinoDiMugello fioranoModenese 200.0

  -- Stage 9
  plainStage reggioEmilia lidoDiCamaiore 177.0

  -- Stage 10
  plainStage camaiore santuarioNostraSignoraDellaGuardia 250.0

  -- Stage 11
  plainStage serravilleScrivia pinerolo 198.0

  -- Stage 12
  plainStage scalenghe briancon 163.0

  -- Stage 13
  individualTimeTrial biella santuarioDiOropa 12.6

  -- Stage 14
  plainStage cantu bergamo 192.0

  -- Stage 15
  plainStage trento treCimeDiLavaredo 184.0

  transferDay

  -- Stage 16
  plainStage agordo lienz 189.0

  -- Stage 17
  mountainStage (Left lienz) 142
  addCol 142 monteZoncolan C1

  -- Stage 18
  plainStage udine riesePioX 203.0

  -- Stage 19
  plainStage treviso termeDiComano 179.0

  -- Stage 20
  individualTimeTrial bardolino verona 43.0

  -- Stage 21
  plainStage vestone milan 185.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2008 :: StageRace
giro2008 = evalState giro2008' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2008 5 10))

giro2008' :: State StageRaceState StageRace
giro2008' = do
  -- Stage 1
  outAndBackTeamTimeTrial palermo 23.6

  -- Stage 2
  plainStage cefalu agrigento 207.0

  -- Stage 3
  plainStage catania milazzo 221.0

  -- Stage 4
  plainStage pizzoCalabro catanzaroLungomare 183.0

  -- Stage 5
  plainStage belvedereMarittimo contursiTerme 203.0

  -- Stage 6
  plainStage potenza peschici 231.6

  -- Stage 7
  plainStage vasto pescocostanzo 180.0

  -- Stage 8
  plainStage rivisondoli tivoli 208.0

  -- Stage 9
  plainStage civitavecchia sanVincenzo 218.0

  transferDay

  -- Stage 10
  individualTimeTrial pesaro urbino 39.4

  -- Stage 11
  plainStage urbania cesena 199.0

  -- Stage 12
  plainStage forli carpi 172.0

  -- Stage 13
  plainStage modena cittadella 177.0

  -- Stage 14
  plainStage verona alpeDiPampeago 195.0

  -- Stage 15
  plainStage arabba passoFedaia 153.0

  -- Stage 16
  individualTimeTrial sanVigilloDiMarebbe planDeCorones 12.8

  transferDay

  -- Stage 17
  plainStage sondrio locarno 146.0

  -- Stage 18
  plainStage mendrisio varese 147.0

  -- Stage 19
  plainStage legnago presolana 238.0

  -- Stage 20
  plainStage rovetta tirano 224.0

  -- Stage 21
  outAndBackIndividualTimeTrial milan 28.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2009 :: StageRace
giro2009 = evalState giro2009' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2009 5 9))

giro2009' :: State StageRaceState StageRace
giro2009' = do
  -- Stage 1
  outAndBackTeamTimeTrial lidoVenice 20.5

  -- Stage 2
  plainStage jesolo trieste 156.0

  -- Stage 3
  plainStage grado valdobbiadene 198.0

  -- Stage 4
  mountainStage (Left padua) 162
  addCol 162 sanMartinoDiCastrozza C2

  -- Stage 5
  roadStage (Right sanMartinoDiCastrozza) (Just alpeDiSiusi) 125.0

  -- Stage 6
  plainStage brixen mayrhofen 248.0

  -- Stage 7
  plainStage innsbruck chiavenna 244.0

  -- Stage 8
  plainStage morbegno bergamo 209.0

  -- Stage 9
  criterium milan 165.0

  transferDay

  -- Stage 10
  plainStage cuneo pinerolo 262.0

  -- Stage 11
  plainStage turin arenzano 214.0

  -- Stage 12
  individualTimeTrial sestriLevante riomaggiore 60.6

  -- Stage 13
  plainStage lidoDiCamaiore florence 176.0

  -- Stage 14
  plainStage campiBisenzio bologna 172.0

  -- Stage 15
  plainStage forli faenza 161.0

  -- Stage 16
  plainStage pergola montePetrano 237.0

  transferDay

  -- Stage 17
  plainStage chieti blockhaus 83.0

  -- Stage 18
  plainStage sulmona benevento 182.0

  -- Stage 19
  plainStage avellino mountVesuvius 164.0

  -- Stage 20
  plainStage naples anagi 203.0

  -- Stage 21
  outAndBackIndividualTimeTrial rome 14.4

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2010 :: StageRace
giro2010 = evalState giro2010' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2010 5 8))

giro2010' :: State StageRaceState StageRace
giro2010' = do
  -- Stage 1
  outAndBackIndividualTimeTrial amsterdam 8.4

  -- Stage 2
  plainStage amsterdam utrecht 209.0

  -- Stage 3
  plainStage amsterdam middleburg 224.0

  transferDay

  -- Stage 4
  teamTimeTrial savigliano cuneo 32.5

  -- Stage 5
  plainStage novara noviLigure 168.0

  -- Stage 6
  plainStage fidenza marinaDiCarrara 166.0

  -- Stage 7
  plainStage carrara montalcino 215.0

  -- Stage 8
  plainStage chianciano monteTerminillo 189.0

  -- Stage 9
  plainStage frosinone cavaDe'Tirreni 188.0

  -- Stage 10
  plainStage avellino bitonto 220.0

  -- Stage 11
  plainStage lucera l'Aquila 256.0

  -- Stage 12
  plainStage cittaSant'Angelo portoRecanati 191.0

  -- Stage 13
  plainStage portoRecanati cesenatico 222.0

  -- Stage 14
  let asoloMonteGrappa = clone monteGrappa "Asolo"
  mountainStage (Left ferrara) 201
  addCol 201 asoloMonteGrappa C1

  -- Stage 15
  mountainStage (Left mestre) 161
  addCol 161 monteZoncolan C1

  transferDay

  -- Stage 16
  individualTimeTrial mareo planDeCorones 12.9

  -- Stage 17
  plainStage bruneck peioTerme 173.0

  -- Stage 18
  plainStage levicoTerme brescia 151.0

  -- Stage 19
  mountainStage (Left brescia) 195
  addCol 195 aprica C3

  -- Stage 20
  plainStage bormio passoDelTonale 178.0

  -- Stage 21
  outAndBackIndividualTimeTrial verona 15.3

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2011 :: StageRace
giro2011 = evalState giro2011' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2011 5 7))

giro2011' :: State StageRaceState StageRace
giro2011' = do
  -- Stage 1
  teamTimeTrial veneriaReale turin 19.3

  -- Stage 2
  plainStage alba parma 244.0

  -- Stage 3
  plainStage reggioEmilia rapallo 173.0

  -- Stage 4
  plainStage quartoDeiMille livorno 216.0

  -- Stage 5
  plainStage piombino orvieto 191.0

  -- Stage 6
  plainStage orvieto fiuggi 216.0

  -- Stage 7
  plainStage maddaloni montevergineDiMercogliano 110.0

  -- Stage 8
  plainStage sapri tropea 217.0

  -- Stage 9
  plainStage messina etna 169.0

  transferDay

  -- Stage 10
  plainStage termoli teramo 159.0

  -- Stage 11
  plainStage teramo castelfidardo 142.0

  -- Stage 12
  plainStage castelfidardo ravenna 184.0

  -- Stage 13
  plainStage spilimbergo grossglockner 167.0

  -- Stage 14
  mountainStage (Left lienz) 170
  addCol 170 monteZoncolan C1

  -- Stage 15
  plainStage conegliano gardecciaValDiFassa 229.0

  transferDay

  -- Stage 16
  individualTimeTrial belluno nevegal 12.7

  -- Stage 17
  plainStage feltre tirano 230.0

  -- Stage 18
  plainStage morbegno sanPellegrinoTerme 151.0

  -- Stage 19
  plainStage bergamo macugnaga 209.0

  -- Stage 20
  mountainStage (Left verbania) 242
  addCol 242 sestriere C1

  -- Stage 21
  outAndBackIndividualTimeTrial milan 26.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2012 :: StageRace
giro2012 = evalState giro2012' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2012 5 5))

giro2012' :: State StageRaceState StageRace
giro2012' = do
  -- Stage 1
  outAndBackIndividualTimeTrial herning 8.7

  -- Stage 2
  criterium herning 206.0

  -- Stage 3
  criterium horsens 190.0

  transferDay

  -- Stage 4
  outAndBackTeamTimeTrial verona 33.2

  -- Stage 5
  plainStage modena fano 209.0

  -- Stage 6
  plainStage urbino portoSant'Elpidio 210.0

  -- Stage 7
  plainStage recanati roccaDiCambio 205.0

  -- Stage 8
  plainStage sulmona lagoLaceno 229.0

  -- Stage 9
  plainStage sanGiorgioDelSannio frosinone 166.0

  -- Stage 10
  plainStage civitavecchia assisi 186.0

  -- Stage 11
  plainStage assisi montecatiniTerme 255.0

  -- Stage 12
  plainStage seravezza sestriLevante 155.0

  -- Stage 13
  plainStage savona cervere 121.0

  -- Stage 14
  plainStage cherasco cervinia 206.0

  -- Stage 15
  plainStage bustoArsizio leccoPianDeiResinelli 169.0

  transferDay

  -- Stage 16
  plainStage limoneSulGarda pfalzen 173.0

  -- Stage 17
  plainStage pfalzen cortinaD'Ampezzo 186.0

  -- Stage 18
  plainStage sanVitoDiCadore vedelago 149.0

  -- Stage 19
  plainStage treviso alpeDiPampeago 198.0

  -- Stage 20
  mountainStage (Left caldesValDiSole) 219
  addCol 219 passoDelloStelvio C1

  -- Stage 21
  outAndBackIndividualTimeTrial milan 28.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2013 :: StageRace
giro2013 = evalState giro2013' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2013 5 4))

giro2013' :: State StageRaceState StageRace
giro2013' = do
  -- Stage 1
  criterium naples 130.0

  -- Stage 2
  teamTimeTrial ischia forio 17.4

  -- Stage 3
  plainStage sorrento marinaDiAscea 222.0

  -- Stage 4
  plainStage policastroBussentino serraSanBruno 246.0

  -- Stage 5
  plainStage cosenza matera 203.0

  -- Stage 6
  plainStage molaDiBari margheritaDiSavoia 169.0

  -- Stage 7
  plainStage sanSalvo pescara 177.0

  -- Stage 8
  individualTimeTrial gabicceMare saltara 54.8

  -- Stage 9
  plainStage sansepolcro florence 170.0

  transferDay

  -- Stage 10
  plainStage cordenons altopianoDelMontasio 167.0

  -- Stage 11
  plainStage caveDelPredil ertoECasso 182.0

  -- Stage 12
  plainStage longarne treviso 134.0

  -- Stage 13
  plainStage busseto cherasco 254.0

  -- Stage 14
  plainStage cervere bardonecchia 180.0

  -- Stage 15
  plainStage cesanaTorinese colDuGalibierValloire 149.0

  transferDay

  -- Stage 16
  plainStage valloire ivrea 238.0

  -- Stage 17
  plainStage caravaggio vicenza 214.0

  -- Stage 18
  individualTimeTrial mori polsa 20.6

  -- Stage 19
  plainStage ponteDiLegno martell 139.0

  -- Stage 20
  plainStage schlanders treCimeDiLavaredo 203.0

  -- Stage 21
  plainStage riesePioX brescia 197.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2014 :: StageRace
giro2014 = evalState giro2014' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2014 5 9))

giro2014' :: State StageRaceState StageRace
giro2014' = do
  -- Stage 1
  outAndBackTeamTimeTrial belfast 21.7

  -- Stage 2
  criterium belfast 219.0

  -- Stage 3
  plainStage armagh dublin 187.0

  transferDay

  -- Stage 4
  plainStage giovinazzo bari 112.0

  -- Stage 5
  plainStage taranto viggiano 203.0

  -- Stage 6
  plainStage sassono montecassino 257.0

  -- Stage 7
  plainStage frosinone foligno 211.0

  -- Stage 8
  plainStage foligno montecopiolo 179.0

  -- Stage 9
  plainStage lugo sestola 172.0

  transferDay

  -- Stage 10
  plainStage modena salsomaggioreTerme 173.0

  -- Stage 11
  plainStage collecchio savona 249.0

  -- Stage 12
  individualTimeTrial barbaresco barolo 41.9

  -- Stage 13
  plainStage fossano rivaroloCanavese 157.0

  -- Stage 14
  plainStage agile oropa 164.0

  -- Stage 15
  plainStage valdengo montecampione 225.0

  transferDay

  -- Stage 16
  plainStage ponteDiLegno valMartello 139.0

  -- Stage 17
  plainStage sarnonico vittorioVeneto 208.0

  -- Stage 18
  plainStage belluno rifugioPanarotta 171.0

  -- Stage 19
  individualTimeTrial bassanoDelGrappa cimaGrappa 26.8

  -- Stage 20
  mountainStage (Left maniago) 167
  addCol 167 monteZoncolan C1

  -- Stage 21
  plainStage gemonaDelFriuli trieste 172.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2015 :: StageRace
giro2015 = evalState giro2015' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2015 5 9))

giro2015' :: State StageRaceState StageRace
giro2015' = do
  -- Stage 1
  teamTimeTrial sanLorenzoAlMare sanRemo 17.6

  -- Stage 2
  plainStage albenga genoa 177.0

  -- Stage 3
  plainStage rapallo sestriLevante 136.0

  -- Stage 4
  plainStage chiavari laSpezia 150.0

  -- Stage 5
  plainStage laSpezia abetone 152.0

  -- Stage 6
  plainStage montecatiniTerme castiglioneDellaPescaia 183.0

  -- Stage 7
  plainStage grosseto fiuggi 264.0

  -- Stage 8
  plainStage fiuggi campitelloMatese 186.0

  -- Stage 9
  plainStage benevento sanGiorgioDelSannio 224.0

  transferDay

  -- Stage 10
  plainStage civitanovaMarche forli 200.0

  -- Stage 11
  plainStage forli autodromoEnzoEDinoFerrari 153.0

  -- Stage 12
  plainStage imola vicenzaMonteBerico 190.0

  -- Stage 13
  plainStage montecchioMaggiore jesolo 147.0

  -- Stage 14
  individualTimeTrial treviso valdobbiadene 59.4

  -- Stage 15
  plainStage marostica madonnaDiCampiglio 165.0

  transferDay

  -- Stage 16
  mountainStage (Left pinzolo) 174
  addCol 174 aprica C3

  -- Stage 17
  plainStage tirano lugano 134.0

  -- Stage 18
  plainStage melide verbania 170.0

  -- Stage 19
  plainStage gravellonaToce cervinia 236.0

  -- Stage 20
  mountainStage (Left saintVincent) 196
  addCol 196 sestriere C1

  -- Stage 21
  plainStage turin milan 185.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

giro2016 :: StageRace
giro2016 = evalState giro2016' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2016 5 6))

giro2016' :: State StageRaceState StageRace
giro2016' = do
  -- Stage 1
  outAndBackIndividualTimeTrial apeldoorn 9.8

  -- Stage 2
  plainStage arnhem nijmegen 190

  -- Stage 3
  plainStage nijmegen arnhem 190

  transferDay

  -- Stage 4
  plainStage catanzaro praiaAMare 200

  -- Stage 5
  plainStage praiaAMare benevento 233

  -- Stage 6
  let aremogna = Location "Roccaraso (Aremogna)" Italy
  plainStage ponte aremogna 157

  -- Stage 7
  plainStage sulmona foligno 211

  -- Stage 8
  plainStage foligno arezzo 186

  -- Stage 9
  let chianti = Location "Chianti Classico Stage" Italy
  outAndBackIndividualTimeTrial chianti 40.5

  transferDay

  -- Stage 10
  plainStage campiBisenzio sestola 219

  -- Stage 11
  plainStage modena asolo 227

  -- Stage 12
  plainStage noale bibione 182

  -- Stage 13
  plainStage palmanova cividaleDelFruili 170

  -- Stage 14
  let farra = Location "Alpago (Farra)" Italy
  plainStage farra corvara 210

  -- Stage 15
  let seiseralm = Location "Alpe di Siusi/Seiseralm" Italy
  individualTimeTrial castelrotto seiseralm 10.8

  transferDay

  -- Stage 16
  plainStage bressanone andalo 132

  -- Stage 17
  plainStage molveno cassanoDAdda 196

  -- Stage 18
  plainStage muggio pinerolo 244

  -- Stage 19
  mountainStage (Left pinerolo) 162
  addCol 162 risoul C1

  -- Stage 20
  plainStage guillestre sant'AnnaDiVinadio 134

  -- Stage 21
  plainStage cuneo torino 163

  race <- ParcoursDB.State.StageRace.build
  return race

giro2017 :: StageRace
giro2017 = evalState giro2017' (ParcoursDB.State.StageRace.init (Giro [])(fromGregorian 2017 5 5))

giro2017' :: State StageRaceState StageRace
giro2017' = do
  -- Stage 1
  plainStage alghero olbia 206

  -- Stage 2
  plainStage olbia tortoli 221

  -- Stage 3
  plainStage tortoli cagliari 148

  transferDay

  -- Stage 4
  plainStage cefalu etna 181

  -- Stage 5
  plainStage pedara messina 159

  -- Stage 6
  plainStage reggioCalabria termeLuigiane 217

  -- Stage 6
  let alberobello = Location "Alberobello (Valle D'Itria)" Italy

  -- Stage 7
  plainStage castrovillari alberobello 224

  -- Stage 8
  plainStage molfetta peschici 189

  -- Stage 9
  plainStage monteneroDiBisaccia blockhaus 149

  transferDay

  -- Stage 10
  individualTimeTrial foligno montefalco 39.8

  -- Stage 11
  let firenze = Location "Firenze (Ponte a Ema)" Italy
  plainStage firenze bagnoDiRomagna 161

  -- Stage 12
  plainStage forli reggioEmilia 234

  -- Stage 13
  plainStage reggioEmilia tortona 167

  -- Stage 14
  let oropa = Location "Oropa (Biella)" Italy
  plainStage castellania oropa 131

  -- Stage 15
  plainStage valdengo bergamo 199

  transferDay

  -- Stage 16
  plainStage rovetta bormio 222

  -- Stage 17
  let canazei = Location "Canazei (Val di Fassa)" Italy
  plainStage tirano canazei 219

  -- Stage 18
  let moena = Location "Moena (Val di Fassa)" Italy
  let ortisei = Location "Ortisei/St. Ulrich (Val Gardena)" Italy
  plainStage moena ortisei 137

  -- Stage 19
  let sanCandido = Location "San Candido/Innichen" Italy
  let piancavallo = Location "Piancavallo (Monte Jafferau)" Italy
  plainStage sanCandido piancavallo 191

  -- Stage 20
  plainStage pordenone asiago 190

  -- Stage 21
  individualTimeTrial monza milan 29.3

  race <- ParcoursDB.State.StageRace.build
  return race

giro2018 :: StageRace
giro2018 = evalState giro2018' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2018 5 4))

giro2018' :: State StageRaceState StageRace
giro2018' = do
  -- Stage 1
  outAndBackIndividualTimeTrial jerusalem 9.7

  -- Stage 2
  plainStage haifa telAviv 167
  c4' 91 "Zikhrow Ya'Aqov" Israel 162

  -- Stage 3
  plainStage beersheba eilat 229
  c4' 127.8 "Faran River" Israel 322

  transferDay

  -- Stage 4
  plainStage catania caltagirone 202
  c4' 86.4 "Pietre Calde" Italy 779
  c4' 154.5 "Vizzini" Italy 595

  -- Stage 5
  let santaNinfa = Location "Santa Ninfa (Valle del Belice)" Italy
  plainStage agrigento santaNinfa 153
  c4' 90.7 "Santa Margherita di Belice" Italy 430
  c4' 111.8 "Partanna" Italy 405

  -- Stage 6
  mountainStage (Left caltanissetta) 169
  c1' 169 "Mount Etna" Italy 1736

  -- Stage 7
  plainStage pizzo praiaAMare 159

  -- Stage 8
  mountainStage (Left praiaAMare) 209
  c2' 209 "Montevergine Di Mercogliano" Italy 1260

  -- Stage 9
  let granSasso = Location "Gran Sasso d'Italia (Campo Imperatore)" Italy
  plainStage pescoSannita granSasso 225
  c2' 108.1 "Roccaraso" Italy 1252
  c2' 192.9 "Calascio" Italy 1190

  transferDay

  -- Stage 10
  plainStage penne gualdoTadino 244
  c2' 21.8 "Forte Delia Creta" Italy 1254
  c3' 61.2 "Bruzzolana" Italy 523
  c4' 213.5 "Annifo" Italy 895

  -- Stage 11
  plainStage assisi osimo 156
  c3' 41.7 "Passo Cornello" Italy 814
  c3' 97.5 "Valico di Pietra Rossa" Italy 674

  -- Stage 12
  plainStage osimo imola 214
  c4' 206.6 "Tre Monti" Italy 252

  -- Stage 13
  plainStage ferrara nervesaDellaBattaglia 180
  c4' 160.7 "Montello" Italy 242

  -- Stage 14
  mountainStage (Left sanVitoAlTagliamento) 186
  c3' 43.3 "Monte di Ragogna" Italy 494
  c3' 106 "Avaglio" Italy 738
  c2' 142.5 "Passo Duron" Italy 1609
  c3' 165.8 "Sella Valcalda Ravascletto" Italy 958
  addCol 186 monteZoncolan C1

  -- Stage 15
  plainStage tolmezzo sappada 176
  c3' 48.4 "Passo della Mauria" Italy 1301
  c2' 110.6 "Passo Tre Croci" Italy 1805
  c2' 146.9 "Passo di Sant'Antonio" Italy 1470
  c2' 160.6 "Costalissoio (Bosco dei Giavi)" Italy 1300

  transferDay

  -- Stage 16
  individualTimeTrial trento rovereto 34.2

  -- Stage 17
  plainStage rivaDelGarda iseo 149.5
  c3' 71.5 "Lodrino" Italy 736

  -- Stage 18
  mountainStage (Left abbiategrasso) 196
  c1' 196 "Prato Nevoso" Italy 1607

  -- Stage 19
  mountainStage (Left veneriaReale) 185
  c2' 48.9 "Colle del Lys" Italy 1311
  c1' 110.7 "Colle delle Finestre" Italy 2178
  c3' 138.4 "Sestriere" Italy 2035
  addCol 185 (ParcoursDB.Col.clone monteJafferau "Bardonecchia") C1

  -- Stage 20
  mountainStage (Left susa) 214
  c1' 146.5 "Col Tsecore (Col du Mont-Tseuc)" Italy 1623
  c1' 185.8 "Col de Saint-Pantaleon" Italy 1664
  c1' 214 "Cervinia" Italy 2001

  -- Stage 21
  criterium rome 115

  race <- ParcoursDB.State.StageRace.build
  return race

giro2019 :: StageRace
giro2019 = evalState giro2019' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2019 5 11))

giro2019' :: State StageRaceState StageRace
giro2019' = do
  -- Stage 1
  individualTimeTrial bologna sanLuca 8

  -- Stage 2
  plainStage bologna fucecchio 205
  addCol 157.6 montalbano C3
  addCol 178.7 sanBaronto C4

  -- Stage 3
  plainStage vinci orbetello 220
  addCol 182 poggioL'Appartita C4

  -- Stage 4
  plainStage orbetello frascati 235
  addCol 32.8 manciano C4

  -- Stage 5
  plainStage frascati terracina 140
  addCol 87.2 sezze C4

  -- Stage 6
  plainStage cassino sanGiovanniRotondo 238
  addCol 220.1 coppaCasarinelle C2

  -- Stage 7
  plainStage vasto l'Aquila 185
  addCol 138.8 leSvolteDiPopoli C2

  -- Stage 8
  plainStage tortoretoLido pesaro 239
  addCol 168.5 monteDellaMattera C3
  addCol 203.7 monteluro C4
  addCol 214.9 gabicceMonte C4

  -- Stage 9
  individualTimeTrial riccione sanMarino 34.8

  transferDay

  -- Stage 10
  plainStage ravenna modena 145

  -- Stage 11
  plainStage carpi noviLigure 221
  
  -- Stage 12
  plainStage cuneo pinerolo 158
  addCol 125.9 montoso C1

  -- Stage 13
  let ceresoleReale' = ParcoursDB.Col.vicinity ceresoleReale "Lago Serrù"
  mountainStage (Left pinerolo) 196
  addCol 54.3 colleDelLys C1
  addCol 134.3 pianDelLupo C2
  addCol 196 ceresoleReale' C1

  -- Stage 14
  let courmayeurSkyWayMonteBianco = ParcoursDB.Location.vicinity courmayeur "Skyway Monte Bianco"
  plainStage saintVincent courmayeurSkyWayMonteBianco 131
  addCol 13.8 verrayes C2
  addCol 51.5 verrogne C1
  addCol 75.9 trucD'Arbe C2
  addCol 106.1 colleSanCarlo C1

  -- Stage 15
  plainStage ivrea como 232
  addCol 173.7 madonnaDelGhisallo C2
  addCol 189.6 colmaDiSormano C2

  transferDay

  -- Stage 16
  plainStage lovere ponteDiLegno 194
  addCol 89.6 cevo C3
  addCol 128.2 aprica C3
  addCol 166.3 passoDelMortirolo C1

  -- Stage 17
  let commezzadura' = ParcoursDB.Location.vicinity commezzadura "Val di Sole"
  let anterselvaAntholz = ParcoursDB.Col.dualNameCol anterselva antholz
  mountainStage (Left commezzadura') 181
  addCol 114 elvas C4
  addCol 135.3 terento C3
  addCol 181 anterselvaAntholz C3

  -- Stage 18
  let valdaoraOlang = commune valdaora "Olang"
  plainStage valdaoraOlang santaMariaDiSala 222
  addCol 118.1 pieveDiAlpago C4

  -- Stage 19
  mountainStage (Left treviso) 151
  addCol 66.6 passoDiSanBoldo C3
  addCol 116.5 lamon C4
  addCol 151 sanMartinoDiCastrozza C2

  -- Stage 20
  let croceD'AuneMonteAvena = clone monteAvena "Croce d'Aune-Monte Avena"
  mountainStage (Left feltre) 194
  addCol 27.1 cimaCampo C2
  addCol 78 passoManghen C1
  addCol 133.1 passoRolle C2
  addCol 183.1 croceD'Aune C2
  addCol 194 monteAvena C1

  -- Stage 21
  outAndBackIndividualTimeTrial verona 17
  addCol 9.5 torricelle C4

  race <- ParcoursDB.State.StageRace.build
  return race
