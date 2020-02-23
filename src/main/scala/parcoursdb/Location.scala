package parcoursdb

case class Location(name:String, elevation: Option[Int] = None)(implicit val country:Country) {
  override def toString:String = s"$name, ${CountryUtils.name(country)}"
}

object Location {
  def shortName(l:Location)(implicit country:Country) : String = {
    if (l.country == country) l.name
    else s"${l.name} (${CountryUtils.name(l.country)})"
  }

  def commune(l:Location, c:String)(implicit country:Country) : Location = {
    val new_name:String = s"${l.name}/$c"
    Location(new_name, l.elevation)(country)
  }
}
