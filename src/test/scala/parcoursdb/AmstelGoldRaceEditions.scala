package parcoursdb

import java.time.LocalDate
import OneDayRaceState._

object AmstelGoldRaceEditions {

  implicit val country:Country = Netherlands

  val bergEnTerblijt = Location("Berg en Terblijt")
  val breda          = Location("Breda")
  val elsloo         = Location("Elsloo")
  val helmond        = Location("Helmond")
  val heerlen        = Location("Heerlen")
  val maastricht     = Location("Maastricht")
  val meerssen       = Location("Meerssen")
  val valkenburg     = Location("Valkenburg")

  def start(year:Int) : Location = year match {
    case year if 1966 to 1966 contains year => breda
    case year if 1967 to 1970 contains year => helmond
    case year if 1971 to 1997 contains year => heerlen
    case _ => maastricht
  }

  def finish(year:Int) : Location = year match {
    case year if 1996 to 1967 contains year => meerssen
    case year if 1969 to 1990 contains year => meerssen
    case year if 1968 to 1968 contains year => elsloo
    case year if 1991 to 2002 contains year => maastricht
    case year if 2003 to 2012 contains year => valkenburg
    case _ => bergEnTerblijt
  }

  def amstelGoldRace1966:OneDayRaceEdition = {
    val composition = for {
      edition <- build
    } yield(edition)
    composition.eval(OneDayRaceState.init(AmstelGoldRace, LocalDate.of(1966,4,30 start(1966), finish(1966), 302))
  }
}
