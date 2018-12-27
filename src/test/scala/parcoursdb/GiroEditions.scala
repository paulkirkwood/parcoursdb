package parcoursdb
  
import java.time.LocalDate
import StageRaceState._
  
object GiroEditions {
  
  implicit val country:Country = Italy

  def giro1980:StageRaceEdition = {
    val composition = for {
      _ <- prologue("Genoa", 7)
      _ <- roadStage(start="Genoa", finish="Imperia", length=123)
      _ <- roadStage(start="Imperia", finish="Turin", length=179)
      _ <- roadStage(start="Turin", finish="Parma", length=243)
      _ <- roadStage(start="Parma", finish="Marina di Pisa", length=193)
      _ <- individualTimeTrial(start="Pontedera", finish="Pisa", length=36)
      _ <- restDay
      _ <- roadStage(start="Rio Marina", finish="Portoferraio", length=126)
      _ <- roadStage(start="Castiglione della Pescaia", finish="Orvieto", length=200)
      _ <- roadStage(start="Orvieto", finish="Fiuggi", length=216)
      _ <- roadStage(start="Fiuggi", finish="Sorrento", length=247)
      _ <- roadStage(start="Sorrento", finish="Palinuro", length=177)
      _ <- roadStage(start="Palinuro", finish="Campotenese", length=145)
      _ <- roadStage(start="Villapiana Lido", finish="Campi Salentina", length=203)
      _ <- roadStage(start="Campi Salentina", finish="Barletta", length=220)
      _ <- roadStage(start="Foggia", finish="Roccaraso", length=186)
      _ <- roadStage(start="Roccaraso", finish="Termamo", length=194)
      _ <- roadStage(start="Giulianova", finish="Gatteo a Mare", length=229)
      _ <- roadStage(start="Gatteo a Mare", finish="Sirmione", length=237)
      _ <- roadStage(start="Sirmione", finish="Zoldo Alto", length=239)
      _ <- roadStage(start="Longarone", finish="Cles", length=241)
      _ <- roadStage(start="Cles", finish="Sondrio", length=221)
      _ <- individualTimeTrial(start="Saronno", finish="Turbigo", length=50)
      _ <- criterium("Milan", length=114.0)
    } yield()
    val result = composition.exec(StageRaceState.init(TourOfItaly, LocalDate.of(1980,5,15)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1981:StageRaceEdition = {
    val composition = for {
      _ <- prologue("Trieste", 6.6)
      _ <- enableSplitStages
      _ <- roadStage("Trieste", "Bibione", 100)
      _ <- teamTimeTrial("Lignano Sabbiadoro", "Bibione", 15.0)
      _ <- disableSplitStages
      _ <- roadStage("Bibione", "Ferrara",211)
      _ <- roadStage("Bologna", "Recanati",255)
      _ <- restDay
      _ <- roadStage("Recanati", "Lanciano",214)
      _ <- roadStage("Marina di San Vito", "Rodi Garganico",180)
      _ <- roadStage("Rodi Garganico", "Bari",225)
      _ <- roadStage("Bari", "Potenza",143)
      _ <- roadStage("Sala Consilina", "Cosenza",202)
      _ <- roadStage("Cosenza", "Reggio Calabria",231)
      _ <- restDay
      _ <- roadStage("Rome", "Cascia",166)
      _ <- roadStage("Cascia", "Arezzo",199)
      _ <- roadStage("Arezzo", "Livorno",224)
      _ <- individualTimeTrial("Empoli", "Montecatini Terme",35)
      _ <- roadStage("Montecatini Terme", "Salsomaggiore Terme",224)
      _ <- roadStage("Salsomaggiore Terme", "Pavia",198)
      _ <- roadStage("Milan", "Mantua",178)
      _ <- roadStage("Mantua", "Borno",215)
      _ <- roadStage("Borno", "Dimaro",127)
      _ <- restDay
      _ <- roadStage("Dimaro", "San Vigillo di Marebbe",208)
      _ <- roadStage("San Vigillo di Marebbe", "Tre Cime di Lavaredo",100)
      _ <- roadStage("Auronzo di Cadore", "Arzignano",197)
      _ <- individualTimeTrial("Soave", "Verona",42)
    } yield()
    val result = composition.exec(StageRaceState.init(TourOfItaly, LocalDate.of(1981,5,13)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2018:StageRaceEdition = {
  
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

    val result = composition.exec(StageRaceState.init(TourOfItaly, LocalDate.of(2018,5,4)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2017:StageRaceEdition = {

    val composition = for {

      // Stage 1
      _ <- roadStage("Alghero", "Olbia", 206)
      _ <- c4("Multeddu", height=182, summitKM=68)
      _ <- c4("Trinità d’Agultu", height=362, summitKM=90.2)
      _ <- c4("San Pantaleo", summitKM=185.1, height=215)

      // Stage 2
      _ <- roadStage("Olbia", "Tortolì", 221)
      _ <- c2("Genina Silana", height=1002, summitKM=174.1)

      // Stage 3
      _ <- roadStage("Tortolì", "Cagliari", 148)
      _ <- c4("Capo Boi", height=126, summitKM=107)

      // Rest Day #1
      _ <- restDay()

      // Stage 4
      _ <- roadStage("Cefalu", "Etna", 181)
      _ <- c2("Portella Femmina Morta", height=1524, summitKM=90)
      _ <- c1("Etna (Rif. Sapienza)", height=1892, summitKM=181)

      // Stage 5
      _ <- roadStage("Pedara", "Messina", 159)
      _ <- c4("Andronico-Sant'Alfio", height=878, summitKM=38.4)

      // Stage 6
      _ <- roadStage("Reggio Calabria", "Terme Luigiane", 217)
      _ <- c4("Barritteri", height=543, summitKM=36.6)
      _ <- c4("Fuscaldo-BV.SP.30", height=156, summitKM=193.3)

      // Stage 7
      _ <- roadStage("Castrovillari", "Alberobello (Valle D'Itria)", 224)
      _ <- c4("Bosco delle Pianelle", height=457, summitKM=154.1)

      // Stage 8
      _ <- roadStage("Molfetta", "Peschici", 189)
      _ <- c2("Monte Sant'Angelo", height=747, summitKM=100.7)
      _ <- c4("Coppa Santa Tecla", height=362, summitKM=143)

      // Stage 9
      _ <- roadStage("Montenero di Bisaccia", "Blockhaus", 149)
      _ <- c1("Blockhaus", height=1665, summitKM=149)

      // Rest Day #2
      _ <- restDay()

      // Stage 10
      _ <- individualTimeTrial("Foligno", "Montefalco", 39.8)

      // Stage 11
      _ <- roadStage("Firenze (Ponte a Ema)", "Bagno di Romagna", 161)
      _ <- c2("Passo della Consuma", height=1060, summitKM=31.8)
      _ <- c3("Passo della Calla", height=1295, summitKM=64.2)
      _ <- c3("Passo del Carnaio", height=770, summitKM=102.4)
      _ <- c2("Monte Fumaiolo", height=1347, summitKM=135.8)

      // Stage 12
      _ <- roadStage("Forlì", "Reggio Emilia", 234)
      _ <- c2("Colla di Casaglia", height=913, summitKM=62.9)
      _ <- c3("Valico Appenninco", height=731, summitKM=110.4)

      // Stage 13
      _ <- roadStage("Reggio Emilia", "Tortona", 167)

      // Stage 14
      _ <- roadStage("Castellania", "Oropa (Biella)", 131)
      _ <- c1("Oropa (Biella)", height=1142, summitKM=131)

      // Stage 15
      _ <- roadStage("Valdengo", "Bergamo", 199)
      _ <- c2("Miragolo San Salvatore", height=931, summitKM=159.3)
      _ <- c2("Selvino", height=948, summitKM=170.8)

      // Rest Day #3
      _ <- restDay()

      // Stage 16
      _ <- roadStage("Rovetta", "Bormio", 222)
      _ <- c1("Passo del Mortirolo", height=1854, summitKM=84.5)
      _ <- c1("Passo dello Stelvio", height=2758, summitKM=143.5)
      _ <- c1("Umbrailpass Giogo di Santa Maria", height=2502, summitKM=202.5)

      // Stage 17
      _ <- roadStage("Tirano", "Canazei (Val di Fassa)", 219)
      _ <- c2("Aprica", height=1173, summitKM=15.1)
      _ <- c2("Passo del Tonale", height=1883, summitKM=60.2)
      _ <- c3("Giovo", height=615, summitKM=137)

      // Stage 18
      _ <- roadStage("Moena (Val di Fassa)", "Ortisei/St. Ulrich (Val Gardena)", 137)
      _ <- c1("Passo Portdoi", height=2293, summitKM=26)
      _ <- c2("Passo Valparola", height=2200, summitKM=57.2)
      _ <- c2("Passo Gardena", height=2121, summitKM=85.3)
      _ <- c3("Passo di Pinei Panidersattel", height=1437, summitKM=108.8)
      _ <- c1("Pontives", height=1103, summitKM=133)

      // Stage 19
      _ <- roadStage("San Candido/Innichen", "Piancavallo (Monte Jafferau)", 191)
      _ <- c3("P.S.O M. Croce Comelico", height=1636, summitKM=13.9)
      _ <- c2("Sella Chianzutan", height=955, summitKM=104.7)
      _ <- c1("Piancavallo", height=1290, summitKM=191)

      // Stage 20
      _ <- roadStage("Pordenone", "Asiago", 190)
      _ <- c4("Muro di Ca'Del Poggio", height=242, summitKM=37.3)
      _ <- c4("Monte Grappa", height=1620, summitKM=127.7)
      _ <- c1("Foza", height=1086, summitKM=175.2)

      // Stage 21
      _ <- individualTimeTrial("Monza", "Milano", 29.3)
    } yield()

    val result = composition.exec(StageRaceState.init(TourOfItaly, LocalDate.of(2017,5,5)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2016:StageRaceEdition = {

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

    val result = composition.exec(StageRaceState.init(TourOfItaly,LocalDate.of(2016,5,6)))
    StageRaceEdition(TourOfItaly, result.stages)
  }
}
