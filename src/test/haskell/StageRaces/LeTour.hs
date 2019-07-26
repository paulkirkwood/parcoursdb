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
import Countries.Belgium
import Countries.France
import Countries.Switzerland
import Countries.WestGermany
import Data.Time
import Mountains.Alpes
import Mountains.MassifArmorican
import Mountains.MassifCentral
import Mountains.Pyrenees
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.NonConsecutiveStageRace
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
                       , tdf1970
                       , tdf1971
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

tdf1970 :: StageRace
tdf1970 = evalState tdf1970' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1970 6 26))

tdf1970' :: State StageRaceState StageRace
tdf1970' = do
  -- Prologue
  prologue' limoges 7.4

  -- Stage 1
  plainStage limoges laRochelle 224

  -- Stage 2
  plainStage laRochelle angers 200

  -- Stages 3a & 3b
  enableSplitStages
  teamTimeTrial' angers 10.7
  plainStage angers rennes 140
  disableSplitStages

  -- Stage 4
  plainStage rennes lisieux 229

  -- Stages 5a & 5b
  enableSplitStages
  plainStage lisieux rouen 94.5
  plainStage rouen amiens 223
  disableSplitStages

  -- Stage 6
  plainStage amiens valenciennes 135.5

  -- Stage 7a & 7b
  enableSplitStages
  plainStage valenciennes forest 120
  individualTimeTrial' forest 7.2
  disableSplitStages

  -- Stage 8
  plainStage ciney Countries.WestGermany.felsberg 232.5

  -- Stage 9
  plainStage Countries.WestGermany.saarlouis mulhouse 269.5

  -- Stage 10
  plainStage belfort divonneLesBains 241

  -- Stage 11a & 11b
  enableSplitStages
  individualTimeTrial' divonneLesBains 8.8
  plainStage divonneLesBains thononLesBains 139.5
  disableSplitStages

  -- Stage 12
  plainStage divonneLesBains grenoble 194

  -- Stage 13
  plainStage grenoble gap 194.5

  -- Stage 14
  summitFinishStage gap 170
  addCol 170 montVentoux

  -- Stage 15
  plainStage carpentras montpellier 140.5

  -- Stage 16
  plainStage montpellier toulouse 160

  -- Stage 17
  plainStage toulouse saintGaudens 190

  -- Stage 18
  plainStage saintGaudens laMongie 135.5

  -- Stage 19
  plainStage bagneresDeBigorre mourenx 185.5

  -- Stages 20a & 20b
  enableSplitStages
  plainStage mourenx bordeaux 223.5
  individualTimeTrial' bordeaux 8.2
  disableSplitStages

  -- Stage 21
  plainStage ruffex tours 191.5

  -- Stage 22
  plainStage tours versailles 238.5

  -- Stage 23
  individualTimeTrial versailles (Just paris) 54

  race <- ParcoursDB.State.StageRace.build
  return race

tdf1971 :: StageRace
tdf1971 = evalState tdf1971' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1971 6 26))

tdf1971' :: State StageRaceState StageRace
tdf1971' = do
  -- Prologue
  prologue' mulhouse 11.0

  -- Stages 1a, 1b & 1c
  enableSplitStages
  plainStage mulhouse basel 59.5
  plainStage basel Countries.WestGermany.freiburg 90
  plainStage Countries.WestGermany.freiburg mulhouse 74.5
  disableSplitStages

  -- Stage 2
  plainStage mulhouse strasbourg 144

  -- Stage 3
  plainStage strasbourg nancy 165.6

  -- Stage 4
  plainStage nancy marcheEnFamenne 242

  -- Stage 5
  plainStage dinant roubaix 208.5

  -- Stage 6a & 6b
  enableSplitStages
  plainStage roubaix amiens 127.5
  plainStage amiens leTouquet 133.5
  disableSplitStages

  restDay leTouquet

  -- Stage 7
  plainStage rungis nevers 257.5

  -- Stage 8
  plainStage nevers puyDeDome 221

  -- Stage 9
  plainStage clermontFerrand saintEtienne 153.0

  -- Stage 10
  plainStage saintEtienne grenoble 188.5

  -- Stage 11
  plainStage grenoble orcieres 134

  restDay orcieres

  -- Stage 12
  plainStage orcieres marseille 251.0

  -- Stage 13
  criterium albi 16.3

  -- Stage 14
  plainStage revel luchon 214.5

  -- Stage 15
  plainStage luchon superbagneres 19.6

  -- Stages 16a & 16b
  enableSplitStages
  plainStage luchon gourette 145
  plainStage gourette pau 57.5
  disableSplitStages

  -- Stage 17
  plainStage montDeMarsan bordeaux 188

  -- Stage 18
  plainStage bordeaux poitiers 244

  -- Stage 19
  plainStage blois versailles 244

  -- Stage 20
  individualTimeTrial versailles (Just paris) 53.8

  race <- ParcoursDB.State.StageRace.build
  return race

tdf2018 :: StageRace
tdf2018 = evalState tdf2018' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2018 7 7))

tdf2018' :: State StageRaceState StageRace
tdf2018' = do
  -- Stage 1
  plainStage noirmoutier fontenayLeComte 201
  c4 173 "Cote de Vix" France 30 0.7 4.2

  -- Stage 2
  plainStage mouilleronSaintGermain laRocheSurYon 182.5
  c4 28 "Cote de Pouzauges" France 202 1 3.9

  -- Stage 3
  teamTimeTrial' cholet 35.5

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

  restDay annecy

  -- Stage 10
  mountainStage annecy leGrandBornard 158.5
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

  restDay lourdes

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
  individualTimeTrial saintPeeSurNivelle (Just espelette) 31

  -- Stage 21
  plainStage houilles paris 116

  race <- ParcoursDB.State.StageRace.build
  return race
