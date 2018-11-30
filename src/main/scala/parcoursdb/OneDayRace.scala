package parcoursdb

import scala.collection.mutable.ListBuffer
import java.time.LocalDateTime

case class OneDayRaceEdition(race:OneDayRace,
                             date: LocalDateTime,
			     start:Location,
			     finish:Location,
			     length:Double) {
  //override def toString:String = {
  //  s"${RaceUtils.name(race)} ${date.toString("yyyy-MM-dd")} ${length} Kms"
  //}
}
