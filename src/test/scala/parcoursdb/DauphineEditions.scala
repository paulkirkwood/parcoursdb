package parcoursdb

import FrenchLocations._
import java.time.LocalDate
import DauphineState._

object DauphineEditions {

  implicit val country:Country = France

  def dauphine2018:StageRaceEdition = {
    val composition = for {
      // Prologue
      _ <- prologue(valence, 6.6)

      // Stage 1
      _ <- roadStage(valence, saintJustSaintRambert, 179)
      _ <- c2(name= "Cote de Leyrisse", height=582, summitKM=9)
      _ <- c3(name= "Col de Desaignes", height=704, summitKM=46)
      _ <- c3(name= "Cote de Saint-Agreve", height=1052, summitKM=54)
      _ <- c4(name="Cote de Terriere", height=837, summitKM=89.5)
      _ <- c4(name="Cote de la Croix de Martet", height=563, summitKM=139)
      _ <- c4(name="Cote du Barrage de Grangent", height=494, summitKM=163)
      _ <- c4(name="Cote du Barrage de Grangent", height=494, summitKM=175)

      // Stage 2
      _ <- roadStage(montbrison, belleville, 181)
      _ <- c3(name="Col de Cambuse", height=711, summitKM=87.5)
      _ <- c3(name="Col de la Croix de Marchanpt", height=688, summitKM=108)
      _ <- c4(name="Cote de Regnie Durette", height=318, summitKM=121.5)
      _ <- c3(name="Col de Crie", height=613, summitKM=136.5)
      _ <- c3(name="Col du Fut d'Avenas", height=740, summitKM=151)

      // Stage 3
      _ <- teamTimeTrial(pontDeVaux, louhansChateaurenaud, 35)

      // Stage 4
      _ <- roadStage(chazeySurAin, lansEnVercors, 181)
      _ <- c4(name="Col de Toutes Aures", height=620, summitKM=102)
      _ <- hc(name="Col du Mont Noir", height=1421, summitKM=143.5)
      _ <- c2(name="Lans-en-Vercors", height=1409, summitKM=181)

      // Stage 5
      _ <- roadStage(grenoble, valmorel, 130)
      _ <- c2(name="Cote de Naysord", height=756, summitKM=4)
      _ <- c2(name="Col des Mouilles", height=1041, summitKM=19.5)
      _ <- hc(name="Valmorel", height=1369, summitKM=130)

      // Stage 6
      _ <- roadStage(frontenex, laRosiere, 110)
      _ <- hc(name="Monte de Bisanne", height=1723, summitKM=27.5)
      _ <- hc(name="Col du Pre", height=1748, summitKM=59.5)
      _ <- c2(name="Cormet de Roselend", height=1968, summitKM=72)
      _ <- c1(name="La Rosiere", height=1855, summitKM=110)

      // Stage 7
      _ <- roadStage(moutiers, saintGervaisMontBlanc, 136)
      _ <- c1(name="Cormet de Roselend", height=1968, summitKM=43)
      _ <- c3(name="Cote de la route des Villes", height=1078, summitKM=64.5)
      _ <- c1(name="Col des Saisies", height=1663, summitKM=88.5)
      _ <- c1(name="Cote des Amerands", height=888, summitKM=126.5)
      _ <- c1(name="Montee du Bettex", height=1372, summitKM=136)
    } yield()

    val result = composition.exec(DauphineState.init(LocalDate.of(2018,6,3)))
    StageRaceEdition(CriteriumDuDauphine, result.stages)
  }
}
