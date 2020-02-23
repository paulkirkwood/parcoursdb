package parcoursdb

import ItalianLocations._
import java.time.LocalDate
import TirrenoAdriaticoState._

object TirrenoAdriaticoEditions {

  implicit val country:Country = Italy

  def tirrenoAdriatico2013:StageRaceEdition = {
    val composition = for {
      _ <- prologue(sanVincenzo, donoratico, 16.9)
      _ <- roadStage(sanVincenzo, indicatore, 232.0)
      _ <- roadStage(indicatore, narniScalo, 190.0)
      _ <- roadStage(narniScalo, pratiDiTivo, 173.0)
      _ <- roadStage(ortona, chieti, 230.0)
      _ <- criterium(portoSantElpidio, 209.0)
      _ <- individualTimeTrial(sanBenedettoDelTronto, 9.2)
    } yield()
    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2013,3,6)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2014:StageRaceEdition = {
    val composition = for {
      _ <- prologue(donoratico, sanVincenzo, 18.5)
      _ <- roadStage(sanVincenzo, cascina, 166.0)
      _ <- roadStage(cascina, arezzo, 212.0)
      _ <- roadStage(indicatore, cittareale, 244.0)
      _ <- roadStage(amatrice, guardiagrele, 192.0)
      _ <- roadStage(bucchianico, portoSantElpidio, 193.0)
      _ <- individualTimeTrial(sanBenedettoDelTronto, 9.1)
    } yield()
    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2014,3,12)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2015:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial(lidoDiCamaiore, 5.4)
      _ <- roadStage(camaiore, cascina, 153.0)
      _ <- roadStage(cascina, arezzo, 203.0)
      _ <- roadStage(indicatore, castelraimondo, 226.0)
      _ <- roadStage(esanatoglia, monteTerminillo, 196.9)
      _ <- roadStage(rieti, portoSantElpidio, 210.0)
      _ <- individualTimeTrial(sanBenedettoDelTronto, 10.1)
    } yield()
    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2015,3,11)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2016:StageRaceEdition = {
    val composition = for {
      _ <- teamTimeTrial(lidoDiCamaiore, 22.7)
      _ <- roadStage(camaiore, pomarance, 207.0)
      _ <- roadStage(castelnuouvoDiValDiCecina, montaltoDiCastro, 176.0)
      _ <- roadStage(montaltoDiCastro, foligno, 216.0)
      _ <- roadStage(foligno, monteSanVicino, 178.0)
      _ <- roadStage(castelraimondo, cepagatti, 210.0)
      _ <- individualTimeTrial(sanBenedettoDelTronto, 10.1)
    } yield()
    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2016,3,9)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2017:StageRaceEdition = {
    val composition = for {
      _ <- teamTimeTrial(lidoDiCamaiore, 22.7)
      _ <- roadStage(camaiore, pomarance, 229.0)
      _ <- roadStage(monterotondoMarittimo, montaltoDiCastro, 204.0)
      _ <- roadStage(montaltoDiCastro, monteTerminillo, 187.0)
      _ <- roadStage(rieti, fermo, 210.0)
      _ <- roadStage(ascoliPiceno, civitanovaMarche, 168.0)
      _ <- individualTimeTrial(sanBenedettoDelTronto, 10)
    } yield()
    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2017,3,8)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2018:StageRaceEdition = {
    val composition = for {
      // Stage 1
      _ <- teamTimeTrial(lidoDiCamaiore, 21.5)

      // Stage 2
      _ <- roadStage(camaiore, follonica, 172)

      // Stage 3
      _ <- roadStage(follonica, trevi, 239)
      _ <- uc(name="Roccastrada", height=377, summitKM=35.7)
      _ <- uc(name="Passo del Lume Spento", height=631, summitKM=76.8)
      _ <- uc(name="La Foce", height=551, summitKM=113.8)
      _ <- uc(name="Trevi", height=425, summitKM=239)

      // Stage 4
      _ <- roadStage(foligno, sarnanoSassotetto, 219)
      _ <- uc(name="San Ginesio", height=638, summitKM=137.6)
      _ <- uc(name="Gualdo", height=651, summitKM=151.3)
      _ <- uc(name="Penna San Giovanni", height=599, summitKM=170.9)
      _ <- uc(name="Sarnano Sassotetto", height=1335, summitKM=219)

      // Stage 5
      _ <- roadStage(castelraimondo, filottrano, 178)
      _ <- uc(name="Montelupone", height=251, summitKM=49.9)
      _ <- uc(name="Osimo", height=265, summitKM=117.8)
      _ <- uc(name="Filottrano", height=245, summitKM=142.7)
      _ <- uc(name="Filottrano", height=245, summitKM=158.8)
      _ <- uc(name="Filottrano", height=245, summitKM=178)

      // Stage 6
      _ <- roadStage(numana, fano, 153)
      _ <- uc(name="Offagna", height=291, summitKM=36.2)
      _ <- uc(name="Ostra", height=188, summitKM=75.8)

      // Stage 7
      _ <- individualTimeTrial(sanBenedettoDelTronto, 10.1)
    } yield()

    val result = composition.exec(TirrenoAdriaticoState.init(LocalDate.of(2018,3,3)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }
}
