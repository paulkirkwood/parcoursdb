module ParcoursDB.Country where

import Data.Ord

data Country = Andorra
             | Austria
             | Belgium
             | Croatia
             | Denmark
             | Fiume
             | France
             | Germany
             | Greece
             | Ireland
             | Israel
             | Italy
             | Luxembourg
             | Monaco
             | Netherlands
             | NorthernIreland
             | Portugal
             | SanMarino
             | Slovenia
             | Spain
             | Switzerland
             | UnitedKingdom
             | VaticanCity
             | WestGermany
             | Yugoslavia
  deriving (Read, Eq, Ord)

instance Show Country where
  show Andorra         = "Andorra"
  show Austria         = "Austria"
  show Belgium         = "Belgium"
  show Croatia         = "Croatia"
  show Denmark         = "Denmark"
  show Fiume           = "Free State of Fiume"
  show France          = "France"
  show Germany         = "Germany"
  show Greece          = "Greece"
  show Ireland         = "Ireland"
  show Israel          = "Israel"
  show Italy           = "Italy"
  show Luxembourg      = "Luxembourg"
  show Monaco          = "Monaco"
  show Netherlands     = "Netherlands"
  show NorthernIreland = "Northern Ireland"
  show Portugal        = "Portugal"
  show SanMarino       = "San Marino"
  show Slovenia        = "Slovenia"
  show Spain           = "Spain"
  show Switzerland     = "Switzerland"
  show UnitedKingdom   = "United Kingdom"
  show VaticanCity     = "Vatican City"
  show WestGermany     = "West Germany"
  show Yugoslavia      = "Yugoslavia"

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
