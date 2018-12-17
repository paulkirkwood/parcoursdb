package parcoursdb

import java.time.LocalDate

sealed trait Stage {
  def date: LocalDate
}

sealed trait RacingStageCategory
case object Prologue extends RacingStageCategory
case object RoadStage extends RacingStageCategory
case object TeamTimeTrial extends RacingStageCategory
case object IndividualTimeTrial extends RacingStageCategory

case class RacingStage(date:LocalDate,
                       category:RacingStageCategory,
                       id:String,
                       start:Location,
		       finish:Location,
		       length:Double,
		       cols:Set[Col]) extends Stage {

  def isRoadStage:Boolean = category match {
    case RoadStage => true
    case _ => false
  }

  def isTeamTimeTrial:Boolean = category match {
    case TeamTimeTrial => true
    case _ => false
  }

  def isIndividualTimeTrial:Boolean = category match {
    case IndividualTimeTrial => true
    case _ => false
  }

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

case class RestDay(date: LocalDate, location: Option[Location] = None) extends Stage
