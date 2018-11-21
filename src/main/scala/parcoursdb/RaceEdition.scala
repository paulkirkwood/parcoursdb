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
      cols.collect { case c:HorsCategoryCol => c },
      cols.collect { case c:CategoryOneCol => c },
      cols.collect { case c:CategoryTwoCol => c },
      cols.collect { case c:CategoryThreeCol => c },
      cols.collect { case c:CategoryFourCol => c }
    )
    var buf = new ListBuffer[String]()
    for (c <- categories) {
      if ( c.size > 0 ) {
        buf += s"${c.size} ${ColUtils.category_name(c(0))}"
      }
    }
    //val hc = cols.collect { case c:HorsCategoryCol => c }
    //val c1 = cols.collect { case c:CategoryOneCol => c }
    //val c2 = cols.collect { case c:CategoryTwoCol => c }
    //val c3 = cols.collect { case c:CategoryThreeCol => c }
    //val c4 = cols.collect { case c:CategoryFourCol => c }
    //var buf = new ListBuffer[String]()
    //if (hc.size > 0) {
    //  buf += s"${hc.size} ${ColUtils.category_name(hc(0))}"
   // }

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

case class StageRaceEditionBuilder[WithPrologueTracking <: Count,
                                   WithRoadStageTracking <: Count,
                                   WithTeamTimeTrialTracking <: Count,
                                   WithIndividualTimeTrialTracking <: Count,
                                   WithRestDayTracking <: Count,
                                   WithLastStageTracking <: Count](
  race:StageRace,
  date: LocalDateTime,
  stageNumber: Integer,
  stages: Seq[(LocalDateTime,String,Stage)] ){

  type IsOnce[T] = =:=[T, Once]
  type IsZero[T] = =:=[T, Zero]

  def withPrologue[P <: WithPrologueTracking : IsZero,
                   S <: WithRoadStageTracking : IsZero,
                   T <: WithTeamTimeTrialTracking : IsZero,
                   I <: WithIndividualTimeTrialTracking : IsZero,
                   R <: WithRestDayTracking : IsZero,
                   L <: WithLastStageTracking](stage: Prologue) = {
    StageRaceEditionBuilder[Once,
         WithRoadStageTracking,
         WithTeamTimeTrialTracking,
         WithIndividualTimeTrialTracking,
         WithRestDayTracking,
         WithLastStageTracking](race,date.plusDays(1),stageNumber,stages :+ (date,"P",stage))
  }

  def withRoadStage[P <: WithPrologueTracking,
                    S <: WithRoadStageTracking,
                    T <: WithTeamTimeTrialTracking,
                    I <: WithIndividualTimeTrialTracking,
                    R <: WithRestDayTracking,
                    L <: WithLastStageTracking](stage: RoadStage) = {
    StageRaceEditionBuilder[WithPrologueTracking,
         Once,
         WithTeamTimeTrialTracking,
         WithIndividualTimeTrialTracking,
         Zero,
         Once](race,date.plusDays(1),stageNumber+1,stages :+ (date,stageNumber.toString,stage))
  }

  def withTeamTimeTrial[P <: WithPrologueTracking,
                        S <: WithRoadStageTracking,
                        T <: WithTeamTimeTrialTracking,
                        I <: WithIndividualTimeTrialTracking,
                        R <: WithRestDayTracking,
                        L <: WithLastStageTracking](stage: TeamTimeTrial) = {
    StageRaceEditionBuilder[WithPrologueTracking,
         WithRoadStageTracking,
         Once,
         WithIndividualTimeTrialTracking,
         Zero,
         Once](race,date.plusDays(1),stageNumber+1,stages :+ (date,stageNumber.toString,stage))
  }

  def withIndividualTimeTrial[P <: WithPrologueTracking,
                              S <: WithRoadStageTracking,
                              T <: WithTeamTimeTrialTracking,
                              I <: WithIndividualTimeTrialTracking,
                              R <: WithRestDayTracking,
                              L <: WithLastStageTracking](stage: IndividualTimeTrial) = {
    StageRaceEditionBuilder[WithPrologueTracking,
         WithRoadStageTracking,
         WithTeamTimeTrialTracking,
         Once,
         Zero,
         Once](race,date.plusDays(1),stageNumber+1,stages :+ (date,stageNumber.toString,stage))
  }

  def withRestDay[P <: WithPrologueTracking,
                  S <: WithRoadStageTracking : IsOnce,
                  T <: WithTeamTimeTrialTracking,
                  I <: WithIndividualTimeTrialTracking,
                  R <: WithRestDayTracking : IsZero,
                  L <: WithLastStageTracking](stage: RestDay) = {
    StageRaceEditionBuilder[WithPrologueTracking,
         WithRoadStageTracking,
         WithTeamTimeTrialTracking,
         WithIndividualTimeTrialTracking,
         Once,
         Zero](race,date.plusDays(1),stageNumber,stages :+ (date,"",stage))
  }

  def build[P <: WithPrologueTracking,
            R <: WithRoadStageTracking : IsOnce,
            T <: WithTeamTimeTrialTracking,
            I <: WithIndividualTimeTrialTracking,
            L <: WithLastStageTracking : IsOnce]:StageRaceEdition = {
    StageRaceEdition(race,stages)
  }
}

object StageRaceEditionBuilder {
  def apply(race:StageRace,date:LocalDateTime) = {
    new StageRaceEditionBuilder[Zero,Zero,Zero,Zero,Zero,Zero](race,date,1,Seq[(LocalDateTime,String,Stage)]())
  }
}
