package parcoursdb

object CountryUtils {

  def name(c:Country): String = c match {
    case Luxembourg    => "Grand Duchy of Luxembourg"
    case SanMarino     => "San Marino"
    case UnitedKingdom => "United Kingdom"
    case _             => c.getClass.getSimpleName.dropRight(1)
  }

  def iso_code(c:Country): String = c match {
    case Germany       => "DEU"
    case Netherlands   => "NLD"
    case Spain         => "ESP"
    case UnitedKingdom => "GBR"
    case _             => c.getClass.getSimpleName.dropRight(1).take(3).toUpperCase
  }
}
