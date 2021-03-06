package parcoursdb

import java.time.LocalDate

case class StageRaceEdition(stageRace:StageRace, stages:Seq[Stage]) extends RaceEdition {

  def race:Race = stageRace
  def date:LocalDate = firstStage.date

  def racingStages:Seq[RacingStage] = stages.collect {
    case p: Prologue => p
    case r: RoadStage => r
    case t: TeamTimeTrial => t
    case i: IndividualTimeTrial => i
  } 

  def restDays:Seq[RestDay] = stages.collect { case s: RestDay => s }

  def stageChronology:Seq[Stage] = stages.sortWith((x,y) => x.date.getDayOfYear < y.date.getDayOfYear)
  def racingStageChronology:Seq[RacingStage] = racingStages.sortWith((x,y) => x.date.getDayOfYear < y.date.getDayOfYear)

  def firstStage:RacingStage = racingStageChronology(0)
  def lastStage:RacingStage = racingStageChronology.last

  def year:Int = firstStage.date.getYear()

  def stage(id:String):Option[RacingStage] = racingStages.find {_.id == id }

  def start:Location = firstStage match {
    case p:Prologue => p.start
    case r:RoadStage => r.start
    case t:TeamTimeTrial => t.start
    case i:IndividualTimeTrial => i.start
  }

  def finish:Location = lastStage match {
    case p:Prologue            => p.finish
    case r:RoadStage           => r.finish
    case t:TeamTimeTrial       => t.finish
    case i:IndividualTimeTrial => i.finish
  }

  def length:Double = racingStages.map(_.length).sum
  
  def prologue:Option[Prologue] = stages.collectFirst { case p:Prologue => p }
  def prologueKMs:Double = prologue match {
    case Some(prologue) => prologue.length
    case None => 0
  }
  
  def hasPrologue:Boolean = prologue match {
    case Some(prologue) => true
    case None => false
  }

  def hasSplitStages:Boolean = if (splitStages > 0) true else false
  def splitStages:Int = racingStages.filter(_.id.matches("^\\d+a$")).size

  def roadStages:Seq[RoadStage] = stages.collect { case r:RoadStage => r }
  def roadStageKMs:Double = roadStages.map(_.length).sum

  def teamTimeTrials:Seq[TeamTimeTrial] = stages.collect { case t:TeamTimeTrial => t }
  def teamTimeTrialKMs:Double = teamTimeTrials.map(_.length).sum

  def individualTimeTrials:Seq[IndividualTimeTrial] = stages.collect { case i:IndividualTimeTrial => i }
  def individualTimeTrialKMs:Double = individualTimeTrials.map(_.length).sum

  def summitFinishes:Integer = racingStages.filter(_.isSummitFinish).size

  def highPoint:Option[Col] = racingStages.flatMap(_.cols).sortWith(_.height > _.height).headOption
  def longestStage:RacingStage = racingStages.sortWith(_.length < _.length).last
}

// Stage Race Rules
// 1. There can be only one Prologue
// 2. The Prologue will be the first stage
// 3. The last stage cannot be a rest day
// 4. A rest day cannot follow a rest day
// 5. There are no date gaps between the stages
