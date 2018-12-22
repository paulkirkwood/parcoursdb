package parcoursdb

import java.time.LocalDate
import StageRaceState._

object TirrenoAdriaticoEditions {

  implicit val country:Country = Italy

  def tirreno2018:StageRaceEdition = {
    val composition = for {
      // Stage 1
      _ <- teamTimeTrial("Lido di Camaiore", 21.5)

      // Stage 2
      _ <- roadStage(start="Camaiore", finish="Follonica", length=172)

      // Stage 3
      _ <- roadStage(start="Follonica", finish="Trevi", length=239)
      _ <- uncategorisedCol(name="Roccastrada", height=377, summitKM=35.7)
      _ <- uncategorisedCol(name="Passo del Lume Spento", height=631, summitKM=76.8)
      _ <- uncategorisedCol(name="La Foce", height=551, summitKM=113.8)
      _ <- uncategorisedCol(name="Trevi", height=425, summitKM=239)

      // Stage 4
      _ <- roadStage(start="Foligno", finish="Sarnano Sassotetto", length=219)
      _ <- uncategorisedCol(name="San Ginesio", height=638, summitKM=137.6)
      _ <- uncategorisedCol(name="Gualdo", height=651, summitKM=151.3)
      _ <- uncategorisedCol(name="Penna San Giovanni", height=599, summitKM=170.9)
      _ <- uncategorisedCol(name="Sarnano Sassotetto", height=1335, summitKM=219)

      // Stage 5
      _ <- roadStage(start="Castelraimondo", finish="Filottrano", length=178)
      _ <- uncategorisedCol(name="Montelupone", height=251, summitKM=49.9)
      _ <- uncategorisedCol(name="Osimo", height=265, summitKM=117.8)
      _ <- uncategorisedCol(name="Filottrano", height=245, summitKM=142.7)
      _ <- uncategorisedCol(name="Filottrano", height=245, summitKM=158.8)
      _ <- uncategorisedCol(name="Filottrano", height=245, summitKM=178)

      // Stage 6
      _ <- roadStage(start="Numana", finish="Fano", length=153)
      _ <- uncategorisedCol(name="Offagna", height=291, summitKM=36.2)
      _ <- uncategorisedCol(name="Ostra", height=188, summitKM=75.8)

      // Stage 7
      _ <- individualTimeTrial("San Benedetto del Tronto", length=10.1)
    } yield()

    val result = composition.exec(StageRaceState.init(TirrenoAdriatico,LocalDate.of(2018,3,3)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }
}
