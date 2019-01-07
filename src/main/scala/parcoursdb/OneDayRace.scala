package parcoursdb

import java.time.LocalDate
import java.time.format.DateTimeFormatter

sealed trait OneDayRaceEdition {
  def race:OneDayRace
  def date: LocalDate
  def start:Location
  def finish:Location
  def length:Double
}

case class ParisRoubaixEdition(date:LocalDate,
                               start:Location,
                               finish:Location,
                               length:Double,
                               pave:Seq[ParisRoubaixPave]) extends OneDayRaceEdition {

  def race = ParisRoubaix
  def numberOfPaveSectors : Int = pave.map(_.id).distinct.size
  def totalPaveKMs : Double = pave.map(_.length).sum
  def paveSectors : List[String] = pave.map(PaveUtils.description(_,length)).toList
}

case class TourOfFlandersEdition(date:LocalDate,
                                 start:Location,
                                 finish:Location,
                                 length:Double,
                                 pave:Seq[RondePave],
                                 bergs:Seq[IndexedBerg]) extends OneDayRaceEdition {

  def race = TourOfFlanders
  def numberOfPaveSectors : Int = pave.size
  def totalPaveKMs : Double = pave.map(_.length).sum
  def paveSectors : List[String] = pave.map(PaveUtils.description(_,length)).toList

  def numberOfClimbs : Int = bergs.size
  def climbs : List[String] = bergs.map(IndexedBerg.description(_,length)).toList
}
