module ParcoursDB.Country where

import Data.Ord

data Country = Andorra
             | Belgium
             | France
             | Germany
             | Ireland
             | Israel
             | Italy
             | Luxembourg
             | Monaco
             | Netherlands
             | SanMarino
             | Spain
             | Switzerland
             | UnitedKingdom
             | WestGermany
  deriving (Read, Eq, Ord)

instance Show Country where
  show Andorra       = "Andorra"
  show Belgium       = "Belgium"
  show France        = "France"
  show Germany       = "Germany"
  show Ireland       = "Ireland"
  show Israel        = "Israel"
  show Italy         = "Italy"
  show Luxembourg    = "Grand Duchy of Luxembourg"
  show Monaco        = "Monaco"
  show Netherlands   = "Netherlands"
  show SanMarino     = "San Marino"
  show Spain         = "Spain"
  show Switzerland   = "Switzerland"
  show UnitedKingdom = "United Kingdom"
  show WestGermany   = "West Germany"

--instance Eq Country where
--  (Country a) == (Country b) = name(a) == name(b)

--instance Ord Country where
--  compare (Country a) (Country b) = compare a b

isoCode3 :: Country -> String
isoCode3 Andorra       = "AND"
isoCode3 Belgium       = "BEL"
isoCode3 France        = "FRA"
isoCode3 Germany       = "DEU"
isoCode3 Ireland       = "IRL"
isoCode3 Israel        = "ISR"
isoCode3 Italy         = "ITA"
isoCode3 Luxembourg    = "LUX"
isoCode3 Monaco        = "MCO"
isoCode3 Netherlands   = "NLD"
isoCode3 SanMarino     = "SAN"
isoCode3 Spain         = "ESP"
isoCode3 Switzerland   = "CHE"
isoCode3 UnitedKingdom = "GBR"
isoCode3 WestGermany   = "DEU"
