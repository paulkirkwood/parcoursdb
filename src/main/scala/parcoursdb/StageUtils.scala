package parcoursdb

import java.time.Month
import java.time.format.TextStyle
import java.util.Locale

object StageUtils {

  def stageDescription(stage:Stage)(implicit country:Country) = {

    val dayOfMonth:Int = stage.date.getDayOfMonth()
    val monthName:String = stage.date.getMonth().getDisplayName(TextStyle.FULL,Locale.UK)

    val stageType = stage match {
      case p:Prologue            => "Individual time trial"
      case i:IndividualTimeTrial => "Individual time trial"
      case t:TeamTimeTrial       => "Team time trial"
      case d:RestDay             => "Rest day"
      case _                     => "Road stage"
    }

    val start:String = stage match {
      case s:RacingStage => Location.shortName(s.start)
      case _ => ""
    }

    val finish:String = stage match {
      case s:RacingStage => Location.shortName(s.finish)
      case _ => ""
    }

    val startAndFinish = if (start == finish) start else s"${start} to ${finish}"

    stage match {
      case r @ RestDay(_,None)     => s",${dayOfMonth} ${monthName},${stageType}"
      case r @ RestDay(_,Some(location)) => s",${dayOfMonth} ${monthName},${stageType},${Location.shortName(r.location.get)}"
      case s:RacingStage           => s"${s.id},${dayOfMonth} ${monthName},${startAndFinish},${s.length} km,${stageType}"
    }
  }
}
