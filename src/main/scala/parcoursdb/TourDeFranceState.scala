package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class NonConsecutiveStageRaceState(year: Int, stageID: Int, stages: Seq[Stage])

object NonConsecutiveStageRaceState {

  def init(year:Int) = NonConsecutiveStageRaceState(year=year, stageID=1, stages=Seq[Stage]())

  def getStageID(s:NonConsecutiveStageRaceState) : String = s"${s.stageID}"

  def roadStage(month: Int, day: Int, start:Location, finish:Location, length: Double) : State[NonConsecutiveStageRaceState, Unit] = {
    for {
      s <- get[NonConsecutiveStageRaceState]
      stage = RoadStage(LocalDate.of(s.year, month, day),getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(year=s.year, stageID=s.stageID + 1, stages=s.stages :+ stage))
    } yield producedValue
  }
}

case class EarlyTourDeFranceState(date: LocalDate, stageID: Int, stages: Seq[Stage])

object EarlyTourDeFranceState {

  def init(date:LocalDate) = EarlyTourDeFranceState(date=date, stageID=1, stages=Seq[Stage]())

  def addDays(incr:Int) : State[EarlyTourDeFranceState, Unit] = {
    for {
      s <- get[EarlyTourDeFranceState]
      producedValue <- put(s.copy(date=s.date.plusDays(incr)))
    } yield producedValue
  }

  def getStageID(s:EarlyTourDeFranceState) : String = s"${s.stageID}"

  def roadStage(start:Location, finish:Location, length: Double) : State[EarlyTourDeFranceState, Unit] = {
    for {
      s <- get[EarlyTourDeFranceState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=s.date, stageID=s.stageID + 1, stages=s.stages :+ stage))
    } yield producedValue
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[EarlyTourDeFranceState, Unit] = {
    for {
      s <- get[EarlyTourDeFranceState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=s.date, stageID=s.stageID + 1, stages=s.stages :+ stage))
    } yield producedValue
  }
}

case class ModernTourDeFranceState(date: LocalDate,
                          stageID: Int,
                          splitStages: Boolean,
                          splitStageID: Char,
                          morningStage: Boolean,
                          stages: Seq[Stage])

object ModernTourDeFranceState {

  def init(date:LocalDate) = {
    ModernTourDeFranceState(date=date,
                      stageID=1,
                      splitStages=false,
                      splitStageID='a',
                      morningStage=false,
                      stages=Seq[Stage]())
  }

  def morningStage : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      producedValue <- put(s.copy(morningStage=true))
    } yield producedValue
  }

  def afternoonStage : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      producedValue <- put(s.copy(morningStage=false))
    } yield producedValue
  }

  def enableSplitStages : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      producedValue <- put(s.copy(splitStages=true,splitStageID='a'))
    } yield producedValue
  }

  def disableSplitStages : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      producedValue <- put(s.copy(splitStages=false,stageID=s.stageID + 1,date=s.date.plusDays(1)))
    } yield producedValue
  }

  def nextStageDate(s:ModernTourDeFranceState) : LocalDate = {
    if (s.splitStages || s.morningStage) s.date else s.date.plusDays(1)
  }

  def nextStageID(s:ModernTourDeFranceState) : Int = if (s.splitStages) s.stageID else s.stageID + 1

  def nextSplitStageID(s:ModernTourDeFranceState) : Char = {
    if (s.splitStages) (s.splitStageID + 1).toChar else s.splitStageID
  }

  def getStageID(s:ModernTourDeFranceState) : String = {
    if (s.splitStages) s"${s.stageID}${s.splitStageID}" else s"${s.stageID}"
  }

  def prologue(start:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    prologue(start, start, length)
  }
 
  def prologue(start:Location, finish:Location, length:Double) : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = Prologue(s.date, start, finish, length)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }
 
  def roadStage(start:String, finish:String, length: Double)(implicit country:Country) : State[ModernTourDeFranceState, Unit] = {
    roadStage(Location(start),Location(finish),length)
  }

  def roadStage(start:Location, finish:String, length:Double)(implicit country:Country) : State[ModernTourDeFranceState, Unit] = {
    roadStage(start,Location(finish),length)
  }

  def roadStage(start:String, finish:Location, length:Double)(implicit country:Country) : State[ModernTourDeFranceState, Unit] = {
    roadStage(Location(start),finish,length)
  }

  def roadStage(start:Location, finish:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = RoadStage(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
                                  splitStageID=nextSplitStageID(s),
                                  stages=s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start: Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    roadStage(start,start,length)
  }

  def teamTimeTrial(start:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    teamTimeTrial(start,start,length)
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = TeamTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				  splitStageID=nextSplitStageID(s),
				  stages=s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    individualTimeTrial(start,start,length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = IndividualTimeTrial(s.date,getStageID(s), start, finish, length, Set.empty[Col])
      producedValue <- put(s.copy(date=nextStageDate(s),
                                  stageID=nextStageID(s),
				  splitStageID=nextSplitStageID(s),
				  stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay: State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = RestDay(s.date,None)
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def restDay(location:Location): State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
      stage = RestDay(s.date,Some(location))
      producedValue <- put(s.copy(date=nextStageDate(s), stages=s.stages :+ stage))
    } yield producedValue
  }

  def hc(name:String, height:Double, summitKM:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,HC,height,summitKM,None,None,None))
  }

  def hc(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,HC,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c1(name:String, height:Double, summitKM:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C1,height,summitKM,None,None,None))
  }

  def c2(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c2(name:String, height:Double, summitKM:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C2,height,summitKM,None,None,None))
  }

  def c3(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c3(name:String, height:Double, summitKM:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C3,height,summitKM,None,None,None))
  }

  def c4(name:String, height:Double, summitKM:Double, length:Double, averageGradient:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,Some(length),Some(averageGradient),None))
  }

  def c4(name:String, height:Double, summitKM:Double) : State[ModernTourDeFranceState, Unit] = {
    addCol(Col(name,C4,height,summitKM,None,None,None))
  }

  private def addCol(col:Col) : State[ModernTourDeFranceState, Unit] = {
    for {
      s <- get[ModernTourDeFranceState]
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
