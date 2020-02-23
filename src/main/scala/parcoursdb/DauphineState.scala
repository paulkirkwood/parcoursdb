package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class DauphineState(date: LocalDate,
                          stageID: Int,
                          stages: Seq[Stage])

object DauphineState {

  def init(date:LocalDate) = DauphineState(date=date, stageID=1, stages=Seq[Stage]())

  def nextStageDate(s:DauphineState) : LocalDate = s.date.plusDays(1)

  def nextStageID(s:DauphineState) : Int = s.stageID + 1

  def getStageID(s:DauphineState) : String = s"${s.stageID}"

  def prologue(start:Location, length: Double) : State[DauphineState, Unit] = prologue(start, start, length)
 
  def prologue(start:Location, finish:Location, length:Double) : State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = Prologue(s.date, start, finish, length)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }
 
  def roadStage(start:Location, finish:Location, length: Double) : State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
                                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start: Location, length: Double) : State[DauphineState, Unit] = {
    roadStage(start,start,length)
  }

  def teamTimeTrial(start:Location, length: Double) : State[DauphineState, Unit] = {
    teamTimeTrial(start,start,length)
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:Location, length: Double) : State[DauphineState, Unit] = {
    individualTimeTrial(start,start,length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = IndividualTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay(): State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = RestDay(s.date,None)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay(location:Location): State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
      stage = RestDay(s.date,Some(location))
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def hc(name:String, height:Double, summitKM:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,HC,height,summitKM,None,None,None))
  }

  def hc(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,HC,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C1,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C1,height,summitKM,None,None,None))
  }

  def c2(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C2,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c2(name:String, height:Double, summitKM:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C2,height,summitKM,None,None,None))
  }

  def c3(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C3,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c3(name:String, height:Double, summitKM:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C3,height,summitKM,None,None,None))
  }

  def c4(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C4,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c4(name:String, height:Double, summitKM:Double) : State[DauphineState, Unit] = {
    addCol(Col(name,C4,height,summitKM,None,None,None))
  }

  private def addCol(col:Col) : State[DauphineState, Unit] = {
    for {
      s <- get[DauphineState]
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
