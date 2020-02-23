package parcoursdb

import java.time.LocalDate
import OneDayRaceState._
import parcoursdb.BelgianLocations.{ans,liege}

object LiegeBastogneLiegeEditions {

  def finish(year:Int) : Location = year match {
    case year if 1992 to 2018 contains year => ans
    case _ => liege
  }

  def lbl2018:OneDayRaceEdition = {
    val composition = for {
      _ <- col(km=72, name="Cote de Bonnerue", height=493)
      _ <- col(km=109, name="Cote de Saint-Roch", height=456)
      _ <- col(km=152, name="Cote de Mont-le-Soie", height=558)
      _ <- col(km=168, name="Cote de Pont", height=443)
      _ <- col(km=172, name="Cote de Bellevaux", height=421)
      _ <- col(km=180, name="Cote de la Ferme Libert", height=502)
      _ <- col(km=198, name="Cote du Rosier", height=565)
      _ <- col(km=211, name="Col du Maquisard", height=367)
      _ <- col(km=222.5, name="Cote de la Redoute", height=314)
      _ <- col(km=239, name="Cote de la Roche-aux-Faucons", height=225)
      _ <- col(km=252.5, name="Cote de Saint-Nicolas", height=175)
      edition <- build
    } yield(edition)
    composition.eval(OneDayRaceState.init(LiegeBastogneLiege, LocalDate.of(2018,4,1), liege, finish(2018), 258))
  }
}
