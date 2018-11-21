package parcoursdb

sealed trait Stage
sealed trait RacingStage extends Stage {
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

case class Prologue(start: Location,
                    finish: Location,
                    length: Double,
                    cols: Set[Col]) extends RacingStage

case class RoadStage(start: Location,
                     finish: Location,
                     length: Double,
                     cols: Set[Col]) extends RacingStage

case class TeamTimeTrial(start: Location,
                         finish: Location,
                        length: Double,
                        cols: Set[Col]) extends RacingStage

case class IndividualTimeTrial(start: Location,
                               finish: Location,
                               length: Double,
                               cols: Set[Col]) extends RacingStage

case class RestDay(location: Option[Location] = None) extends Stage

object StageBuilder {
  def apply() = new StageBuilder[Zero,Zero,Zero]()
}

case class StageBuilder[WithStartTracking <: Count,
                        WithFinishTracking <: Count,
                        WithLengthTracking <: Count](start: Option[Location] = None,
                                                     finish: Option[Location] = None,
                                                     length: Option[Double] = None,
                                                     cols : Set[Col] = Set.empty) {

    type IsOnce[T] = =:=[T, Once]
    type IsZero[T] = =:=[T, Zero]

    def withStart[S <: WithStartTracking: IsZero](s: Location) = {
      copy[Once,WithFinishTracking,WithLengthTracking](start=Some(s))
    }

    def withFinish[F <: WithFinishTracking: IsZero](f: Location) = {
      copy[WithStartTracking,Once,WithLengthTracking](finish=Some(f))
    }

    def withLength[L <: WithLengthTracking: IsZero](l: Double) = {
      copy[WithStartTracking,WithFinishTracking,Once](length = Some(l))
    }

  def withCol(c:Col) = {
    new StageBuilder[WithStartTracking,WithFinishTracking,WithLengthTracking](start,finish,length,cols + c)
  }

  def withCols(c:Set[Col]) = {
    new StageBuilder[WithStartTracking,WithFinishTracking,WithLengthTracking](start,finish,length,cols ++ c)
  }

  def prologue[S <: WithStartTracking : IsOnce, L <: WithLengthTracking : IsOnce] = {
    Prologue(start.get,finish.getOrElse(start.get),length.get,cols)
  }

  def roadStage[S <: WithStartTracking : IsOnce,
                F <: WithFinishTracking : IsOnce,
                L <: WithLengthTracking : IsOnce] = {
    RoadStage(start.get,finish.get,length.get,cols)
  }

  def teamTimeTrial[S <: WithStartTracking : IsOnce, L <: WithLengthTracking : IsOnce] = {
    TeamTimeTrial(start.get,finish.getOrElse(start.get),length.get,cols)
  }

  def individualTimeTrial[S <: WithStartTracking : IsOnce, L <: WithLengthTracking : IsOnce] = {
    IndividualTimeTrial(start.get,finish.getOrElse(start.get),length.get,cols)
  }
}
