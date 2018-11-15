package parcoursdb

case class Location(name:String)(implicit val country:Country) {
  override def toString:String = s"$name, ${CountryUtils.name(country)}"
}
