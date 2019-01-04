package parcoursdb

object CountryUtils {

  def name(c:Country): String = c match {
    case Luxembourg    => "Grand Duchy of Luxembourg"
    case SanMarino     => "San Marino"
    case UnitedKingdom => "United Kingdom"
    case WestGermany   => "West Germany"
    case _             => c.getClass.getSimpleName.dropRight(1)
  }

  def isoCode(c:Country): String = c match {
    case Germany | WestGermany => "DEU"
    case Greece                => "GRC"
    case Ireland               => "IRL"
    case Monaco                => "MCO"
    case Netherlands           => "NLD"
    case Slovakia              => "SVK"
    case Slovenia              => "SVN"
    case Spain                 => "ESP"
    case Switzerland           => "CHE"
    case UnitedKingdom         => "GBR"
    case _                     => c.getClass.getSimpleName.dropRight(1).take(3).toUpperCase
  }
}
