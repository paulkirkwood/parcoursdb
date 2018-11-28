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

sealed trait StageRaceTrait {
  val race: StageRace
  val stages: Seq[(LocalDateTime,String,Stage)]

  def start:Location = racingStages(0).start
  def finish:Location = racingStages.last.finish

  def length:Double = racingStages.map(_.length).sum
  
  def racingStages:Seq[RacingStage] = stages.map(_._3).collect { case p: Prologue => p 
                                                                 case r: RoadStage => r
                                                                 case t: TeamTimeTrial => t    
                                                                 case i: IndividualTimeTrial => i }    

  def prologues:Seq[Prologue] = stages.map(_._3).collect { case p: Prologue => p }
  def prologueKMs:Double = prologues.map(_.length).sum
  
  def roadStages:Seq[RoadStage] = stages.map(_._3).collect { case r: RoadStage => r }
  def roadStageKMs:Double = roadStages.map(_.length).sum

  def teamTimeTrials:Seq[TeamTimeTrial] = stages.map(_._3).collect { case t: TeamTimeTrial => t }
  def teamTimeTrialKMs:Double = teamTimeTrials.map(_.length).sum

  def individualTimeTrials:Seq[IndividualTimeTrial] = {
    stages.map(_._3).collect { case i: IndividualTimeTrial => i }
  }

  def individualTimeTrialKMs:Double = individualTimeTrials.map(_.length).sum

  def restDays:Seq[RestDay] = stages.map(_._3).collect { case r: RestDay => r }

  def summitFinishes:Integer = racingStages.filter(_.isSummitFinish).size

  def highPoint:Option[Col] = racingStages.flatMap(_.cols).sortWith(_.height > _.height).headOption
  def longestStage:Option[Stage] = racingStages.sortWith(_.length > _.length).headOption

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

case class StageRaceEdition(race:StageRace,
                            stages:Seq[(LocalDateTime,String,Stage)]) extends StageRaceTrait

// Stage Race Rules
// 1. There can be only one Prologue
// 2. The Prologue will be the first stage
// 3. The last stage cannot be a rest day
// 4. A rest day cannot follow a rest day
// 5. There are no date gaps between the stages

class StageRaceEditionBuilder[WithPrologueTracking <: TBoolean,
                              WithRoadStageTracking <: TBoolean,
                              WithTeamTimeTrialTracking <: TBoolean,
                              WithIndividualTimeTrialTracking <: TBoolean,
                              WithRestDayTracking <: TBoolean,
                              AllowSplitStages <: TBoolean,
			      WithSplitStageTracking <: TBoolean,
                              AllowMorningAndAfternoonStages <: TBoolean,
                              WithMorningStageTracking <: TBoolean](
  race:StageRace,
  date: LocalDateTime,
  stageNumber: Integer,
  stages: Seq[(LocalDateTime,String,Stage)] ){

  type && [A <: TBoolean, B <: TBoolean] = A#If[B, TFalse]
  type || [A <: TBoolean, B <: TBoolean] = A#If[TTrue, B]
  type Not [A <: TBoolean] = A#If[TFalse, TTrue]

  def withPrologue(stage: Prologue)(implicit ev: WithPrologueTracking =:= TFalse) = {
    new StageRaceEditionBuilder[TTrue,
                               WithRoadStageTracking,
			       WithTeamTimeTrialTracking,
			       WithIndividualTimeTrialTracking,
			       WithRestDayTracking,
			       AllowSplitStages,
			       WithSplitStageTracking,
			       AllowMorningAndAfternoonStages,
			       WithMorningStageTracking](race, date.plusDays(1), stageNumber, stages :+ (date,"P",stage))
  }

  def withRoadStage(stage: RoadStage) = {
    new StageRaceEditionBuilder[TTrue,
                                TTrue,WithTeamTimeTrialTracking,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,WithMorningStageTracking](race, date.plusDays(1), stageNumber+1, stages :+ (date,stageNumber.toString,stage))
  }

  def withTeamTimeTrial(stage: TeamTimeTrial) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,TTrue,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,WithMorningStageTracking](race, date.plusDays(1), stageNumber+1, stages :+ (date,stageNumber.toString,stage))
  }

  def withIndividualTimeTrial(stage: IndividualTimeTrial) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,WithTeamTimeTrialTracking,TTrue,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,WithMorningStageTracking](race, date.plusDays(1), stageNumber+1, stages :+ (date,stageNumber.toString,stage))
  }

  def withRestDay()(implicit ev:(WithRoadStageTracking || WithTeamTimeTrialTracking || WithIndividualTimeTrialTracking) && Not[WithRestDayTracking] =:= TTrue) = {
    new StageRaceEditionBuilder[WithPrologueTracking,WithRoadStageTracking,WithTeamTimeTrialTracking,WithIndividualTimeTrialTracking,TTrue,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,WithMorningStageTracking](race,date.plusDays(1),stageNumber,stages :+ (date,"",RestDay()))
  }

  def withRestDay(location: Location)(implicit ev:(WithRoadStageTracking || WithTeamTimeTrialTracking || WithIndividualTimeTrialTracking) && Not[WithRestDayTracking] =:= TTrue) = {
    new StageRaceEditionBuilder[WithPrologueTracking,WithRoadStageTracking,WithTeamTimeTrialTracking,WithIndividualTimeTrialTracking,TTrue,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,WithMorningStageTracking](race,date.plusDays(1),stageNumber,stages :+ (date,"",RestDay(Some(location))))
  }

  def am(stage: RoadStage)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                    ev2: WithMorningStageTracking =:= TFalse) = {
    new StageRaceEditionBuilder[TTrue,TTrue,WithTeamTimeTrialTracking,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TTrue](race, date, stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def pm(stage: RoadStage)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                    ev2: WithMorningStageTracking =:= TTrue) = {
    new StageRaceEditionBuilder[TTrue,TTrue,WithTeamTimeTrialTracking,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TFalse](race, date.plusDays(1), stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def am(stage: TeamTimeTrial)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                        ev2: WithMorningStageTracking =:= TFalse) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,TTrue,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TTrue](race, date, stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def pm(stage: TeamTimeTrial)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                        ev2: WithMorningStageTracking =:= TTrue) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,TTrue,WithIndividualTimeTrialTracking,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TFalse](race, date.plusDays(1), stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def am(stage: IndividualTimeTrial)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                              ev2: WithMorningStageTracking =:= TFalse) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,WithTeamTimeTrialTracking,TTrue,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TTrue](race, date, stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def pm(stage: IndividualTimeTrial)(implicit ev1: AllowMorningAndAfternoonStages =:= TTrue,
                                              ev2: WithMorningStageTracking =:= TTrue) = {
    new StageRaceEditionBuilder[TTrue,WithRoadStageTracking,WithTeamTimeTrialTracking,TTrue,TFalse,AllowSplitStages,WithSplitStageTracking,AllowMorningAndAfternoonStages,TFalse](race, date.plusDays(1), stageNumber + 1, stages :+ (date,stageNumber.toString,stage))
  }

  def build()(implicit ev1: (WithRoadStageTracking || WithTeamTimeTrialTracking || WithIndividualTimeTrialTracking) =:= TTrue,
                       ev2: WithRestDayTracking =:= TFalse,
                       ev3: WithMorningStageTracking =:= TFalse):StageRaceEdition = {
    StageRaceEdition(race,stages)
  }
}

object StageRaceEditionBuilder {
  def apply(race:StageRace,date:LocalDateTime) = {

    type PrologueAdded = TFalse
    type RoadStageAdded = TFalse
    type TeamTimeTrialAdded = TFalse
    type IndividualTimeTrialAdded = TFalse
    type RestDayAdded = TFalse
    type AllowSplitStages = TTrue
    type SplitStageTracking = TFalse
    type AllowMorningAndAfternoonStages = TTrue
    type MorningStageAdded = TFalse

    new StageRaceEditionBuilder[PrologueAdded,RoadStageAdded,TeamTimeTrialAdded,IndividualTimeTrialAdded,RestDayAdded,AllowSplitStages,SplitStageTracking,AllowMorningAndAfternoonStages,MorningStageAdded](race,date,1,Seq[(LocalDateTime,String,Stage)]())
  }
}
