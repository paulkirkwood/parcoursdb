package parcoursdb

import scala.collection.mutable.ListBuffer

sealed trait RaceEdition {
  val race: Race
  def startingLocation:String
  def finishingLocation:String
  def raceDistance:Double
}

case class OneDayRaceEdition(race:OneDayRace, date: org.joda.time.DateTime, start:Location, finish:Location, length:Double) extends RaceEdition {
  override def toString:String = s"${RaceUtils.name(race)} ${date.toString("yyyy-MM-dd")} ${length} Kms"
  def startingLocation = start.toString
  def finishingLocation = finish.toString
  def raceDistance = length
}

// Stage Race Rules
// 1. There can be only one Prologue
// 2. The Prologue will be the first stage
// 3. The last stage cannot be a rest day
// 4. A rest day cannot follow a rest day
// 5. There are no date gaps between the stages

case class StageRaceEdition(race:StageRace,stages:Seq[Stage]) extends RaceEdition {

  def roadStages:Seq[Stage] = stages.filter(_.category == RoadStage)
  def roadStageKMs:Double = roadStages.flatMap(_.length).sum

  def teamTimeTrials:Seq[Stage] = stages.filter(_.category == TeamTimeTrial)
  def teamTimeTrialKMs:Double = teamTimeTrials.flatMap(_.length).sum

  def individualTimeTrials:Seq[Stage] = stages.filter(_.category == IndividualTimeTrial)
  def individualTimeTrialKMs:Double = individualTimeTrials.flatMap(_.length).sum

  def mountainTimeTrials:Seq[Stage] = stages.filter(_.category == MountainTimeTrial)
  def mountainTimeTrialKMs:Double = mountainTimeTrials.flatMap(_.length).sum

  def racingStages:Seq[Stage] = stages.filter(_.category != RestDay)

  def restDays:Seq[Stage] = stages.filter(_.category == RestDay)

  def startingLocation = racingStages.head.start.toString
  def finishingLocation = racingStages.last.finish.toString

  def raceDistance:Double = racingStages.flatMap(_.length).sum

  def summitFinishes:Integer = racingStages.filter(_.isSummitFinish).size

  def highPoint:Col = racingStages.flatMap(_.cols).sortWith(_.height > _.height).head

  //def longestStage:Stage = racingStages.sortWith(_.length > _.length).head

  def stageComposition: String = {

    val road = roadStages.size
    val ttt  = teamTimeTrials.size
    val itt  = individualTimeTrials.size
    val rest = restDays.size

    var buf = new ListBuffer[String]()
    buf += s"${road + ttt + itt} stages: $road road stages" 

    if (ttt > 0 || itt > 0) {
      val p1:String = if (ttt > 0) "Trial" else "Trials"
      val p2:String = if (itt > 0) "Trial" else "Trials"

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

  //def cols: String = {
  //  val cols:List[Col] = racingStages.flatMap(_.cols).flatten
  //  val hc = cols.collect { case c:HCCategoryCol => c }
  //  val c1 = cols.collect { case c:CategoryOneCol => c }
  //  val c2 = cols.collect { case c:CategoryTwoCol => c }
  //  val c3 = cols.collect { case c:CategoryThreeCol => c }
  //  val c4 = cols.collect { case c:CategoryFourCol => c }
  //  var buf = new ListBuffer[String]()
  //  for (c <- categories) {
  //    val size = cols.filter(_.category == c).size
  //    if ( size > 0 ) {
  //      buf += "$size ${ColUtils.category_name(c)}"
  //    }
  //  }
  //  return buf.mkString(", ")
  //}
}
