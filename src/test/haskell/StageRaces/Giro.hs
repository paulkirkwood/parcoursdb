-- file StageRaces.Giro.hs
module StageRaces.Giro
(giro1980
,giro1981
,giro1987
,giro2016
,giro2017
,giro2018
,giroEditions
)where

import Control.Monad.State
import Countries.Fiume
import Countries.France
import Countries.Israel
import Countries.Italy
import Countries.Netherlands
import Countries.SanMarino
import Data.Time
import Mountains.Alpes
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.StageRace
import ParcoursDB.State.NonConsecutiveStageRace

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
               , giro1980
               , giro1981
               , giro1987
               , giro2016
               , giro2017
               , giro2018
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

giro1980 :: StageRace
giro1980 = evalState giro1980' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1980 5 15))

giro1980' :: State StageRaceState StageRace
giro1980' = do
  prologue' genoa 7
  plainStage genoa imperia 123
  plainStage imperia turin 179
  plainStage turin parma 243
  plainStage parma marinaDiPisa 193
  individualTimeTrial pontedera pisa 36
  transferDay
  plainStage rioMarina portoferraio 126
  plainStage castigilioneDellaPescaia orvieto 200
  plainStage orvieto fiuggi 216
  plainStage fiuggi sorrento 247
  plainStage sorrento palinuro 177
  plainStage palinuro campotenese 145
  plainStage villapianaLido campiSalentina 203
  plainStage campiSalentina barletta 220
  plainStage foggia roccaraso 186
  plainStage roccaraso termamo 194
  plainStage giulianova gatteoAMare 229
  plainStage gatteoAMare sirmione 237
  plainStage sirmione zoldoAlto 239
  plainStage longarone cles 241
  plainStage cles sondrio 221
  individualTimeTrial saronno turbigo 50
  criterium milan 114
  race <- ParcoursDB.State.StageRace.build
  return race

giro1981 :: StageRace
giro1981 = evalState giro1981' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1981 5 13))

giro1981' :: State StageRaceState StageRace
giro1981' = do
  prologue' trieste 6.6
  enableSplitStages
  plainStage trieste bibione 100
  ParcoursDB.State.StageRace.teamTimeTrial lignanoSabbiadoro bibione 15
  disableSplitStages
  plainStage bibione ferrara 211
  plainStage bologna recanati 255
  transferDay
  plainStage recanati lanciano 214
  plainStage marinaDiSanVito rodiGarganico 180
  plainStage rodiGarganico bari 225
  plainStage bari potenza 143
  plainStage salaConsilina cosenza 202
  plainStage cosenza reggioCalabria 231
  transferDay
  plainStage rome cascia 166
  plainStage cascia arezzo 199
  plainStage arezzo livorno 224
  individualTimeTrial empoli montecatiniTerme 35
  plainStage montecatiniTerme salsomaggioreTerme 224
  plainStage salsomaggioreTerme pavia 198
  plainStage milan mantua 178
  plainStage mantua borno 215
  plainStage borno dimaro 127
  transferDay
  plainStage dimaro sanVigilloDiMarebbe 208
  plainStage sanVigilloDiMarebbe treCimeDiLavaredo 100
  plainStage auronzoDiCadore arzignano 197
  individualTimeTrial soave verona 42
  race <- ParcoursDB.State.StageRace.build
  return race

giro1987 :: StageRace
giro1987 = evalState giro1987' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 1987 5 21))

giro1987' :: State StageRaceState StageRace
giro1987' = do
  prologue' sanRemo 4
  enableSplitStages
  plainStage sanRemo sanRomolo 31
  individualTimeTrial poggioDiSanRemo sanRemo 8
  disableSplitStages
  plainStage imperia borgo 242
  ParcoursDB.State.StageRace.teamTimeTrial lerici camaiore 43
  plainStage camaiore montalcino 203
  plainStage montalcino terni 208
  plainStage terni monteTerminillo 134
  plainStage rieti roccaraso 205
  plainStage roccaraso sanGiorgio 168
  plainStage sanGiorgio bari 257
  plainStage bari termoli 210
  transferDay
  plainStage giulianova osimo 245
  plainStage osimo bellaria 197
  individualTimeTrial rimini sanMarino 46
  plainStage sanMarino lidoDiJesolo 260
  plainStage lidoDiJesolo sappada 224
  plainStage sappada canazei 211
  plainStage canazei rivaDelGarda 206
  plainStage rivaDelGarda trescore 213
  plainStage trescore madesimo 160
  plainStage madesimo como 156
  plainStage como pila 252
  individualTimeTrial aosta saintVincent 32
  race <- ParcoursDB.State.StageRace.build
  return race

giro2016 :: StageRace
giro2016 = evalState giro2016' (ParcoursDB.State.StageRace.init (Giro []) (fromGregorian 2016 5 6))

giro2016' :: State StageRaceState StageRace
giro2016' = do
  outAndBackIndividualTimeTrial apeldoorn 9.8
  plainStage arnhem nijmegen 190
  plainStage nijmegen arnhem 190
  transferDay
  plainStage catanzaro praiaAMare 200
  plainStage praiaAMare benevento 233
  let aremogna = Location "Roccaraso (Aremogna)" Italy
  plainStage ponte aremogna 157
  plainStage sulmona foligno 211
  plainStage foligno arezzo 186
  let chianti = Location "Chianti Classico Stage" Italy
  outAndBackIndividualTimeTrial chianti 40.5
  transferDay
  plainStage campiBisenzio sestola 219
  plainStage modena asolo 227
  plainStage noale bibione 182
  plainStage palmanova cividaleDelFruili 170
  let farra = Location "Alpago (Farra)" Italy
  plainStage farra corvara 210
  let seiseralm = Location "Alpe di Siusi/Seiseralm" Italy
  individualTimeTrial castelrotto seiseralm 10.8
  transferDay
  plainStage bressanone andalo 132
  plainStage molveno cassanoDAdda 196
  plainStage muggio pinerolo 244
  plainStage pinerolo risoul 162
  plainStage guillestre sant'AnnaDiVinadio 134
  plainStage cuneo torino 163
  race <- ParcoursDB.State.StageRace.build
  return race

giro2017 :: StageRace
giro2017 = evalState giro2017' (ParcoursDB.State.StageRace.init (Giro [])(fromGregorian 2017 5 5))

giro2017' :: State StageRaceState StageRace
giro2017' = do
  plainStage alghero olbia 206
  plainStage olbia tortoli 221
  plainStage tortoli cagliari 148
  transferDay
  plainStage cefalu etna 181
  plainStage pedara messina 159
  plainStage reggioCalabria termeLuigiane 217
  let alberobello = Location "Alberobello (Valle D'Itria)" Italy
  plainStage castrovillari alberobello 224
  plainStage molfetta peschici 189
  plainStage monteneroDiBisaccia blockhaus 149
  transferDay
  individualTimeTrial foligno montefalco 39.8
  let firenze = Location "Firenze (Ponte a Ema)" Italy
  plainStage firenze bagnoDiRomagna 161
  plainStage forli reggioEmilia 234
  plainStage reggioEmilia tortona 167
  let oropa = Location "Oropa (Biella)" Italy
  plainStage castellania oropa 131
  plainStage valdengo bergamo 199
  transferDay
  plainStage rovetta bormio 222
  let canazei = Location "Canazei (Val di Fassa)" Italy
  plainStage tirano canazei 219
  let moena = Location "Moena (Val di Fassa)" Italy
  let ortisei = Location "Ortisei/St. Ulrich (Val Gardena)" Italy
  plainStage moena ortisei 137
  let sanCandido = Location "San Candido/Innichen" Italy
  let piancavallo = Location "Piancavallo (Monte Jafferau)" Italy
  plainStage sanCandido piancavallo 191
  plainStage pordenone asiago 190
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
  summitFinishStage caltanissetta 169
  c1' 169 "Mount Etna" Italy 1736

  -- Stage 7
  plainStage pizzo praiaAMare 159

  -- Stage 8
  summitFinishStage praiaAMare 209
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
  summitFinishStage sanVitoAlTagliamento 186
  c3' 43.3 "Monte di Ragogna" Italy 494
  c3' 106 "Avaglio" Italy 738
  c2' 142.5 "Passo Duron" Italy 1609
  c3' 165.8 "Sella Valcalda Ravascletto" Italy 958
  c1' 186 "Monte Zoncolan" Italy 1730

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
  summitFinishStage abbiategrasso 196
  c1' 196 "Prato Nevoso" Italy 1607

  -- Stage 19
  summitFinishStage veneriaReale 185
  c2' 48.9 "Colle del Lys" Italy 1311
  c1' 110.7 "Colle delle Finestre" Italy 2178
  c3' 138.4 "Sestriere" Italy 2035
  addCol 185 (ParcoursDB.Col.clone monteJafferau "Bardonecchia")

  -- Stage 20
  summitFinishStage susa 214
  c1' 146.5 "Col Tsecore (Col du Mont-Tseuc)" Italy 1623
  c1' 185.8 "Col de Saint-Pantaleon" Italy 1664
  c1' 214 "Cervinia" Italy 2001

  -- Stage 21
  criterium rome 115

  race <- ParcoursDB.State.StageRace.build
  return race
