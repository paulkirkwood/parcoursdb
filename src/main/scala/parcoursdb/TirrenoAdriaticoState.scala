package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class TirrenoAdriaticoState(
    date: LocalDate,
    stageID: Int,
    stages: Seq[Stage])

object TirrenoAdriaticoState {

  def init(date:LocalDate) = {
    TirrenoAdriaticoState(
        date=date,
        stageID=1,
        stages=Seq[Stage]())
  }

  def nextStageDate(s:TirrenoAdriaticoState) : LocalDate = s.date.plusDays(1)

  def nextStageID(s:TirrenoAdriaticoState) : Int = s.stageID + 1

  def getStageID(s:TirrenoAdriaticoState) : String = s"${s.stageID}"

  def prologue(start:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    prologue(start, start, length)
  }
 
  def prologue(start:Location, finish:Location, length:Double) : State[TirrenoAdriaticoState, Unit] = {
    for {
      s <- get[TirrenoAdriaticoState]
      stage = Prologue(s.date, start, finish, length)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }
 
  def roadStage(start:Location, finish:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    for {
      s <- get[TirrenoAdriaticoState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
                                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start: Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    roadStage(start,start,length)
  }

  def teamTimeTrial(start:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    teamTimeTrial(start,start,length)
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    for {
      s <- get[TirrenoAdriaticoState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    individualTimeTrial(start,start,length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[TirrenoAdriaticoState, Unit] = {
    for {
      s <- get[TirrenoAdriaticoState]
      stage = IndividualTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def uc(name:String, height:Double, summitKM:Double) : State[TirrenoAdriaticoState, Unit] = {
    addCol(Col(name,Uncategorised,height,summitKM,None,None,None))
  }

  private def addCol(col:Col) : State[TirrenoAdriaticoState, Unit] = {
    for {
      s <- get[TirrenoAdriaticoState]
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
