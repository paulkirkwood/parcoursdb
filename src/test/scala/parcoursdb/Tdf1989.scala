package parcoursdb

import java.time.LocalDate
import StageRaceState._

object TourDeFrance1989 { 

  def tdf:StageRaceEdition = {

    implicit val country:Country = France

    val luxembourgCity = Location("Luxembourg City")(Luxembourg)

    val composition = for {

      _ <- prologue(luxembourgCity, 7.8)

      // Stage 1 (AM)
      _ <- criterium(luxembourgCity, 135.5)

      // Stage 2 (PM)
      _ <- teamTimeTrial(luxembourgCity, 46)
 
    } yield()

    val result = composition.exec(StageRaceState(TourDeFrance,LocalDate.of(1989,7,1),1,Seq[Stage]()))
    StageRaceEdition(TourDeFrance, result.stages)
  }
}
