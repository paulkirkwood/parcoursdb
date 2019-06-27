module ParcoursDB.Classic where

import Data.Time
import ParcoursDB.Berg
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.Pave

data Classic = ParisRoubaix       Day Float [Pave]
             | ParisTours         Day Float
             | GrandPrixDePlouay  Day Float
             | TourOfFlanders     Day Float [Pave] [Berg]
             | MilanoSanRemo      Day Float [Col]
             | LiegeBastogneLiege Day Float [Col]
             | LaFlecheWallonne   Day Float [Col]
             | TourOfLombardy     Day Float [Col]
             | OmloopHetVolk      Day Float [Berg]
             | GentWevelgem       Day Float [Berg]
             | E3Harelbeke        Day Float [Berg]
             | KBK                Day Float [Berg]
             | AmstelGoldRace     Day Float [Berg]

date :: Classic -> Day
date (ParisRoubaix d _ _)       = d
date (ParisTours d _)           = d
date (GrandPrixDePlouay d _)    = d
date (TourOfFlanders d _ _ _)   = d
date (MilanoSanRemo d _ _)      = d
date (LiegeBastogneLiege d _ _) = d
date (LaFlecheWallonne d _ _)   = d
date (TourOfLombardy d _ _)     = d
date (OmloopHetVolk d _ _)      = d
date (GentWevelgem d _ _)       = d
date (E3Harelbeke d _ _)        = d
date (KBK d _ _)                = d
date (AmstelGoldRace d _ _)     = d

distance :: Classic -> Float
distance (ParisRoubaix _ d _)       = d
distance (ParisTours _ d)           = d
distance (GrandPrixDePlouay _ d)    = d
distance (TourOfFlanders _ d _ _)   = d
distance (MilanoSanRemo _ d _)      = d
distance (LiegeBastogneLiege _ d _) = d
distance (LaFlecheWallonne _ d _)   = d
distance (TourOfLombardy _ d _)     = d
distance (OmloopHetVolk _ d _)      = d
distance (GentWevelgem _ d _)       = d
distance (E3Harelbeke _ d _)        = d
distance (KBK _ d _)                = d
distance (AmstelGoldRace _ d _)     = d

name :: Classic -> String
name (ParisRoubaix _ _ _)       = "Paris-Roubaix"
name (ParisTours _ _)           = "Paris-Tours"
name (TourOfFlanders _ _ _ _)   = "Tour of Flanders"
name (MilanoSanRemo _ _ _)      = "Milano-San Remo"
name (LiegeBastogneLiege _ _ _) = "Liège - Bastogne - Liège"
name (LaFlecheWallonne _ _ _)   = "La Flèche Wallonne"
name (TourOfLombardy _ _ _)     = "Il Lombardia"
name (GentWevelgem _ _ _ )      = "Gent-Wevelgem"
name (KBK _ _ _ )               = "Kuurne-Brussels-Kuurne"
name (AmstelGoldRace _ _ _)     = "Amstel Gold Race"
name (OmloopHetVolk d _ _)
  | year `elem` [1945,1946] = "Omloop van Vlaanderen"
  | year > 2018             = "Omloop Het Nieuwsblad"
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
start (MilanoSanRemo _ _ _)      = Location "Milan" Italy
start (LiegeBastogneLiege _ _ _) = Location "Liège" Belgium
start (OmloopHetVolk _ _ _)      = Location "Ghent" Belgium
start (E3Harelbeke _ _ _)        = Location "Harelbeke" Belgium
start (GentWevelgem _ _ _)       = Location "Ghent" Belgium
start (GrandPrixDePlouay _ _ )   = Location "Plouay" France
start (KBK _ _ _ )               = Location "Kuurne" Belgium
start (ParisRoubaix d _ _)
  | year `elem` [1896,1897,1901] ++ [1929..1937] ++ [1939] = Location "Porte Maillot, Paris" France
  | year `elem` [1898,1899] ++ [1902..1913]                = Location "Chatou" France
  | year `elem` [1914,1919..1928]                          = Location "Suresnes, Paris" France
  | year == 1938                                           = Location "Argenteuil" France
  | year `elem` [1943..1965]                               = Location "Saint-Denis" France
  | year `elem` [1966..1976]                               = Location "Chantilly" France
  | otherwise                                              = Location "Compiegne" France
  where (year,_,_) = toGregorian d
start (TourOfFlanders d _ _ _)
  | year `elem` [1977..1997] = Location "Sint-Niklaas" Belgium
  | year `elem` [1998..2016] = Location "Bruges" Belgium
  | year > 2016              = Location "Antwerp" Belgium
  | otherwise                = Location "Ghent" Belgium
  where (year,_,_) = toGregorian d
start (TourOfLombardy d _ _)
  | year `elem` [1905..1984] ++ [1990..1994] ++ [2010,2011] = Location "Milan" Italy
  | year `elem` [1985,1986,1987,1988,1989,2003,2014,2016]   = Location "Como" Italy
  | year `elem` [1995..2001] ++ [2007..2009]                = Location "Varese" Italy
  | year `elem` [2004..2006]                                = Location "Mendrisio" Italy
  | year == 2002                                            = Location "Cantu" Italy
  | otherwise                                               = Location "Bergamo" Italy
  where (year,_,_) = toGregorian d
start (ParisTours d _)
  | year `elem` [1974..1975] = Location "Tours" France
  | year `elem` [1976..1979] = Location "Blois" France
  | year `elem` [1985..1987] = Location "Créteil" France
  | otherwise                = Location "Paris" Italy
  where (year,_,_) = toGregorian d
start (AmstelGoldRace d _ _)
  | year == 1966             = Location "Breda" Netherlands
  | year `elem` [1967..1970] = Location "Helmond" Netherlands
  | year `elem` [1971..1997] = Location "Heerlen" Netherlands
  | otherwise                = Location "Maastricht" Netherlands
  where (year,_,_) = toGregorian d
start (LaFlecheWallonne d _ _)
  | year `elem` [1936..1938] = Location "Tournai" Belgium
  | year `elem` [1939..1947] = Location "Mons" Belgium
  | year `elem` [1948..1959] = Location "Chareloi" Belgium
  | year `elem` [1960..1971] = Location "Liège" Belgium
  | year `elem` [1972..1978] = Location "Verviers" Belgium
  | year `elem` [1979]       = Location "Esneux" Belgium
  | year `elem` [1980]       = Location "Mons" Belgium
  | year `elem` [1981]       = Location "Spa" Belgium
  | year `elem` [1982..1984] = Location "Chareloi" Belgium
  | year `elem` [1985]       = Location "Huy" Belgium
  | otherwise                = Location "Spa" Belgium
  where (year,_,_) = toGregorian d

finish :: Classic -> Location
finish (ParisRoubaix _ _ _)    = Location "Roubaix" France
finish (MilanoSanRemo _ _ _)   = Location "San Remo" Italy
finish (GrandPrixDePlouay _ _) = Location "Plouay" France
finish (GentWevelgem _ _ _)    = Location "Ghent" Belgium
finish (E3Harelbeke _ _ _)     = Location "Harelbeke" Belgium
finish (KBK _ _ _ )            = Location "Kuurne" Belgium
finish (TourOfFlanders d _ _ _)
  | year == 1913                             = Location "Mariakerke" Belgium
  | year == 1914                             = Location "Evergem" Belgium
  | year `elem` [1919..1923] ++ [1962..1972] = Location "Gentbrugge" Belgium
  | year `elem` [1928..1941] ++ [1945..1961] = Location "Wetteren" Belgium
  | year `elem` [1973..2011]                 = Location "Meerbeke" Belgium
  | year > 2011                              = Location "Oudenaarde" Belgium
  | otherwise                                = Location "Ghent" Belgium
  where (year,_,_) = toGregorian d
finish (LiegeBastogneLiege d _ _)
  | year `elem` [1992..2018] = Location "Ans" Belgium
  | otherwise                = Location "Liège" Belgium
  where (year,_,_) = toGregorian d
finish (TourOfLombardy d _ _)
  | year `elem` [1990..1994]                 = Location "Monza" Italy
  | year `elem` [2011..2013]                 = Location "Lecco" Italy
  | year `elem` [1905..1960] ++ [1985..1989] = Location "Milan" Italy
  | year `elem` [1995..2003] ++ [2014,2016]  = Location "Bergamo" Italy
  | otherwise                                = Location "Como" Italy
  where (year,_,_) = toGregorian d
finish (OmloopHetVolk d _ _)
  | year `elem` [1996..2007] = Location "Lokeren" Belgium
  | otherwise                = Location "Ghent" Belgium
  where (year,_,_) = toGregorian d
finish (ParisTours d _)
  | year `elem` [1974,1975]                 = Location "Versailles" France
  | year == 1978                            = Location "Autodrome de Montlhéry" France
  | year `elem` [1976,1977] ++ [1979..1987] = Location "Chaville" France
  | otherwise                               = Location "Tours" France
  where (year,_,_) = toGregorian d
finish (AmstelGoldRace d _ _)
  | year `elem` [1966,1967] ++ [1969..1990] = Location "Meerssen" Netherlands
  | year == 1968                            = Location "Elsloo" Netherlands
  | year `elem` [1991..2002]                = Location "Maastricht" Netherlands
  | otherwise                               = Location "Valkenburg" Netherlands
  where (year,_,_) = toGregorian d
finish (LaFlecheWallonne d _ _)
  | year `elem` [1936]       = Location "Liège" Belgium
  | year `elem` [1937]       = Location "Ans" Belgium
  | year `elem` [1938..1941] = Location "Rocourt" Belgium
  | year `elem` [1942]       = Location "Marcinelle" Belgium
  | year `elem` [1943..1945] = Location "Chareloi" Belgium
  | year `elem` [1946..1959] = Location "Liège" Belgium
  | year `elem` [1960..1964] = Location "Chareloi" Belgium
  | year `elem` [1965..1973] = Location "Marcinelle" Belgium
  | year `elem` [1974..1978] = Location "Verviers" Belgium
  | year `elem` [1979]       = Location "Marcinelle" Belgium
  | year `elem` [1980]       = Location "Spa" Belgium
  | year `elem` [1981]       = Location "Mons" Belgium
  | year `elem` [1982]       = Location "Spa" Belgium
  | otherwise                = Location "Huy" Belgium
  where (year,_,_) = toGregorian d
