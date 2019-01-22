package parcoursdb

import scala.math.{ceil,log}
import scalaz._
import Scalaz._

case class StartListState(id:Int,team:Option[Team], riders:Seq[Rider])

object StartListState {
  def init = StartListState(id=1, team=None, riders=Seq[Rider]())

  def addRider(firstName:String, lastName:String, country:Country) : State[StartListState,Unit] = {
    for {
      s <- get[StartListState] 
      person = Person(firstName, lastName, country)
      rider = Rider(s.id, person, s.team.get)
      producedValue <- put(s.copy(id=s.id + 1, riders=s.riders :+ rider))
    } yield producedValue
  }

  def addTeam(team:Team) : State[StartListState,Unit] = {
    for {
      s <- get[StartListState]
      id = if (s.riders.size == 0) 1 else ceil(log(s.riders.last.id)/log(10)).toInt * 10 + 1
      producedValue <- put(s.copy(id=id, team=Some(team)))
    } yield producedValue
  }
}
