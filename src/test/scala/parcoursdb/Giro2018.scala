package parcoursdb
  
import java.time.LocalDate
import StageRaceState._
  
object Giro2018 {
  
  def giro:StageRaceEdition = {
  
    implicit val country:Country = Italy
  
    val composition = for {
  
      // Stage 1 04-05-2018
      _ <- individualTimeTrial(Location("Jerusalem")(Israel), 9.7)
  
      // Stage 2 05-05-2018
      _ <- roadStage(Location("Haifa")(Israel), Location("Tel Aviv")(Israel), 167)
      _ <- c4("Zikhrow Ya'Aqov", height=162, summitKM=91)
  
      // Stage 3 06-05-2018
      _ <- roadStage(Location( "Beersheba")(Israel), Location( "Eilat")(Israel), 229)
      _ <- c4("Faran River", height=322, summitKM=127.8)
  
      // Rest Day #1
      _ <- restDay()
  
      // Stage 4 08-05-2018
      _ <- roadStage("Catania", "Caltagirone", 202)
      _ <- c4("Pietre Calde", height=779, summitKM=86.4)
      _ <- c4("Vizzini", height=595, summitKM=154.5)
  
      // Stage 5 09-05-2018
      _ <- roadStage("Agrigento", "Santa Ninfa (Valle del Belice)", 153)
      _ <- c4("Santa Margherita di Belice", height=430, summitKM=90.7)
      _ <- c4("Partanna", height=405, summitKM=111.8)
  
      // Stage 6 10-05-2018
      _ <- roadStage("Caltanissetta", "Mount Etna", 169)
      _ <- c1("Mount Etna", height=1736, summitKM=190)
  
      // Stage 7 11-05-2018
      _ <- roadStage("Pizzo", "Praira a Mare", 159)
  
      // Stage 8 12-05-2018
      _ <- roadStage("Praira a Mare", "Montevergine Di Mercogliano", 209)
      _ <- c2("Montevergine Di Mercogliano", height=1260, summitKM=209)
  
      // Stage 9 13-05-2018
      _ <- roadStage("Pesco Sannita", "Gran Sasso d'Italia (Campo Imperatore)", 225)
      _ <- c2("Roccaraso", height=1252, summitKM=108.1)
      _ <- c2("Calascio", height=1190, summitKM=192.9)
  
      // Rest Day #2
      _ <- restDay()

      // Stage 10 15-05-2018
      _ <- roadStage("Penne", "Gualdo Tadino", 244)
      _ <- c2("Forte Delia Creta", height=1254, summitKM=21.8)
      _ <- c3("Bruzzolana", height=523, summitKM=61.2)
      _ <- c4("Annifo", height=895, summitKM=213.5)
  
      // Stage 11 16-05-2018
      _ <- roadStage("Assisi", "Osimo", 156)
      _ <- c3("Passo Cornello", height=814, summitKM=41.7)
      _ <- c3("Valico di Pietra Rossa", height=674, summitKM=97.5)
      _ <- c4("Osimo", height=265, summitKM=156)
  
      // Stage 12 17-05-2018
      _ <- roadStage("Osimo", "Imola", 214)
      _ <- c4("Tre Monti", height=252, summitKM=206.6)
  
      // Stage 13 18-05-2018
      _ <- roadStage("Ferrara", "Nervesa della Battaglia", 180)
      _ <- c4("Montello", height=242, summitKM=160.7)
  
      // Stage 14 19-05-2018
      _ <- roadStage("San Vito al Tagliamento", "Monte Zoncolan", 186)
      _ <- c3("Monte di Ragogna", height=494, summitKM=43.3)
      _ <- c3("Avaglio", height=738, summitKM=106)
      _ <- c2("Passo Duron", height=1609, summitKM=142.5)
      _ <- c3("Sella Valcalda Ravascletto", height=958, summitKM=165.8)
      _ <- c1("Monte Zoncolan", height=1730, summitKM=186)
  
      // Stage 15 20-05-2018
      _ <- roadStage("Tolmezzo", "Sappada", 176)
      _ <- c3("Passo della Mauria", height=1301, summitKM=48.4)
      _ <- c2("Passo Tre Croci", height=1805, summitKM=110.6)
      _ <- c2("Passo di Sant'Antonio", height=1470, summitKM=146.9)
      _ <- c2("Costalissoio (Bosco dei Giavi)", height=1300, summitKM=160.6)
  
      // Rest Day #3
      _ <- restDay()

      // Stage 16 22-05-2018
      _ <- individualTimeTrial("Trento", "Rovereto", 34.2)
  
      // Stage 17 23-05-2018
      _ <- roadStage("Riva del Garda", "Iseo", 149.5)
      _ <- c3("Lodrino", height=736, summitKM=71.5)
  
      // Stage 18 24-05-2018
      _ <- roadStage("Abbiategrasso", "Prato Nevoso", 196)
      _ <- c1("Pratonevoso", height=1607, summitKM=196)
  
      // Stage 19 25-05-2018
      _ <- roadStage("Venaria Reale", "Bardonecchia (Monte Jafferau)", 185)
      _ <- c2("Colle del Lys", height=1311, summitKM=48.9)
      _ <- c1("Colle delle Finestre", height=2178, summitKM=110.7)
      _ <- c3("Sestriere", height=2035, summitKM=138.4)
      _ <- c1("Bardonecchia", height=1908, summitKM=184)
  
      // Stage 20 26-05-2018
      _ <- roadStage("Susa", "Cervinia", 214)
      _ <- c1("Col Tsecore (Col du Mont-Tseuc)", height=1623, summitKM=146.5)
      _ <- c1("Col de Saint-Pantaleon", height=1664, summitKM=185.8)
      _ <- c1("Cervinia", height=2001, summitKM=214)
  
      // Stage 21 27-05-2018
      _ <- criterium("Rome", 115)
    } yield()

    val result = composition.exec(StageRaceState(TourOfItaly, LocalDate.of(2018,5,4), 1, Seq[Stage]()))
    StageRaceEdition(TourOfItaly, result.stages)
  }
}
