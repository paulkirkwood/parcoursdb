package parcoursdb

import java.time.LocalDate
import StageRaceState._

object Giro2016 {

  def giro:StageRaceEdition = {

    implicit val country:Country = Italy

    val apeldoorn = Location("Apeldoorn")(Netherlands)
    val arnhem    = Location("Arnhem")(Netherlands)
    val nijmegen  = Location("Nijmegen")(Netherlands)

    val composition = for {
      // Stage 1
      _ <- individualTimeTrial(apeldoorn,9.8)

      // Stage 2
      _ <- roadStage(arnhem,nijmegen,190) 
      _ <- c4("Berg en Dal", height=96, summitKM=155.3)

      // Stage 3
      _ <- roadStage(nijmegen,arnhem,190)
      _ <- c4("Posbank", height=88, summitKM=136.9)

      _ <- restDay()

      // Stage 4
      _ <- roadStage("Catanzaro", "Praia a Mare", 200)
      _ <- c3("Bonifati", height=409, summitKM=126)
      _ <- c3("San Pietro", height=378, summitKM=150.4)

      // Stage 5
      _ <- roadStage("Praia a Mare", "Benevento", 233)
      _ <- c3("Fortino", height=783, summitKM=35)

      // Stage 6
      _ <- roadStage("Ponte", "Roccaraso (Aremogna)", 157)
      _ <- c2("Bocca d. Selva", height=1393, summitKM=54.1)
      _ <- c2("Roccaraso (Aremogna)", height=1572, summitKM=157)

      // Stage 7
      _ <- roadStage("Sulmona", "Foligno", 211)
      _ <- c2("La Svolte di Popoli", height=746, summitKM=20)
      _ <- c4("Valico della Somma", height=646, summitKM=170.2)

      // Stage 8
      _ <- roadStage("Foligno", "Arezzo", 186)
      _ <- c3("Scheggia", height=576, summitKM=120)
      _ <- c2("Alpe di Poti", height=827, summitKM=167.6)

      // Stage 9
      _ <- individualTimeTrial("Chianti Classico Stage", 40.5)

      _ <- restDay()

      // Stage 10
      _ <- roadStage("Campi Bisenzio", "Sestola", 219)
      _ <- c3("Passo della Collina", height=777, summitKM=37.5)
      _ <- c3("Pietracolora", height=805, summitKM=75.8)
      _ <- c1("Pian del Falco", height=1352, summitKM=20)
      _ <- c3("Sestola", height=998, summitKM=219)

      // Stage 11
      _ <- roadStage("Modena", "Asolo", 227)
      _ <- c4("Forcella Mostaccin", height=374, summitKM=207.7)

      // Stage 12
      _ <- roadStage("Noale", "Bibione", 182)

      // Stage 13
      _ <- roadStage("Palmanova", "Cividale del Friuli", 170)
      _ <- c1("Montemaggiore", height=985, summitKM=57.5)
      _ <- c2("Crai", height=813, summitKM=80.9)
      _ <- c1("Cima Porzus", height=910, summitKM=138.5)
      _ <- c2("Valle", height=682, summitKM=156.1)

      // Stage 14
      _ <- roadStage("Alpago (Farra)", "Corvara", 210)
      _ <- c1("Passo Pordoi", height=2239, summitKM=94.7)
      _ <- c2("Passo Sella", height=2244, summitKM=106.6)
      _ <- c3("Passo Gardena", height=2121, summitKM=111.9)
      _ <- c2("Passo Campolongo", height=1875, summitKM=132.8)
      _ <- c1("Passo Giau", height=2236, summitKM=168.8)
      _ <- c2("Passo Valparola", height=2200, summitKM=190.6)

      // Stage 15
      _ <- individualTimeTrial("Castelrotto", "Alpe di Siusi/Seiseralm", 10.8)
      _ <- c1("Alpe di Siusi", height=1844, summitKM=10.8)

      _ <- restDay()

      // Stage 16
      _ <- roadStage("Bressanone", "Andalo", 132)
      _ <- c2("Passo della Mendola", height=1363, summitKM=64.3)
      _ <- c2("Fai della Paganella", height=994, summitKM=122.4)
      _ <- c3("Andaolo", height=1024, summitKM=132)

      // Stage 17
      _ <- roadStage("Molveno", "Cassano d'Adda", 196)
      _ <- c4("Passo Sant'Eusebio", height=570, summitKM=99.5)

      // Stage 18
      _ <- roadStage("Muggio", "Pinerolo", 244)
      _ <- c2("Pramartino", height=925, summitKM=220.5)

      // Stage 19
      _ <- roadStage("Pinerolo", "Risoul", 162)
      _ <- c1("Colle dell'Agnello", height=2744, summitKM=106.4)
      _ <- c1("Risoul", height=1862, summitKM=162)

      // Stage 20
      _ <- roadStage("Guillestre", "Sant'Anna di Vinadio", 134)
      _ <- c1("Col de Vars", height=2108, summitKM=19)
      _ <- c1("Col de la Bonette", height=2715, summitKM=63.1)
      _ <- c1("Colle della Lombardia", height=2530, summitKM=123.7)
      _ <- c3("Sant'Anna di Vinadio", height=2015, summitKM=134)

      // Stage 21
      _ <- roadStage("Cuneo", "Torino", 163)

    } yield()

    val result = composition.exec(StageRaceState(TourOfItaly,LocalDate.of(2016,5,6), 1, Seq[Stage]()))
    StageRaceEdition(TourOfItaly, result.stages)
  }
}
