package parcoursdb

case class StageRaceEdition(race:StageRace, stages:Seq[Stage]) {

  def racingStages:Seq[RacingStage] = stages.collect {
    case p: Prologue => p
    case r: RoadStage => r
    case t: TeamTimeTrial => t
    case i: IndividualTimeTrial => i
  } 

  def restDays:Seq[RestDay] = stages.collect { case s: RestDay => s }

  def stageChronology:Seq[Stage] = stages.sortWith((x,y) => x.date.getDayOfYear < y.date.getDayOfYear)

  def firstStage:Stage = stageChronology(0)
  def lastStage:Stage = stageChronology.last

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
