package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class StageRaceState(stageRace:StageRace,
                          date: LocalDate,
                          stageID: Int,
                          splitStages: Boolean,
                          splitStageID: Char,
                          morningStage: Boolean,
                          stages: Seq[Stage])

object StageRaceState {

  def init(stageRace:StageRace,date:LocalDate) = {
    StageRaceState(stageRace=stageRace,
                   date=date,
                   stageID=1,
                   splitStages=false,
                   splitStageID='a',
                   morningStage=false,
                   stages=Seq[Stage]())
  }

  def morningStage : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      producedValue <- put(s.copy(morningStage=true))
    } yield producedValue
  }

  def afternoonStage : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      producedValue <- put(s.copy(morningStage=false))
    } yield producedValue
  }

  def enableSplitStages : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      producedValue <- put(s.copy(splitStages=true,splitStageID='a'))
    } yield producedValue
  }

  def disableSplitStages : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      producedValue <- put(s.copy(splitStages=false,stageID=s.stageID + 1,date=s.date.plusDays(1)))
    } yield producedValue
  }

  def nextStageDate(s:StageRaceState) : LocalDate = {
    if (s.splitStages || s.morningStage) s.date else s.date.plusDays(1)
  }

  def nextStageID(s:StageRaceState) : Int = if (s.splitStages) s.stageID else s.stageID + 1

  def nextSplitStageID(s:StageRaceState) : Char = {
    if (s.splitStages) (s.splitStageID + 1).toChar else s.splitStageID
  }

  def getStageID(s:StageRaceState) : String = {
    if (s.splitStages) s"${s.stageID}${s.splitStageID}" else s"${s.stageID}"
  }

  def prologue(start:String, length:Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    prologue(Location(start), Location(start), length)
  }

  def prologue(start:String, finish:String, length:Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    prologue(Location(start), Location(finish), length)
  }

  def prologue(start:Location, length: Double) : State[StageRaceState, Unit] = {
    prologue(start, start, length)
   }
 
   def prologue(start:Location, finish:Location, length:Double) : State[StageRaceState, Unit] = {
     for {
       s <- get[StageRaceState]
       stage = Prologue(s.date, start, finish, length)
       producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
     } yield producedValue
   }
 
  def roadStage(start:String, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    roadStage(Location(start),Location(finish),length)
  }

  def roadStage(start:Location, finish:String, length:Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    roadStage(start,Location(finish),length)
  }

  def roadStage(start:String, finish:Location, length:Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    roadStage(Location(start),finish,length)
  }

  def roadStage(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
                                  splitStageID=nextSplitStageID(s),
                                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    roadStage(Location(start),Location(start),length)
  }

  def criterium(start: Location, length: Double) : State[StageRaceState, Unit] = {
    roadStage(start,start,length)
  }

  def teamTimeTrial(start:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    teamTimeTrial(Location(start),Location(start),length)
  }

  def teamTimeTrial(start:Location, length: Double) : State[StageRaceState, Unit] = {
    teamTimeTrial(start,start,length)
  }

  def teamTimeTrial(start:String, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    teamTimeTrial(Location(start), Location(finish), length)
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				  splitStageID=nextSplitStageID(s),
				  stages=s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(Location(start),Location(start),length)
  }

  def individualTimeTrial(start:String, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(Location(start),Location(finish),length)
  }

  def individualTimeTrial(start:Location, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(start,Location(finish),length)
  }

  def individualTimeTrial(start:String, finish:Location, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(Location(start),finish,length)
  }

  def individualTimeTrial(start:Location, length: Double) : State[StageRaceState, Unit] = {
    individualTimeTrial(start,start,length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = IndividualTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				  splitStageID=nextSplitStageID(s),
				  stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay(): State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RestDay(s.date,None)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay(location:String)(implicit country:Country) : State[StageRaceState, Unit] = {
    restDay(Location(location))
  }

  def restDay(location:Location): State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RestDay(s.date,Some(location))
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def hc(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,HC,height,summitKM,None,None,None))
  }

  def hc(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,HC,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,None,None,None))
  }

  def c2(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c2(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,None,None,None))
  }

  def c3(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c3(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,None,None,None))
  }

  def c4(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c4(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,None,None,None))
  }

  def uncategorisedCol(name:String, height:Double, summitKM:Double) : State[StageRaceState, Unit] = {
    addCol(Col(name,Uncategorised,height,summitKM,None,None,None))
  }

  private def addCol(col:Col) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage:Stage = s.stages.last match {
        case r:RoadStage => r.copy(cols=r.cols + col)
        case t:TeamTimeTrial => t.copy(cols=t.cols + col)
        case i:IndividualTimeTrial => i.copy(cols=i.cols + col)
        case p:Prologue => p
        case d:RestDay => d
      }
      producedValue <- put(s.copy(stages=s.stages.updated(s.stages.size - 1, stage)))
    } yield producedValue
  }
}
