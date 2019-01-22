package parcoursdb

object CountryUtils {

  def name(c:Country): String = c match {
    case Luxembourg    => "Grand Duchy of Luxembourg"
    case PuertoRico            => "Puerto Rico"
    case RepublicOfSouthAfrica => "Republic of South Africa"
    case SanMarino     => "San Marino"
    case UnitedKingdom => "United Kingdom"
    case UnitedStates  => "United States of America"
    case WestGermany   => "West Germany"
    case _             => c.getClass.getSimpleName.dropRight(1)
  }

  def isoCode(c:Country): String = c match {
    case Croatia               => "HRV"
    case Germany | WestGermany => "DEU"
    case Greece                => "GRC"
    case Ireland               => "IRL"
    case Latvia                => "LVA"
    case Monaco                => "MCO"
    case Netherlands           => "NLD"
    case Portugal              => "PRT"
    case PuertoRico            => "PRI"
    case RepublicOfSouthAfrica => "RSA"
    case Slovakia              => "SVK"
    case Slovenia              => "SVN"
    case Spain                 => "ESP"
    case Switzerland           => "CHE"
    case UnitedKingdom         => "GBR"
    case UnitedStates          => "USA"
    case _                     => c.getClass.getSimpleName.dropRight(1).take(3).toUpperCase
  }
}
