package parcoursdb

import java.time.LocalDate
import StageRaceState._

object ParisNice2018 {

  implicit val country:Country = France
  val nice:Location = Location("Nice")

  def parisNice:StageRaceEdition = {

    val composition = for {
      // Stage 1
      _ <- roadStage(start="Chatou", finish="Meudon", length=134.5)
      _ <- c3("Cote des Tournants", 172, 79 )
      _ <- c3("Cote de Meridon", 160, 85.5 )
      _ <- c3("Cote de Meridon", 160, 134.5 )

      // Stage 2
      _ <- roadStage(start="Orsonville", finish="Vierzon", length=187.5)

      // Stage 3
      _ <- roadStage(start="Bourges", finish="Chatel-Guyon", length=210)
      _ <- c3("Cote de la Bosse", 702, 123)
      _ <- c3("Cote des Boulards", 564, 143.5)
      _ <- c3("Cote des Charbonnieres", 716, 187.5)

      // Stage 4
      _ <- individualTimeTrial(start="La Fouillouse", finish="Saint-Etienne", length=18.4)

      // Stage 5
      _ <- roadStage(start="Salon-de-Provence", finish="Sisteron", length=165)
      _ <- c2("Cote du Pointu", 500, 49 )
      _ <- c1("Col de Lagarde-d'Apt", 1097, 76.5)
      _ <- c3("Col du Negron", 1242, 1060)
      _ <- c3("Cote de la Marquise", 569, 152)

      // Stage 6
      _ <- roadStage(start="Sisteron", finish="Vence", length=198)
      _ <- c2("Col de Luens", 1062, 101)
      _ <- c2("Col Bas", 1024, 121)
      _ <- c2("Cote de Cipieres", 744, 149)
      _ <- c2("Cote de Gourdon", 732, 159.5)
      _ <- c1("Cote de la Colle sur Loup", 273, 189.5)

      // Stage 7
      _ <- roadStage(start=nice, finish=Location("Valdeblore La Colmiane"), length=175)
      _ <- c2("Cote de Gattieres", 264, 10)
      _ <- c1("Cote de la Sainte-Baume", 1118, 84.5)
      _ <- c2("Col Saint-Raphael", 833, 108)
      _ <- c2("Cote de Villars-sur-Var", 417, 134.5)
      _ <- c1("Valdeblore La Colmiane", 1500, 175)

      // Stage 8
      _ <- criterium(nice, 110)
      _ <- c2("Cote de Levens", 477, 20.5)
      _ <- c1("Cote de Chateauneuf", 633, 36.5)
      _ <- c2("Col de Calaison", 468, 51)
      _ <- c1("Cote de Peille", 653, 67.5)
      _ <- c1("Cote d'Eze", 508, 83.5)
      _ <- c2("Col des Quatre Chemins", 338, 101)

    } yield()

    val result = composition.exec(StageRaceState(ParisNice,LocalDate.of(2018,3,4),1,Seq[Stage]()))
    StageRaceEdition(ParisNice, result.stages)
  }
}
