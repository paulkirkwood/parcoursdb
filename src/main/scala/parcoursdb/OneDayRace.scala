package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

trait RaceEdition {
  def race:Race
  def date:LocalDate
  def start:Location
  def finish:Location
  def length:Double
}

case class OneDayRaceEdition(race:OneDayRace,
                             date:LocalDate,
                             start:Location,
                             finish:Location,
                             length:Double,
                             cols:Seq[Col]) extends RaceEdition {

  def climbs : List[String] = cols.map(Col.description(_,length)).toList
}

case class OneDayRaceState(race:OneDayRace,
                           date:LocalDate,
                           start:Location,
                           finish:Location,
                           length:Double,
                           cols:Set[Col])

object OneDayRaceState {

  def init(race:OneDayRace, date:LocalDate, start:Location, finish:Location, raceLength:Double) = {
    OneDayRaceState(race=race,
                    date=date,
                    start=start,
                    finish=finish,
                    length=raceLength,
                    cols=Set.empty[Col])
  }

  def col(name:String, height:Double, km:Double) : State[OneDayRaceState, Unit] = {
    for {
      s <- get[OneDayRaceState]
      col = Col(name,Uncategorised,height,km,None,None,None)
      producedValue <- put(s.copy(cols=s.cols + col))
    } yield producedValue
  }

  def build : State[OneDayRaceState, OneDayRaceEdition] = {
    for {
      s <- get[OneDayRaceState]
      cols = s.cols.toSeq.sortWith(_.summitKM < _.summitKM)
      edition = OneDayRaceEdition(s.race,s.date, s.start, s.finish, s.length, cols)
    } yield edition
  }
}
