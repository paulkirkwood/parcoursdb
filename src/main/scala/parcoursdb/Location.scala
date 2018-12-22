package parcoursdb

case class Location(name:String)(implicit val country:Country) {
  override def toString:String = s"$name, ${CountryUtils.name(country)}"
}

object Location {
  def shortName(l:Location)(implicit country:Country) : String = {
    if (l.country == country) l.name
    else s"${l.name} (${CountryUtils.name(l.country)})"
  }
}
