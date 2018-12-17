package parcoursdb

import java.time.LocalDate
import StageRaceState._

object Giro2017 {

  def giro:StageRaceEdition = {

    implicit val country:Country = Italy

    val composition = for {

      // Stage 1
      _ <- roadStage("Alghero", "Olbia", 206)
      //_ <- c4("Multeddu", height=182, summitKM=68)
      //_ <- c4("Trinità d’Agultu", height=362, summitKM=90.2)
      //_ <- c4("San Pantaleo", summitKM=185.1, height=215)

      // Stage 2
      _ <- roadStage("Olbia", "Tortolì", 221)
      //_ <- c2("Genina Silana", height=1002, summitKM=174.1)

      // Stage 3
      _ <- roadStage("Tortolì", "Cagliari", 148)
      //_ <- c4("Capo Boi", height=126, summitKM=107)

      // Rest Day #1
      _ <- restDay()

      // Stage 4
      _ <- roadStage("Cefalu", "Etna", 181)
      //_ <- c2("Portella Femmina Morta", height=1524, summitKM=90)
      //_ <- c1("Etna (Rif. Sapienza)", height=1892, summitKM=181)

      // Stage 5
      _ <- roadStage("Pedara", "Messina", 159)
      //_ <- c4("Andronico-Sant'Alfio", height=878, summitKM=38.4)

      // Stage 6
      _ <- roadStage("Reggio Calabria", "Terme Luigiane", 217)
      //_ <- c4("Barritteri", height=543, summitKM=36.6)
      //_ <- c4("Fuscaldo-BV.SP.30", height=156, summitKM=193.3)

      // Stage 7
      _ <- roadStage("Castrovillari", "Alberobello (Valle D'Itria)", 224)
      //_ <- c4("Bosco delle Pianelle", height=457, summitKM=154.1)

      // Stage 8
      _ <- roadStage("Molfetta", "Peschici", 189)
      //_ <- c2("Monte Sant'Angelo", height=747, summitKM=100.7)
      //_ <- c4("Coppa Santa Tecla", height=362, summitKM=143)

      // Stage 9
      _ <- roadStage("Montenero di Bisaccia", "Blockhaus", 149)
      //_ <- c1("Blockhaus", height=1665, summitKM=149)

      // Rest Day #2
      _ <- restDay()

      // Stage 10
      _ <- individualTimeTrial("Foligno", "Montefalco", 39.8)

      // Stage 11
      _ <- roadStage("Firenze (Ponte a Ema)", "Bagno di Romagna", 161)
      //_ <- c2("Passo della Consuma", height=1060, summitKM=31.8)
      //_ <- c3("Passo della Calla", height=1295, summitKM=64.2)
      //_ <- c3("Passo del Carnaio", height=770, summitKM=102.4)
      //_ <- c2("Monte Fumaiolo", height=1347, summitKM=135.8)

      // Stage 12
      _ <- roadStage("Forlì", "Reggio Emilia", 234)
      //_ <- c2("Colla di Casaglia", height=913, summitKM=62.9)
      //_ <- c3("Valico Appenninco", height=731, summitKM=110.4)

      // Stage 13
      _ <- roadStage("Reggio Emilia", "Tortona", 167)

      // Stage 14
      _ <- roadStage("Castellania", "Oropa (Biella)", 131)
      //_ <- c1("Oropa (Biella)", height=1142, summitKM=131)

      // Stage 15
      _ <- roadStage("Valdengo", "Bergamo", 199)
      //_ <- c2("Miragolo San Salvatore", height=931, summitKM=159.3)
      //_ <- c2("Selvino", height=948, summitKM=170.8)

      // Rest Day #3
      _ <- restDay()

      // Stage 16
      _ <- roadStage("Rovetta", "Bormio", 222)
      //_ <- c1("Passo del Mortirolo", height=1854, summitKM=84.5)
      //_ <- c1("Passo dello Stelvio", height=2758, summitKM=143.5)
      //_ <- c1("Umbrailpass Giogo di Santa Maria", height=2502, summitKM=202.5)

      // Stage 17
      _ <- roadStage("Tirano", "Canazei (Val di Fassa)", 219)
      //_ <- c2("Aprica", height=1173, summitKM=15.1)
      //_ <- c2("Passo del Tonale", height=1883, summitKM=60.2)
      //_ <- c3("Giovo", height=615, summitKM=137)

      // Stage 18
      _ <- roadStage("Moena (Val di Fassa)", "Ortisei/St. Ulrich (Val Gardena)", 137)
      //_ <- c1("Passo Portdoi", height=2293, summitKM=26)
      //_ <- c2("Passo Valparola", height=2200, summitKM=57.2)
      //_ <- c2("Passo Gardena", height=2121, summitKM=85.3)
      //_ <- c3("Passo di Pinei Panidersattel", height=1437, summitKM=108.8)
      //_ <- c1("Pontives", height=1103, summitKM=133)

      // Stage 19
      _ <- roadStage("San Candido/Innichen", "Piancavallo (Monte Jafferau)", 191)
      //_ <- c3("P.S.O M. Croce Comelico", height=1636, summitKM=13.9)
      //_ <- c2("Sella Chianzutan", height=955, summitKM=104.7)
      //_ <- c1("Piancavallo", height=1290, summitKM=191)

      // Stage 20
      _ <- roadStage("Pordenone", "Asiago", 190)
      //_ <- c4("Muro di Ca'Del Poggio", height=242, summitKM=37.3)
      //_ <- c4("Monte Grappa", height=1620, summitKM=127.7)
      //_ <- c1("Foza", height=1086, summitKM=175.2)

      // Stage 21
      _ <- individualTimeTrial("Monza", "Milano", 29.3)
    } yield()

    val result = composition.exec(StageRaceState(TourOfItaly, LocalDate.of(2018,5,5), 1, Seq[Stage]()))
    StageRaceEdition(TourOfItaly, result.stages)
  }
}
