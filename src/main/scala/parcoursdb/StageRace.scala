package parcoursdb

import scala.collection.mutable.ListBuffer

case class StageRaceEdition(race:StageRace, stages:Seq[Stage]) {

  def racingStages:Seq[RacingStage] = stages.collect { case s: RacingStage => s } 
  def restDays:Seq[RestDay] = stages.collect { case s: RestDay => s }

  def start:Location = racingStages(0).start
  def finish:Location = racingStages.last.finish

  def length:Double = racingStages.map(_.length).sum
  
  def prologue:Option[RacingStage] = racingStages.find(_.category == Prologue)
  def prologueKMs:Double = prologue match {
    case Some(prologue) => prologue.length
    case None => 0
  }
  
  def roadStages:Seq[RacingStage] = racingStages.filter(_.isRoadStage)
  def roadStageKMs:Double = roadStages.map(_.length).sum

  def teamTimeTrials:Seq[RacingStage] = racingStages.filter(_.isTeamTimeTrial)
  def teamTimeTrialKMs:Double = teamTimeTrials.map(_.length).sum

  def individualTimeTrials:Seq[RacingStage] = racingStages.filter(_.isIndividualTimeTrial)
  def individualTimeTrialKMs:Double = individualTimeTrials.map(_.length).sum

  def summitFinishes:Integer = racingStages.filter(_.isSummitFinish).size

  def highPoint:Option[Col] = racingStages.flatMap(_.cols).sortWith(_.height > _.height).headOption
  def longestStage:Option[RacingStage] = racingStages.sortWith(_.length > _.length).headOption

  def composition:String = {

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

  def cols: String = {
    val cols:Seq[Col] = racingStages.flatMap(_.cols)
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
}

// Stage Race Rules
// 1. There can be only one Prologue
// 2. The Prologue will be the first stage
// 3. The last stage cannot be a rest day
// 4. A rest day cannot follow a rest day
// 5. There are no date gaps between the stages
