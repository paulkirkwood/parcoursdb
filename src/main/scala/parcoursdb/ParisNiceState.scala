package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class ParisNiceState(date: LocalDate,
                          stageID: Int,
                          stages: Seq[Stage])

object ParisNiceState {

  def init(date:LocalDate) = ParisNiceState(date=date, stageID=1, stages=Seq[Stage]())

  def nextStageDate(s:ParisNiceState) : LocalDate = s.date.plusDays(1)

  def nextStageID(s:ParisNiceState) : Int = s.stageID + 1

  def getStageID(s:ParisNiceState) : String = s"${s.stageID}"

  def prologue(start:Location, length: Double) : State[ParisNiceState, Unit] = prologue(start, start, length)
 
  def prologue(start:Location, finish:Location, length:Double) : State[ParisNiceState, Unit] = {
    for {
      s <- get[ParisNiceState]
      stage = Prologue(s.date, start, finish, length)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }
 
  def roadStage(start:Location, finish:Location, length: Double) : State[ParisNiceState, Unit] = {
    for {
      s <- get[ParisNiceState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
                                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start: Location, length: Double) : State[ParisNiceState, Unit] = {
    roadStage(start,start,length)
  }

  def teamTimeTrial(start:Location, length: Double) : State[ParisNiceState, Unit] = {
    teamTimeTrial(start,start,length)
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[ParisNiceState, Unit] = {
    for {
      s <- get[ParisNiceState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:Location, length: Double) : State[ParisNiceState, Unit] = {
    individualTimeTrial(start,start,length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[ParisNiceState, Unit] = {
    for {
      s <- get[ParisNiceState]
      stage = IndividualTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def c1(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,None,None,None))
  }

  def c2(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c2(name:String, height:Double, summitKM:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,None,None,None))
  }

  def c3(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c3(name:String, height:Double, summitKM:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,None,None,None))
  }

  def c4(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c4(name:String, height:Double, summitKM:Double) : State[ParisNiceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,None,None,None))
  }

  private def addCol(col:Col) : State[ParisNiceState, Unit] = {
    for {
      s <- get[ParisNiceState]
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
