package parcoursdb

import org.scalatest.FunSuite
import StartListState._

class StartListStateTests extends FunSuite {

  val sky = Team("Team Sky", UnitedKingdom)
  val eff = Team("Team EF Education First-Drapac p/b Cannondale", UnitedStates)
  val ag2r = Team("AG2R La Mondiale", France)

  test("Start list") {
    val expected = Seq[Rider](Rider( 1, Person("Chris", "Froome", UnitedKingdom), sky),
                              Rider( 2, Person("Egan", "Bernal", Colombia), sky),
                              Rider( 3, Person("Jonathan", "Castroviejo", Spain), sky),
                              Rider( 4, Person("Michal", "Kwiatkowski", Poland), sky),
                              Rider( 5, Person("Gianni", "Mosco", Italy), sky),
                              Rider( 6, Person("Wout", "Poels", Netherlands), sky),
                              Rider( 7, Person("Luke", "Rowe", UnitedKingdom), sky),
                              Rider( 8, Person("Geraint", "Thomas", UnitedKingdom), sky),
                              Rider( 11, Person("Rigoberto", "Uran", Colombia), eff),
                              Rider( 12, Person("Simon", "Clarke", Australia), eff),
                              Rider( 13, Person("Lawson", "Craddock", Australia), eff),
                              Rider( 14, Person("Daniel Felipe", "Martinez", Colombia), eff),
                              Rider( 15, Person("Taylor", "Phinney", UnitedStates), eff),
                              Rider( 16, Person("Pierre", "Rolland", France), eff),
                              Rider( 17, Person("Tom", "Scully", Australia), eff),
                              Rider( 18, Person("Sep", "Vanmarcke", Belgium), eff),
                              Rider( 21, Person("Romain", "Bardet", France), ag2r ),
                              Rider( 22, Person("Silvain", "Dillier", Switzerland), ag2r ),
                              Rider( 23, Person("Axel", "Domont", France), ag2r ),
                              Rider( 24, Person("Mathias", "Frank", Switzerland), ag2r ),
                              Rider( 25, Person("Tony", "Gallopin", France), ag2r ),
                              Rider( 26, Person("Pierre", "Latour", France), ag2r ),
                              Rider( 27, Person("Oliver", "Naesen", Belgium), ag2r ),
                              Rider( 28, Person("Alexis", "Vuillermoz", Belgium), ag2r ),
                              )
    val composition = for {
      _ <- addTeam(sky)
      _ <- addRider("Chris", "Froome", UnitedKingdom)
      - <- addRider("Egan", "Bernal", Colombia)
      - <- addRider("Jonathan", "Castroviejo", Spain)
      - <- addRider("Michal", "Kwiatkowski", Poland)
      - <- addRider("Gianni", "Mosco", Italy)
      - <- addRider("Wout", "Poels", Netherlands)
      - <- addRider("Luke", "Rowe", UnitedKingdom)
      - <- addRider("Geraint", "Thomas", UnitedKingdom)
      _ <- addTeam(eff)
      _ <- addRider("Rigoberto", "Uran", Colombia)
      _ <- addRider("Simon", "Clarke", Australia)
      _ <- addRider("Lawson", "Craddock", Australia)
      _ <- addRider("Daniel Felipe", "Martinez", Colombia)
      _ <- addRider("Taylor", "Phinney", UnitedStates)
      _ <- addRider("Pierre", "Rolland", France)
      _ <- addRider("Tom", "Scully", Australia)
      _ <- addRider("Sep", "Vanmarcke", Belgium)
      - <- addTeam(ag2r)
      _ <- addRider("Romain", "Bardet", France)
      _ <- addRider("Silvain", "Dillier", Switzerland)
      _ <- addRider("Axel", "Domont", France)
      _ <- addRider("Mathias", "Frank", Switzerland)
      _ <- addRider("Tony", "Gallopin", France)
      _ <- addRider("Pierre", "Latour", France)
      _ <- addRider("Oliver", "Naesen", Belgium)
      _ <- addRider("Alexis", "Vuillermoz", Belgium)
    } yield()
    val result = composition.exec(StartListState.init)
    assert(expected === result.riders)
  }
}
