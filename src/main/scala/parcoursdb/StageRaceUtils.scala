package parcoursdb

import java.time.LocalDate
import java.time.Month
import java.time.format.TextStyle
import java.util.Locale
import scala.collection.mutable.ListBuffer

object StageRaceUtils {

  def dates(race:StageRaceEdition) : String = {
    val firstDay = race.firstStage
    val lastDay  = race.lastStage

    val startDay:Int = firstDay.date.getDayOfMonth()
    val finishDay:Int = lastDay.date.getDayOfMonth();

    val startMonth = firstDay.date.getMonth()
    val finishMonth = lastDay.date.getMonth()

    val startMonthName = startMonth.getDisplayName(TextStyle.FULL,Locale.UK)
    val finishMonthName = finishMonth.getDisplayName(TextStyle.FULL,Locale.UK)

    if (startMonthName == finishMonthName) s"${startDay}-${finishDay} ${startMonthName}"
    else s"${startDay} ${startMonthName}-${finishDay} ${finishMonthName}"
  }

  def composition(race:StageRaceEdition) : String = {
    val road = race.roadStages.size
    val ttt  = race.teamTimeTrials.size
    val itt  = race.individualTimeTrials.size
    val rest = race.restDays.size

    var buf = new ListBuffer[String]()
    buf += s"${road + ttt + itt} stages: $road road stages"

    if (ttt > 0 || itt > 0) {
      val p1:String = if (ttt == 1) "Trial" else "Trials"
      val p2:String = if (itt == 1) "Trial" else "Trials"

      if (ttt > 0 && itt > 0) {
        buf += s"${ttt + itt} Time Trials ($ttt Team Time $p1; $itt Individual Time $p2)"
      } else if ( ttt == 0 && itt > 0 ) {
        buf += s"$itt Individual Time $p2"
      } else if ( ttt > 0 && itt == 0 ) {
        buf += s"$ttt Team Time $p1"
      }
    }

    if ( rest > 0 ) {
      buf += s"$rest rest days"
    }
   
    return buf.mkString(", ")
  }

  def cols(race:StageRaceEdition) : String = {
    val cols:Seq[Col] = race.racingStages.flatMap(_.cols)
    val categories:Seq[Seq[Col]] = Seq(
      cols.collect { case c if c.category == HC => c },
      cols.collect { case c if c.category == C1 => c },
      cols.collect { case c if c.category == C2 => c },
      cols.collect { case c if c.category == C3 => c },
      cols.collect { case c if c.category == C4 => c }
    )
    var buf = new ListBuffer[String]()
    for (c <- categories) {
      if ( c.size > 0 ) {
        buf += s"${c.size} ${ColUtils.category_name(c(0).category)}"
      }
    }

    return buf.mkString(", ")
  }

  def route(race:StageRaceEdition)(implicit country:Country) : String = {
    race.stageChronology.map(StageUtils.stageDescription(_)(country)).mkString("\n")
  }
}
