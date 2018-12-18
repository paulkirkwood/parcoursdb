package parcoursdb

import java.time.LocalDate

sealed trait Stage {
  def date: LocalDate
}

case class RestDay(date: LocalDate, location: Option[Location] = None) extends Stage

sealed trait RacingStage extends Stage {
  def id: String
  def start: Location
  def finish: Location
  def length: Double
  def cols: Set[Col]

  def isSummitFinish:Boolean = {
    val climbs:List[Col] = cols.toList.sortWith(_.summitKM < _.summitKM)
    lastClimb(climbs)
  }

  private def lastClimb(xs: List[Col]): Boolean = xs match {
    case head :: Nil  => head.summitKM == length
    case head :: tail => lastClimb(tail)
    case _ => false
  }
}

case class Prologue(date:LocalDate, start:Location, finish:Location, length:Double) extends RacingStage {
  def id = "P"
  def cols = Set.empty[Col]
}

case class RoadStage(date:LocalDate, id:String, start:Location, finish:Location, length:Double, cols:Set[Col]) extends RacingStage

case class TeamTimeTrial(date:LocalDate, id:String, start:Location, finish:Location, length:Double, cols:Set[Col]) extends RacingStage

case class IndividualTimeTrial(date:LocalDate, id:String, start:Location, finish:Location, length:Double, cols:Set[Col]) extends RacingStage
