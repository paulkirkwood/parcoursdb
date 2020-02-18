module ParcoursDB.Classic where

import Data.Time
import ParcoursDB.Berg
import ParcoursDB.Col
import ParcoursDB.Cote
import ParcoursDB.Country
import ParcoursDB.Gravel
import ParcoursDB.Location
import ParcoursDB.Pave
import Text.Printf

data Classic = ParisRoubaix         Day Float [IndexablePave]
             | TourOfFlanders       Day Float [IndexablePave] [IndexableBerg]
             | MilanoSanRemo        Day Float [IndexableCote]
             | LiegeBastogneLiege   Day Float [IndexableCote]
             | LaFlecheWallonne     Day Float [IndexableCote]
             | TourOfLombardy       Day Float [IndexableCote]
             | OmloopHetVolk        Day Float [IndexablePave] [IndexableBerg]
             | GentWevelgem         Day Float [IndexableBerg]
             | E3Harelbeke          Day Float [IndexableBerg]
             | KuurneBrusselsKuurne Day Float [IndexableBerg]
             | AmstelGoldRace       Day Float [IndexableCote]
             | ParisTours           Day Float [IndexableCote] [IndexableGravel]
             | GrandPrixDePlouay    Day Float

date :: Classic -> Day
date (ParisRoubaix d _ _)         = d
date (ParisTours d _ _ _)         = d
date (GrandPrixDePlouay d _)      = d
date (TourOfFlanders d _ _ _)     = d
date (MilanoSanRemo d _ _)        = d
date (LiegeBastogneLiege d _ _)   = d
date (LaFlecheWallonne d _ _)     = d
date (TourOfLombardy d _ _)       = d
date (OmloopHetVolk d _ _ _ )     = d
date (GentWevelgem d _ _)         = d
date (E3Harelbeke d _ _)          = d
date (KuurneBrusselsKuurne d _ _) = d
date (AmstelGoldRace d _ _)       = d

distance :: Classic -> Float
distance (ParisRoubaix _ d _)         = d
distance (ParisTours _ d _ _)         = d
distance (GrandPrixDePlouay _ d)      = d
distance (TourOfFlanders _ d _ _)     = d
distance (MilanoSanRemo _ d _)        = d
distance (LiegeBastogneLiege _ d _)   = d
distance (LaFlecheWallonne _ d _)     = d
distance (TourOfLombardy _ d _)       = d
distance (OmloopHetVolk _ d _ _)      = d
distance (GentWevelgem _ d _)         = d
distance (E3Harelbeke _ d _)          = d
distance (KuurneBrusselsKuurne _ d _) = d
distance (AmstelGoldRace _ d _)       = d

name :: Classic -> String
name (ParisRoubaix _ _ _)          = "Paris-Roubaix"
name (ParisTours d _ _ _)
  | year `elem` [1976 .. 1987] = "Grand Prix d'Automne"
  | otherwise                  = "Paris-Tours"
  where (year,_,_) = toGregorian d
name (TourOfFlanders _ _ _ _)      = "Tour of Flanders"
name (MilanoSanRemo _ _ _)         = "Milano-San Remo"
name (LiegeBastogneLiege _ _ _)    = "Liège-Bastogne-Liège"
name (LaFlecheWallonne _ _ _)      = "La Flèche Wallonne"
name (TourOfLombardy _ _ _)        = "Il Lombardia"
name (GentWevelgem _ _ _ )         = "Gent-Wevelgem"
name (KuurneBrusselsKuurne _ _ _ ) = "Kuurne-Brussels-Kuurne"
name (AmstelGoldRace _ _ _)        = "Amstel Gold Race"
name (OmloopHetVolk d _ _ _)
  | year `elem` [1945,1946] = "Omloop van Vlaanderen"
  | year > 2008             = "Omloop Het Nieuwsblad"
  | otherwise               = "Omloop Het Volk"
  where (year,_,_) = toGregorian d
name (E3Harelbeke d _ _)
  | year `elem` [1958..1961] = "Harelbeke-Antwerp-Harelbeke"
  | year `elem` [1962..2013] = "E3 Prijs Vlaanderen"
  | year `elem` [2014..2018] = "E3 Harelbeke"
  | otherwise                = "E3 BinckBank Classic"
  where (year,_,_) = toGregorian d
name (GrandPrixDePlouay d _)
  | year `elem` [1931..1988] = "Grand-Prix de Plouay"
  | year `elem` [1989..2015] = "GP Ouest-France"
  | otherwise                = "Bretagne Classic Ouest-France"
  where (year,_,_) = toGregorian d

start :: Classic -> Location
start (MilanoSanRemo _ _ _)         = Location "Milan" Italy Nothing
start (LiegeBastogneLiege _ _ _)    = Location "Liège" Belgium Nothing
start (OmloopHetVolk _ _ _ _)       = Location "Ghent" Belgium Nothing
start (E3Harelbeke _ _ _)           = Location "Harelbeke" Belgium Nothing
start (GentWevelgem _ _ _)          = Location "Ghent" Belgium Nothing
start (GrandPrixDePlouay _ _ )      = Location "Plouay" France Nothing
start (KuurneBrusselsKuurne _ _ _ ) = Location "Kuurne" Belgium Nothing
start (ParisRoubaix d _ _)
  | year `elem` [1896,1897,1901] ++ [1929..1937] ++ [1939] = Location "Porte Maillot, Paris" France Nothing
  | year == 1900                                           = Location "Saint-Germain" France Nothing
  | year `elem` [1898,1899] ++ [1902..1913]                = Location "Chatou" France Nothing
  | year `elem` [1914] ++ [1919..1928]                     = Location "Suresnes, Paris" France Nothing
  | year == 1938                                           = Location "Argenteuil" France Nothing
  | year `elem` [1943..1965]                               = Location "Saint-Denis" France Nothing
  | year `elem` [1966..1976]                               = Location "Chantilly" France Nothing
  | otherwise                                              = Location "Compiegne" France Nothing
  where (year,_,_) = toGregorian d
start (TourOfFlanders d _ _ _)
  | year `elem` [1977..1997] = Location "Sint-Niklaas" Belgium Nothing
  | year `elem` [1998..2016] = Location "Bruges" Belgium Nothing
  | year > 2016              = Location "Antwerp" Belgium Nothing
  | otherwise                = Location "Ghent" Belgium Nothing
  where (year,_,_) = toGregorian d
start (TourOfLombardy d _ _)
  | year `elem` [1905..1984] ++ [1990..1994] ++ [2010,2011] = Location "Milan" Italy Nothing
  | year `elem` [1985,1986,1987,1988,1989,2003,2014,2016]   = Location "Como" Italy Nothing
  | year `elem` [1995..2001] ++ [2007..2009]                = Location "Varese" Italy Nothing
  | year `elem` [2004..2006]                                = Location "Mendrisio" Italy Nothing
  | year == 2002                                            = Location "Cantu" Italy Nothing
  | otherwise                                               = Location "Bergamo" Italy Nothing
  where (year,_,_) = toGregorian d
start (ParisTours d _ _ _)
  | year `elem` [1974..1975] = Location "Tours" France Nothing
  | year `elem` [1976..1979] = Location "Blois" France Nothing
  | year `elem` [1985..1987] = Location "Créteil" France Nothing
  | otherwise                = Location "Paris" France Nothing
  where (year,_,_) = toGregorian d
start (AmstelGoldRace d _ _)
  | year == 1966             = Location "Breda" Netherlands Nothing
  | year `elem` [1967..1970] = Location "Helmond" Netherlands Nothing
  | year `elem` [1971..1997] = Location "Heerlen" Netherlands Nothing
  | otherwise                = Location "Maastricht" Netherlands Nothing
  where (year,_,_) = toGregorian d
start (LaFlecheWallonne d _ _)
  | year `elem` [1936..1938]           = Location "Tournai" Belgium Nothing
  | year `elem` [1939..1947] ++ [1980] = Location "Mons" Belgium Nothing
  | year `elem` [1948..1959] ++ [1982..1984] = Location "Charleroi" Belgium Nothing
  | year `elem` [1960..1971] = Location "Liège" Belgium Nothing
  | year `elem` [1972..1978] = Location "Verviers" Belgium Nothing
  | year `elem` [1979]       = Location "Esneux" Belgium Nothing
  | year `elem` [1982..1984] = Location "Charleroi" Belgium Nothing
  | year `elem` [1985]       = Location "Huy" Belgium Nothing
  | otherwise                = Location "Spa" Belgium Nothing
  where (year,_,_) = toGregorian d

finish :: Classic -> Location
finish (ParisRoubaix _ _ _)          = Location "Roubaix" France Nothing
finish (MilanoSanRemo _ _ _)         = Location "San Remo" Italy Nothing
finish (GrandPrixDePlouay _ _)       = Location "Plouay" France Nothing
finish (GentWevelgem _ _ _)          = Location "Wevelgem" Belgium Nothing
finish (E3Harelbeke _ _ _)           = Location "Harelbeke" Belgium Nothing
finish (KuurneBrusselsKuurne _ _ _ ) = Location "Kuurne" Belgium Nothing
finish (TourOfFlanders d _ _ _)
  | year == 1913                             = Location "Mariakerke" Belgium Nothing
  | year == 1914                             = Location "Evergem" Belgium Nothing
  | year `elem` [1919..1923] ++ [1962..1972] = Location "Gentbrugge" Belgium Nothing
  | year `elem` [1928..1941] ++ [1945..1961] = Location "Wetteren" Belgium Nothing
  | year `elem` [1973..2011]                 = Location "Meerbeke" Belgium Nothing
  | year > 2011                              = Location "Oudenaarde" Belgium Nothing
  | otherwise                                = Location "Ghent" Belgium Nothing
  where (year,_,_) = toGregorian d
finish (LiegeBastogneLiege d _ _)
  | year `elem` [1992..2018] = Location "Ans" Belgium Nothing
  | otherwise                = Location "Liège" Belgium Nothing
  where (year,_,_) = toGregorian d
finish (TourOfLombardy d _ _)
  | year `elem` [1990..1994]                 = Location "Monza" Italy Nothing
  | year `elem` [2011..2013]                 = Location "Lecco" Italy Nothing
  | year `elem` [1905..1960] ++ [1985..1989] = Location "Milan" Italy Nothing
  | year `elem` [1995..2003] ++ [2014,2016]  = Location "Bergamo" Italy Nothing
  | otherwise                                = Location "Como" Italy Nothing
  where (year,_,_) = toGregorian d
finish (OmloopHetVolk d _ _ _)
  | year `elem` [1996..2007] = Location "Lokeren" Belgium Nothing
  | otherwise                = Location "Ghent" Belgium Nothing
  where (year,_,_) = toGregorian d
finish (ParisTours d _ _ _)
  | year `elem` [1974,1975]                 = Location "Versailles" France Nothing
  | year == 1978                            = Location "Autodrome de Montlhéry" France Nothing
  | year `elem` [1976,1977] ++ [1979..1987] = Location "Chaville" France Nothing
  | otherwise                               = Location "Tours" France Nothing
  where (year,_,_) = toGregorian d
finish (AmstelGoldRace d _ _)
  | year `elem` [1966,1967] ++ [1969..1990] = Location "Meerssen" Netherlands Nothing
  | year == 1968                            = Location "Elsloo" Netherlands Nothing
  | year `elem` [1991..2002]                = Location "Maastricht" Netherlands Nothing
  | year `elem` [2003..2012]                = Location "Valkenburg" Netherlands Nothing
  | otherwise                               = Location "Berg en Terblijt" Netherlands Nothing
  where (year,_,_) = toGregorian d
finish (LaFlecheWallonne d _ _)
  | year `elem` [1936] ++ [1946..1959]           = Location "Liège" Belgium Nothing
  | year `elem` [1937]                           = Location "Ans" Belgium Nothing
  | year `elem` [1938..1941]                     = Location "Rocourt" Belgium Nothing
  | year `elem` [1942] ++ [1965..1973] ++ [1979] = Location "Marcinelle" Belgium Nothing
  | year `elem` [1943..1945] ++ [1960..1964]     = Location "Charleroi" Belgium Nothing
  | year `elem` [1974..1978]                     = Location "Verviers" Belgium Nothing
  | year `elem` [1980,1982]                      = Location "Spa" Belgium Nothing
  | year `elem` [1981]                           = Location "Mons" Belgium Nothing
  | otherwise                                    = Location "Huy" Belgium Nothing
  where (year,_,_) = toGregorian d

pave :: Classic -> [String]
pave (ParisRoubaix _ distance ps)     = map(\p -> ParcoursDB.Pave.description p distance) ps
pave (TourOfFlanders _ distance ps _) = map(\p -> ParcoursDB.Pave.description p distance) ps
pave (OmloopHetVolk _ distance ps _)  = map(\p -> ParcoursDB.Pave.description p distance) ps

bergs :: Classic -> [String]
bergs (TourOfFlanders _ distance _ bs) = bergs' 1 distance bs
bergs (OmloopHetVolk _ distance _ bs) = bergs' 1 distance bs

bergs' :: Int -> Float -> [IndexableBerg] -> [String]
bergs' idx dist [b] = [ParcoursDB.Berg.description idx dist b]
bergs' idx dist (b:bs) = [ParcoursDB.Berg.description idx dist b] ++ bergs' (idx + 1) dist bs

cotes :: Classic -> [String]
cotes (LaFlecheWallonne _ distance cs)   = map(\c -> ParcoursDB.Cote.description c distance) cs
cotes (LiegeBastogneLiege _ distance cs) = map(\c -> ParcoursDB.Cote.description c distance) cs
cotes (MilanoSanRemo _ distance cs)      = map(\c -> ParcoursDB.Cote.description c distance) cs
cotes (ParisTours _ distance cs _)       = map(\c -> ParcoursDB.Cote.description c distance) cs
cotes (TourOfLombardy _ distance cs)     = map(\c -> ParcoursDB.Cote.description c distance) cs

gravel :: Classic -> [String]
gravel (ParisTours _ distance _ gs) = map(\g -> ParcoursDB.Gravel.description g distance) gs
