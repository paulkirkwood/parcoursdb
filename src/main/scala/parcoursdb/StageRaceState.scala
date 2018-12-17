package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._

case class StageRaceState(race:StageRace, date: LocalDate, stageID: Int, stages: Seq[Stage])

object StageRaceState {

  def prologue(start:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,Prologue,s.stageID.toString, start, start, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def roadStage(start:String, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    roadStage(Location(start),Location(finish),length)
  }

  def roadStage(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,RoadStage,s.stageID.toString, start, finish, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def criterium(start:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    criterium(Location(start),length)
  }

  def criterium(start: Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,RoadStage,s.stageID.toString, start, start, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def teamTimeTrial(start:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,TeamTimeTrial,s.stageID.toString, start, start, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def teamTimeTrial(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,TeamTimeTrial,s.stageID.toString, start, finish, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(Location(start),length)
  }

  def individualTimeTrial(start:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,IndividualTimeTrial,s.stageID.toString, start, start, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def individualTimeTrial(start:String, finish:String, length: Double)(implicit country:Country) : State[StageRaceState, Unit] = {
    individualTimeTrial(Location(start),Location(finish),length)
  }

  def individualTimeTrial(start:Location, finish:Location, length: Double) : State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RacingStage(s.date,IndividualTimeTrial,s.stageID.toString, start, finish, length, Set[Col]())
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID + 1, s.stages :+ stage))
    } yield producedValue
  }

  def restDay(): State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RestDay(s.date,None)
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID, s.stages :+ stage))
    } yield producedValue
  }

  def restDay(location:String)(implicit country:Country) : State[StageRaceState, Unit] = {
    restDay(Location(location))
  }

  def restDay(location:Location): State[StageRaceState, Unit] = {
    for {
      s <- get[StageRaceState]
      stage = RestDay(s.date,Some(location))
      producedValue <- put(s.copy(s.race,s.date.plusDays(1), s.stageID, s.stages :+ stage))
    } yield producedValue
  }
}
