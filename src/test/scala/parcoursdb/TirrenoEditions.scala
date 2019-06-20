package parcoursdb

import java.time.LocalDate
import StageRaceState._

object TirrenoAdriaticoEditions {

  implicit val country:Country = Italy

  def tirrenoAdriatico2013:StageRaceEdition = {
    val composition = for {
      _ <- prologue("San Vincenzo", "Donoratico", 16.9)
      _ <- roadStage(start="San Vincenzo", finish="Indicatore", length=232.0)
      _ <- roadStage(start="Indicatore", finish="Narni Scalo", length=190.0)
      _ <- roadStage(start="Narni Scalo", finish="Prati di Tivo", length=173.0)
      _ <- roadStage(start="Ortona", finish="Chieti", length=230.0)
      _ <- criterium("Porto Sant'Elpidio", length=209.0)
      _ <- individualTimeTrial("San Benedetto del Tronto", 9.2)
    } yield()
    val result = composition.exec(StageRaceState.init(TirrenoAdriatico, LocalDate.of(2013,3,6)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2014:StageRaceEdition = {
    val composition = for {
      _ <- prologue("Donoratico", "San Vincenzo", 18.5)
      _ <- roadStage(start="San Vincenzo", finish="Cascina", length=166.0)
      _ <- roadStage(start="Cascina", finish="Arezzo", length=212.0)
      _ <- roadStage(start="Indicatore", finish="Cittareale", length=244.0)
      _ <- roadStage(start="Amatrice", finish="Guardiagrele", length=192.0)
      _ <- roadStage(start="Bucchianico", finish="Porto Sant'Elpidio", length=193.0)
      _ <- individualTimeTrial("San Benedetto del Tronto", 9.1)
    } yield()
    val result = composition.exec(StageRaceState.init(TirrenoAdriatico, LocalDate.of(2014,3,12)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2015:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial("Lido di Camaiore", 5.4)
      _ <- roadStage(start="Camaiore", finish="Cascina", length=153.0)
      _ <- roadStage(start="Cascina", finish="Arezzo", length=203.0)
      _ <- roadStage(start="Indicatore", finish="Castelraimondo", length=226.0)
      _ <- roadStage(start="Esanatoglia", finish="Monte Terminillo", length=196.9)
      _ <- roadStage(start="Rieti", finish="Porto Sant'Elpidio", length=210.0)
      _ <- individualTimeTrial("San Benedetto del Tronto", 10.1)
    } yield()
    val result = composition.exec(StageRaceState.init(TirrenoAdriatico, LocalDate.of(2015,3,11)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2016:StageRaceEdition = {
    val composition = for {
      _ <- teamTimeTrial("Lido di Camaiore", 22.7)
      _ <- roadStage(start="Camaiore", finish="Pomarance", length=207.0)
      _ <- roadStage(start="Castelnuouvo di Val di Cecina", finish="Montalto di Castro", length=176.0)
      _ <- roadStage(start="Montalto di Castro", finish="Foligno", length=216.0)
      _ <- roadStage(start="Foligno", finish="Monte San Vicino", length=178.0)
      _ <- roadStage(start="Castelraimondo", finish="Cepagatti", length=210.0)
      _ <- individualTimeTrial("San Benedetto del Tronto", 10.1)
    } yield()
    val result = composition.exec(StageRaceState.init(TirrenoAdriatico, LocalDate.of(2016,3,9)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2017:StageRaceEdition = {
    val composition = for {
      _ <- teamTimeTrial("Lido di Camaiore", 22.7)
      _ <- roadStage(start="Camaiore", finish="Pomarance", length=229.0)
      _ <- roadStage(start="Monterotondo Marittimo", finish="Montalto di Castro", length=204.0)
      _ <- roadStage(start="Montalto di Castro", finish="Monte Terminillo", length=187.0)
      _ <- roadStage(start="Rieti", finish="Fermo", length=210.0)
      _ <- roadStage(start="Ascoli Piceno", finish="Civitanova Marche", length=168.0)
      _ <- individualTimeTrial("San Benedetto del Tronto", 10)
    } yield()
    val result = composition.exec(StageRaceState.init(TirrenoAdriatico, LocalDate.of(2017,3,8)))
    StageRaceEdition(TirrenoAdriatico, result.stages)
  }

  def tirrenoAdriatico2018:StageRaceEdition = {
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
