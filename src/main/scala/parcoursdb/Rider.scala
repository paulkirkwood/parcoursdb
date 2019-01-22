package parcoursdb

case class Person(firstName:String, lastName:String, country:Country)

case class Team(name:String, country:Country)

case class Rider(id:Int, person:Person, team:Team)
