package parcoursdb
  
import FrenchLocations.{briancon,lesDeuxAlpes};
import ItalianLocations._  
import java.time.LocalDate
import GiroState._
import SwissLocations.{lugano,mendrisio,monteGeneroso};

object GiroEditions {
  
  implicit val country:Country = Italy
  val sanMarino = Location("San Marino")(SanMarino)

  def giro1980:StageRaceEdition = {
    val composition = for {
      _ <- prologue(genoa, 7)
      _ <- roadStage(genoa, imperia, 123)
      _ <- roadStage(imperia, turin, 179)
      _ <- roadStage(turin, parma, 243)
      _ <- roadStage(parma, marinaDiPisa, 193)
      _ <- individualTimeTrial(pontedera, pisa, 36)
      _ <- transferDay
      _ <- roadStage(rioMarina, portoferraio, 126)
      _ <- roadStage(castiglioneDellaPescaia, orvieto, 200)
      _ <- roadStage(orvieto, fiuggi, 216)
      _ <- roadStage(fiuggi, sorrento, 247)
      _ <- roadStage(sorrento, palinuro, 177)
      _ <- roadStage(palinuro, campotenese, 145)
      _ <- roadStage(villapianaLido, campiSalentina, 203)
      _ <- roadStage(campiSalentina, barletta, 220)
      _ <- roadStage(foggia, roccaraso, 186)
      _ <- roadStage(roccaraso, termamo, 194)
      _ <- roadStage(giulianova, gatteoAMare, 229)
      _ <- roadStage(gatteoAMare, sirmione, 237)
      _ <- roadStage(sirmione, zoldoAlto, 239)
      _ <- roadStage(longarone, cles, 241)
      _ <- roadStage(cles, sondrio, 221)
      _ <- individualTimeTrial(saronno, turbigo, 50)
      _ <- criterium(milano, 114.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1980,5,15)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1981:StageRaceEdition = {
    val composition = for {
      _ <- prologue(trieste, 6.6)
      _ <- enableSplitStages
      _ <- roadStage(trieste, bibione, 100)
      _ <- teamTimeTrial(lignanoSabbiadoro, bibione, 15.0)
      _ <- disableSplitStages
      _ <- roadStage(bibione, ferrara, 211)
      _ <- roadStage(bologna, recanati, 255)
      _ <- transferDay
      _ <- roadStage(recanati, lanciano, 214)
      _ <- roadStage(marinaDiSanVito, rodiGarganico, 180)
      _ <- roadStage(rodiGarganico, bari, 225)
      _ <- roadStage(bari, potenza,143)
      _ <- roadStage(salaConsilina, cosenza, 202)
      _ <- roadStage(cosenza, reggioCalabria, 231)
      _ <- transferDay
      _ <- roadStage(rome, cascia, 166)
      _ <- roadStage(cascia, arezzo, 199)
      _ <- roadStage(arezzo, livorno, 224)
      _ <- individualTimeTrial(empoli, montecatiniTerme, 35)
      _ <- roadStage(montecatiniTerme, salsomaggioreTerme,224)
      _ <- roadStage(salsomaggioreTerme, pavia,198)
      _ <- roadStage(milano, mantua,178)
      _ <- roadStage(mantua, borno,215)
      _ <- roadStage(borno, dimaro,127)
      _ <- transferDay
      _ <- roadStage(dimaro, sanVigilloDiMarebbe,208)
      _ <- roadStage(sanVigilloDiMarebbe, treCimeDiLavaredo,100)
      _ <- roadStage(auronzoDiCadore, arzignano,197)
      _ <- individualTimeTrial(soave, verona,42)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1981,5,13)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1982:StageRaceEdition = {
    val composition = for {
      _ <- prologue(milano, 16.0)
      _ <- roadStage(parma, viareggio, 174.0)
      _ <- roadStage(viareggio, cortona, 233.0)
      _ <- individualTimeTrial(perugia, assisi, 37.0)
      _ <- roadStage(assisi, rome, 169.0)
      _ <- roadStage(rome, caserta, 213.0)
      _ <- roadStage(caserta, castellammareDiStabia, 130.0)
      _ <- roadStage(castellammareDiStabia, diamante, 226.0)
      _ <- transferDay
      _ <- roadStage(taormina, agrigento, 248.0)
      _ <- roadStage(agrigento, palermo, 151.0)
      _ <- roadStage(cefalu, messina, 197.0)
      _ <- roadStage(palmi, camigliatelloSilano, 229.0)
      _ <- transferDay
      _ <- roadStage(cavaDeTirreni, campitelloMatese, 171.0)
      _ <- roadStage(campitelloMatese, pescara, 164.0)
      _ <- roadStage(pescara, urbino, 248.0)
      _ <- roadStage(urbino, comacchio, 190.0)
      _ <- roadStage(comacchio, sanMartinoDiCastrozza, 243.0)
      _ <- roadStage(fieraDiPrimiero, boarioTerme, 235.0)
      _ <- roadStage(piancogno, montecampione, 85.0)
      _ <- roadStage(boarioTerme, vigevano, 162.0)
      _ <- roadStage(vigevano, cuneo, 177.0)
      _ <- roadStage(cuneo, pinerolo, 254.0)
      _ <- individualTimeTrial(pinerolo, turin, 42.5)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1982,5,13)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1983:StageRaceEdition = {
    val composition = for {
      _ <- prologue(brescia, 8.0)
      _ <- teamTimeTrial(brescia, mantua, 70.0)
      _ <- roadStage(start="Mantua", finish="Comacchio", length=192.0)
      _ <- roadStage(start="Comacchio", finish="Fano", length=148.0)
      _ <- roadStage(start="Pesaro", finish="Todi", length=187.0)
      _ <- roadStage(start="Terni", finish="Vasto", length=269.0)
      _ <- roadStage(start="Vasto", finish="Campitello Matese", length=145.0)
      _ <- roadStage(start="Campitello Matese", finish="Salerno", length=216.0)
      _ <- roadStage(start="Salerno", finish="Terracina", length=212.0)
      _ <- roadStage(start="Terracina", finish="Montefiascone", length=225.0)
      _ <- roadStage(start="Montefiascone", finish="Bibbiena", length=232.0)
      _ <- roadStage(start="Bibbiena", finish="Pietrasanta", length=202.0)
      _ <- transferDay
      _ <- roadStage(start="Pietrasanta", finish="Reggio Emilia", length=180.0)
      _ <- individualTimeTrial(reggioEmilia, parma, 38.0)
      _ <- roadStage(start="Parma", finish="Savona", length=243.0)
      _ <- roadStage(start="Savona", finish="Orta San Giulio", length=219.0)
      _ <- enableSplitStages
      _ <- roadStage(ortaSanGiulio, milano, 110.0)
      _ <- roadStage(milano, bergamo, 100.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Bergamo", finish="Colli di San Fermo", length=91.0)
      _ <- roadStage(start="Sarnico", finish="Vicenza", length=178.0)
      _ <- transferDay
      _ <- roadStage(start="Vicenza", finish="Selva di Val Gardena", length=224.0)
      _ <- roadStage(start="Selva di Val Gardena", finish="Arabba", length=169.0)
      _ <- roadStage(start="Arabba", finish="Gorizia", length=232.0)
      _ <- individualTimeTrial(gorizia, udine, 40.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1983,5,12)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1984:StageRaceEdition = {
    val composition = for {
      _ <- prologue(lucca, 5.0)
      _ <- teamTimeTrial(lucca, marinaDiPietrasanta, 55.0)
      _ <- roadStage(start="Marina di Pietrasanta", finish="Firenze", length=127.0)
      _ <- roadStage(start="Bologna", finish="Madonna di San Luca", length=110.0)
      _ <- roadStage(start="Bologna", finish="Numana", length=238.0)
      _ <- roadStage(start="Numana", finish="Blockhaus", length=194.0)
      _ <- roadStage(start="Chieti", finish="Foggia", length=193.0)
      _ <- roadStage(start="Foggia", finish="Marconia di Pisticci", length=226.0)
      _ <- roadStage(start="Policoro", finish="Agropoli", length=228.0)
      _ <- roadStage(start="Agropoli", finish="Cava de'Tirreni", length=104.0)
      _ <- transferDay
      _ <- roadStage(start="Cava de'Tirreni", finish="Isernia", length=209.0)
      _ <- roadStage(start="Isernia", finish="Rieti", length=243.0)
      _ <- roadStage(start="Rieti", finish="Citta di Castello", length=175.0)
      _ <- roadStage(start="Citta di Castello", finish="Lerici", length=269.0)
      _ <- roadStage(start="Lerici", finish="Alessandria", length=204.0)
      _ <- individualTimeTrial(certosaDiPavia, milano, 38.0)
      _ <- transferDay
      _ <- roadStage(start="Alessandria", finish="Bardonecchia", length=198.0)
      _ <- roadStage(start="Bardonecchia", finish="Lecco", length=249.0)
      _ <- roadStage(start="Lecco", finish="Merano", length=252.0)
      _ <- roadStage(start="Merano", finish="Selva di Val Gardena", length=74.0)
      _ <- roadStage(start="Selva di Val Gardena", finish="Arabba", length=169.0)
      _ <- roadStage(start="Arabba", finish="Treviso", length=208.0)
      _ <- individualTimeTrial(soave, verona, 42.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1984,5,17)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1985:StageRaceEdition = {
    val composition = for {
      _ <- prologue(verona, 6.6)
      _ <- roadStage(start="Verona", finish="Busto Arsizio", length=218.0)
      _ <- teamTimeTrial(bustoArsizio, milano, 38.0)
      _ <- roadStage(milano, finish="Pinzolo", length=190.0)
      _ <- roadStage(start="Pinzolo", finish="Selva di Val Gardena", length=237.0)
      _ <- roadStage(start="Selva di Val Gardena", finish="Vittorio Veneto", length=225.0)
      _ <- roadStage(start="Vittorio Veneto", finish="Cervia", length=237.0)
      _ <- roadStage(start="Cervia", finish="Jesi", length=185.0)
      _ <- transferDay
      _ <- enableSplitStages
      _ <- roadStage(start="Foggia", finish="Foggia", length=45.0)
      _ <- roadStage(start="Foggia", finish="Matera", length=167.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Matera", finish="Crotone", length=237.0)
      _ <- roadStage(start="Crotone", finish="Paola", length=203.0)
      _ <- roadStage(start="Paola", finish="Salerno", length=240.0)
      _ <- individualTimeTrial(capua, maddaloni, 38.0)
      _ <- roadStage(start="Maddaloni", finish="Frosinone", length=154.0)
      _ <- roadStage(start="Frosinone", finish="Gran Sasso d'Italia", length=195.0)
      _ <- roadStage(start="L'Aquila", perugia, length=208.0)
      _ <- roadStage(perugia, finish="Cecina", length=217.0)
      _ <- roadStage(start="Cecina", finish="Modena", length=248.0)
      _ <- transferDay
      _ <- roadStage(start="Monza", finish="Domodossola", length=128.0)
      _ <- roadStage(start="Domodossola", finish="Saint-Vincent", length=247.0)
      _ <- roadStage(start="Saint-Vincent", finish="Valnontey di Cogne", length=58.0)
      _ <- roadStage(start="Saint-Vincent", finish=genoa, length=229.0)
      _ <- individualTimeTrial(lidoDiCamaiore, lucca, 48.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1985,5,16)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1986:StageRaceEdition = {
    val composition = for {
      - <- morningStage
      _ <- prologue(palermo, 1.0)
      - <- afternoonStage
      _ <-roadStage(start="Palermo", finish="Sciacca",length=140.0)
      _ <- roadStage(start="Sciacca", finish="Catania", length=259.0)
      _ <- teamTimeTrial(catania, taormina, 50.0)
      _ <- roadStage(start="Villa San Giovanni", finish="Nicotera", length=115.0)
      _ <- roadStage(start="Nicotera", finish="Cosenza", length=194.0)
      _ <- roadStage(start="Cosenza", finish="Potenza", length=251.0)
      _ <- roadStage(start="Potenza", finish="Baia Domizia", length=257.0)
      _ <- roadStage(start="Cellole", finish="Avezzano", length=160.0)
      _ <- roadStage(start="Avezzano", finish="Rieti", length=172.0)
      _ <- roadStage(start="Rieti", finish="Pesaro", length=238.0)
      _ <- roadStage(start="Pesaro", finish="Castiglione del Lago", length=207.0)
      _ <- individualTimeTrial(sinalunga, siena, 46.0)
      _ <- roadStage(start="Siena", finish="Sarzana", length=175.0)
      _ <- roadStage(savona, finish="Sauze d'Oulx", length=236.0)
      _ <- roadStage(start="Sauze d'Oulx", finish="Erba", length=260.0)
      _ <- roadStage(start="Erba", finish="Foppolo", length=143.0)
      _ <- roadStage(start="Foppolo", finish="Piacenza", length=186.0)
      _ <- individualTimeTrial(piacenza, cremona, 36.0)
      _ <- roadStage(start="Cremona", finish="Peio", length=211.0)
      _ <- roadStage(start="Peio", finish="Bassano del Grappa", length=179.0)
      _ <- roadStage(start="Bassano del Grappa", finish="Bolzano", length=234.0)
      _ <- criterium(merano, 108.6)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1986,5,12)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1987:StageRaceEdition = {
    val composition = for {
      _ <- prologue(sanRemo, 4.0)
      _ <- enableSplitStages
      _ <- roadStage(start="San Remo", finish="San Romolo", length=31.0)
      _ <- individualTimeTrial(poggioDiSanRemo, sanRemo, 8.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Imperia", finish="Borgo Val di Taro", length=242.0)
      _ <- teamTimeTrial(lerici, camaiore, 43.0)
      _ <- roadStage(start="Camaiore", finish="Montalcino", length=203.0)
      _ <- roadStage(start="Montalcino", finish="Terni", length=208.0)
      _ <- roadStage(start="Terni", finish="Monte Terminillo", length=134.0)
      _ <- roadStage(start="Rieti", finish="Roccaraso", length=205.0)
      _ <- roadStage(start="Roccaraso", finish="San Giorgio del Sannio", length=168.0)
      _ <- roadStage(start="San Giorgio del Sannio", finish="Bari", length=257.0)
      _ <- roadStage(start="Bari", finish="Termoli", length=210.0)
      _ <- transferDay
      _ <- roadStage(guilianova, finish="Osimo", length=245.0)
      _ <- roadStage(start="Osimo", finish="Bellaria", length=197.0)
      _ <- individualTimeTrial(rimini, sanMarino, length=46.0)
      _ <- roadStage(start=sanMarino, finish="Lido di Jesolo", length=260.0)
      _ <- roadStage(start="Lido di Jesolo", finish="Sappada", length=224.0)
      _ <- roadStage(start="Sappada", finish="Canazei", length=211.0)
      _ <- roadStage(start="Canazei", finish="Riva del Garda", length=206.0)
      _ <- roadStage(start="Riva del Garda", finish="Trescore Balneario", length=213.0)
      _ <- roadStage(start="Trescore Balneario", finish="Madesimo", length=160.0)
      _ <- roadStage(start="Madesimo", finish="Como", length=156.0)
      _ <- roadStage(start="Como", finish="Pila", length=252.0)
      _ <- individualTimeTrial(aosta, saintVincent, 32.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1987,5,21)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1988:StageRaceEdition = {
    val innsbruck = Location("Innsbruck")(Austria)
    val composition = for {
      _ <- individualTimeTrial(urbino, 9)
      _ <- roadStage("Urbino", "Ascoli Piceno", 230)
      _ <- roadStage("Ascoli Piceno", "Vasto", 184)
      _ <- enableSplitStages
      _ <- roadStage("Vasto", "Rodi Garganico", 123)
      _ <- teamTimeTrial(rodiGarganico, vieste, 40)
      _ <- disableSplitStages
      _ <- roadStage("Vieste", "Santa Maria Capua Vetere", 260)
      _ <- roadStage("Santa Maria Capua Vetere", "Campitello Matese", 137)
      _ <- roadStage("Campitello Matese", "Avezzano", 178)
      _ <- roadStage("Avezzano", "Chianciano Terme", 251)
      _ <- roadStage("Pienza", "Marina di Massa", 235)
      _ <- roadStage("Carrara", "Salsomaggiore Terme", 190) // Cancelled
      _ <- roadStage("Parma", "Colle Don Bosco", 229)
      _ <- roadStage("Novara", "Selvino", 205)
      _ <- roadStage("Bergamo", "Chiesa in Valmalenco", 129)
      _ <- roadStage("Chiesa in Valmalenco", "Bormio", 120)
      _ <- roadStage("Spondigna", "Merano 2000", 83)
      _ <- roadStage("Merano", innsbruck, 176)
      _ <- roadStage(innsbruck, "Borgo Valsugana", 221)
      _ <- individualTimeTrial(levicoTerme, valicoDelVetriolo, 18)
      _ <- roadStage("Borgo Valsugana", "Arta Terme", 223)
      _ <- roadStage("Arta Terme", "Lido di Jesolo", 212)
      _ <- enableSplitStages
      _ <- roadStage("Lido di Jesolo", "Vittorio Veneto", 73)
      _ <- individualTimeTrial(vittorioVeneto, 43)
      _ <- disableSplitStages
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1988,5,23)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1989:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Taormina", finish="Catania", length=123.0)
      _ <- roadStage(start="Catania", finish="Mount Etna", length=132.0)
      _ <- teamTimeTrial(villafranca, messina, 32.5)
      _ <- roadStage(start="Scilla", finish="Cosenza", length=204.0)
      _ <- roadStage(start="Cosenza", finish="Potenza", length=275.0)
      _ <- roadStage(start="Potenza", finish="Campobasso", length=223.0)
      _ <- roadStage(start="Isernia", finish="Rome", length=208.0)
      _ <- roadStage(start="Rome", finish="Gran Sasso d'Italia", length=179.0)
      _ <- roadStage(start="L'Aquila", finish="Gubbio", length=221.0)
      _ <- individualTimeTrial(pesaro, riccione, 36.8)
      _ <- roadStage(start="Riccione", finish="Mantua", length=148.0)
      _ <- roadStage(start="Mantua", finish="Mira", length=148.0)
      _ <- roadStage(start="Padua", finish="Auronzo di Cadore", length=207.0)
      _ <- roadStage(start="Auronzo di Cadore", finish="Corvara", length=131.0)
      _ <- enableSplitStages
      _ <- roadStage(start="Corvara", finish="Trento", length=131.0)
      _ <- roadStage(start="Trento", finish="Trento", length=83.2)
      _ <- disableSplitStages
      _ <- roadStage(start="Trento", finish="Santa Caterina di Valfurva", length=208.0)
      _ <- roadStage(start="Sondrio", finish="Meda", length=137.0)
      _ <- individualTimeTrial(mendrisio, monteGeneroso, 10.7)
      _ <- roadStage(start="Meda", finish="Tortona", length=198.0)
      _ <- roadStage(start="Voghera", finish="La Spezia", length=220.0)
      _ <- roadStage(start="La Spezia", finish="Prato", length=216.0)
      _ <- individualTimeTrial(prato, florence, 53.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1989,5,21)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1990:StageRaceEdition = {
    val composition = for {
      _ <- prologue(bari, 13.0)
      _ <- roadStage(start="Bari", finish="Sala Consilina", length=239.0)
      _ <- roadStage(start="Sala Consilina", finish="Mount Vesuvius", length=190.0)
      _ <- enableSplitStages
      _ <- roadStage(start="Ercolano", finish="Nola", length=31.0)
      _ <- roadStage(start="Nola", finish="Sora", length=164.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Sora", finish="Teramo", length=233.0)
      _ <- roadStage(start="Teramo", finish="Fabriano", length=200.0)
      _ <- roadStage(start="Fabriano", finish="Vallombrosa", length=197.0)
      _ <- roadStage(start="Reggello", finish="Marina di Pietrasanta", length=188.0)
      _ <- roadStage(start="La Spezia", finish="Langhirano", length=176.0)
      _ <- individualTimeTrial(grinzaneCavour, cuneo, 68.0)
      _ <- roadStage(start="Cuneo", finish="Lodi", length=241.0)
      _ <- roadStage(start="Brescia", finish="Baselga di Pine", length=241.0)
      _ <- roadStage(start="Baselga di Pine", finish="Udine", length=224.0)
      _ <- criterium(Location("Klagenfurt")(Austria), length=164.0)
      _ <- roadStage(start=Location("Velden am Worther")(Austria), finish="Dobbiaco", length=226.0)
      _ <- roadStage(start="Dobbiaco", finish="Passo Pordoi", length=171.0)
      _ <- roadStage(start="Moena", finish="Aprica", length=223.0)
      _ <- roadStage(start="Aprica", finish="Gallarate", length=180.0)
      _ <- individualTimeTrial(gallarate, sacroMonteDiVarese, 39.0)
      _ <- criterium(milano, 90.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1990,5,18)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1991:StageRaceEdition = {
    val composition = for {
      _ <- criterium(olbia, 193.0)
      _ <- enableSplitStages
      _ <- roadStage(start="Olbia", finish="Sassari", length=127.0)
      _ <- individualTimeTrial(sassari, 7.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Sassari", finish="Cagliari", length=231.0)
      _ <- transferDay
      _ <- criterium(sorrento, 170.0)
      _ <- roadStage(start="Sorrento", finish="Scanno", length=246.0)
      _ <- roadStage(start="Scanno", finish="Rieti", length=205.0)
      _ <- roadStage(start="Rieti", finish="Citta di Castello", length=174.0)
      _ <- roadStage(start="Citta di Castello", finish="Prato", length=169.0)
      _ <- roadStage(start="Prato", finish="Felino", length=229.0)
      _ <- individualTimeTrial(collecchio, langhirano, 43.0)
      _ <- roadStage(start="Sala Baganza", finish="Savonna", length=223.0)
      _ <- roadStage(start="Savonna", finish="Pian del Re", length=182.0)
      _ <- roadStage(start="Savigliano", finish="Sestriere", length=192.0)
      _ <- roadStage(start="Turin", finish="Morbegno", length=239.0)
      _ <- roadStage(start="Morbegno", finish="Aprica", length=132.0)
      _ <- roadStage(start="Tirano", finish="Selva di Val Gardena", length=220.0)
      _ <- roadStage(start="Selva di Val Gardena", finish="Passo Pordoi", length=169.0)
      _ <- roadStage(start="Pozza di Fassa", finish="Castelfranco Veneto", length=165.0)
      _ <- roadStage(start="Castelfranco Veneto", finish="Brescia", length=185.0)
      _ <- individualTimeTrial(brescia, casteggio, 66.0)
      _ <- roadStage(start="Pavia", milano, length=153.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1991,5,26)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1992:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial(genoa, 8.0)
      _ <- roadStage(start=genoa, finish="Uliveto Terme", length=194.0)
      _ <- roadStage(start="Uliveto Terme", finish="Arezzo", length=174.0)
      _ <- individualTimeTrial(arezzo, sansepolcro, 38.0)
      _ <- roadStage(start="Sansepolcro", finish="Porto Sant'Elpidio", length=198.0)
      _ <- roadStage(start="Porto Sant'Elpidio", finish="Sulmona", length=223.0)
      _ <- roadStage(start="Roccaraso", finish="Melfi", length=232.0)
      _ <- roadStage(start="Melfi", finish="Aversa", length=184.0)
      _ <- roadStage(start="Aversa", finish="Latina", length=165.0)
      _ <- roadStage(start="Latina", finish="Monte Terminillo", length=196.0)
      _ <- roadStage(start="Montepulciano", finish="Imola", length=233.0)
      _ <- roadStage(start="Imola", finish="Bassano del Grapa", length=233.0)
      _ <- roadStage(start="Bassano del Grapa", finish="Corvara", length=204.0)
      _ <- roadStage(start="Corvara", finish="Monte Bondone", length=205.0)
      _ <- roadStage(start="Riva del Garda", finish="Palazzolo sull'Oglio", length=171.0)
      _ <- roadStage(start="Palazzolo sull'Oglio", finish="Sondrio", length=166.0)
      _ <- roadStage(start="Sondrio", finish="Vercelli", length=203.0)
      _ <- roadStage(start="Vercelli", finish="Pian del Re", length=200.0)
      _ <- roadStage(start="Saluzzo", finish="Pila", length=260.0)
      _ <- roadStage(start="Saint Vincent", finish="Verbania", length=201.0)
      _ <- roadStage(start="Verbania", finish="Vigevano", length=95.0)
      _ <- individualTimeTrial(vigevano, milano, 66.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1992,5,24)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1993:StageRaceEdition = {
    val composition = for {
      _ <- enableSplitStages
      _ <- roadStage(start="Porto Azzurro", finish="Porteferraio", length=85.0)
      _ <- individualTimeTrial(porteferraio, 9.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Grosseto", finish="Rieti", length=224.0)
      _ <- roadStage(start="Rieti", finish="Scanno", length=153.0)
      _ <- roadStage(start="Lago di Scanno", finish="Marcianise", length=179.0)
      _ <- roadStage(start="Paestum", finish="Terme Luigiane", length=210.0)
      _ <- roadStage(start="Villafranca Tirrena", finish="Messina", length=130.0)
      _ <- roadStage(start="Capo d'Orlando", finish="Agrigento", length=240.0)
      _ <- roadStage(start="Agrigento", finish="Palermo", length=140.0)
      _ <- transferDay
      _ <- roadStage(start="Montelibretti", finish="Fabriano", length=216.0)
      _ <- individualTimeTrial(senigallia, 28.0)
      _ <- roadStage(start="Senigallia", finish="Dozza", length=184.0)
      _ <- roadStage(start="Dozza", finish="Asiago", length=239.0)
      _ <- roadStage(start="Asiago", finish="Corvara", length=220.0)
      _ <- criterium(corvara, 245.0)
      _ <- roadStage(start="Corvara", finish="Lumezzane", length=263.0)
      _ <- roadStage(start="Lumezzane", finish="Borgo Val di Taro", length=181.0)
      _ <- roadStage(start="Varazze", finish="Pontechianale", length=223.0)
      _ <- roadStage(start="Sampeyre", finish="Fossano", length=150.0)
      _ <- individualTimeTrial(pinerolo, sestriere, 55.0)
      _ <- roadStage(start="Turin", finish="Santuario di Oropa", length=162.0)
      _ <- roadStage(start="Biella", finish="Milan", length=166.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1993,5,23)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1994:StageRaceEdition = {
    val kranj = Location("Kranj")(Slovenia)
    val lienz = Location("Lienz")(Austria)
    val composition = for {
      _ <- enableSplitStages
      _ <- criterium(bologna, 86)
      _ <- individualTimeTrial(bologna, 7.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Bologna", finish="Osimo", length=232.0)
      _ <- roadStage(start="Osimo", finish="Loreto Aprutino", length=185.0)
      _ <- roadStage(start="Montesilvano", finish="Campitello Matese", length=204.0)
      _ <- roadStage(start="Campobasso", finish="Melfi", length=158.0)
      _ <- roadStage(start="Potenza", finish="Caserta", length=215.0)
      _ <- criterium(fiuggi, 119.0)
      _ <- individualTimeTrial(grosseto, follonica, 44.0)
      _ <- roadStage(start="Castigilone della Pescaia", finish="Pontedera", length=153.0)
      _ <- criterium(marostica, 115.0)
      _ <- roadStage(start="Marostica", finish="Bibione", length=165.0)
      _ <- roadStage(start="Bibione", finish=kranj, length=204.0)
      _ <- roadStage(start=kranj, finish=lienz, length=231.0)
      _ <- roadStage(start=lienz, finish="Merano", length=235.0)
      _ <- roadStage(start="Merano", finish="Aprica", length=195.0)
      _ <- roadStage(start="Sondrio", finish="Stradella", length=220.0)
      _ <- roadStage(start="Santa Maria della Versa", finish="Lavagna", length=190.0)
      _ <- individualTimeTrial(chiavari, passoDelBocco, 35.0)
      _ <- roadStage(start="Lavagna", finish="Bra", length=212.0)
      _ <- roadStage(start="Cuneo", finish=lesDeuxAlpes, length=206.0)
      _ <- roadStage(start=lesDeuxAlpes, finish="Sestriere", length=121.0)
      _ <- roadStage(start="Turin", finish="Milan", length=198.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1994,5,22)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1995:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Perugia", finish="Terni", length=205.0)
      _ <- individualTimeTrial(foligno, assisi, 19.0)
      _ <- roadStage(start="Spoleto", finish="Marotta", length=161.0)
      _ <- roadStage(start="Mondolfo", finish="Loreto", length=192.0)
      _ <- roadStage(start="Porto Recanati", finish="Tortoreto", length=182.0)
      _ <- roadStage(start="Trani", finish="Taranto", length=165.0)
      _ <- roadStage(start="Taranto", finish="Terme Luigiane", length=216.0)
      _ <- roadStage(start="Acquappesa", finish="Massiccio del Sirino", length=209.0)
      _ <- roadStage(start="Terme La Calda", finish="Salerno", length=165.0)
      _ <- individualTimeTrial(teleseTerme, maddaloni, 42.0)
      _ <- transferDay
      _ <- roadStage(start="Pietrasanta", finish="Il Ciocco", length=175.0)
      _ <- roadStage(start="Borgo a Mozzano", finish="Cento", length=195.0)
      _ <- roadStage(start="Pieve di Cento", finish="Rovereto", length=218.0)
      _ <- roadStage(start="Trento", finish="Schnals", length=240.0)
      _ <- roadStage(start="Schnals", finish=Location("Lenzerheide")(Switzerland), length=185.0)
      _ <- roadStage(start=Location("Lenzerheide")(Switzerland), finish="Treviglio", length=224.0)
      _ <- individualTimeTrial(cenateSotto, selvino, 43.0)
      _ <- roadStage(start="Stradella", finish="Sanctuary of Vicoforte", length=221.0)
      _ <- roadStage(start="Mondovi", finish="Pontechianale", length=130.0)
      _ <- roadStage(start=Location("Briancon")(France), finish="Gressoney-Saint-Jean", length=208.0)
      _ <- roadStage(start="Pont-Saint-Martin", finish="Luino", length=190.0)
      _ <- roadStage(start="Luino", finish="Milan", length=148.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1995,5,13)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1996:StageRaceEdition = {
    val composition = for {
      _ <- criterium(Location("Athens")(Greece), length=170.0)
      _ <- roadStage(start=Location("Eleusis")(Greece), finish=Location("Naupactus")(Greece), length=235.0)
      _ <- roadStage(start=Location("Missolonghi")(Greece), finish=Location("Ioannina")(Greece), length=199.0)
      _ <- transferDay
      _ <- criterium(ostuni, 147.0)
      _ <- roadStage(start="Metaponto", finish="Crotone", length=196.0)
      _ <- roadStage(start="Crotone", finish="Catanzaro", length=176.0)
      _ <- roadStage(start="Amantea", finish="Massiccio del Sirino", length=164.0)
      _ <- roadStage(start="Polla", finish="Naples", length=135.0)
      _ <- roadStage(start="Naples", finish="Fiuggi", length=184.0)
      _ <- roadStage(start="Arezzo", finish="Prato", length=164.0)
      _ <- roadStage(start="Prato", finish="Marino di Massa", length=130.0)
      _ <- roadStage(start="Aulla", finish="Loano", length=195.0)
      _ <- roadStage(start="Loano", finish="Prato Nevoso", length=115.0)
      _ <- roadStage(start="Sanctuary of Vicoforte", finish=Location("Briancon")(France), length=202.0)
      _ <- roadStage(start=Location("Briancon")(France), finish="Aosta", length=235.0)
      _ <- roadStage(start="Aosta", finish=Location("Lausanne")(Switzerland), length=180.0)
      _ <- roadStage(start=Location("Lausanne")(Switzerland), finish="Biella", length=236.0)
      _ <- roadStage(start="Meda", finish="Vicenza", length=216.0)
      _ <- individualTimeTrial(vicenza, marostica, 62.0)
      _ <- roadStage(start="Marostica", finish="Passo Pordoi", length=220.0)
      _ <- roadStage(start="Cavalese", finish="Aprica", length=250.0)
      _ <- roadStage(start="Sondrio", finish="Milan", length=176.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1996,5,18)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1997:StageRaceEdition = {
    val composition = for {
      _ <- criterium(venezia, 128.0)
      _ <- roadStage(start="Mestre", finish="Cervia", length=211.0)
      _ <- individualTimeTrial(santarcangeloDiRomagna, sanMarino, length=18.0)
      _ <- roadStage(start=Location("San Marino")(SanMarino), finish="Arezzo", length=156.0)
      _ <- roadStage(start="Arezzo", finish="Monte Terminillo", length=215.0)
      _ <- roadStage(start="Rieti", finish="Lanciano", length=210.0)
      _ <- roadStage(start="Lanciano", finish="Mondragone", length=210.0)
      _ <- roadStage(start="Mondragone", finish="Cava de'Tirreni", length=212.0)
      _ <- roadStage(start="Cava de'Tirreni", finish="Castrovillari", length=232.0)
      _ <- roadStage(start="Castrovillari", finish="Taranto", length=195.0)
      _ <- transferDay
      _ <- criterium(lidoDiCamaiore, 155.0)
      _ <- roadStage(start="La Spezia", finish="Varazze", length=214.0)
      _ <- roadStage(start="Varazze", finish="Cuneo", length=150.0)
      _ <- roadStage(start="Racconigi", finish="Breuil-Cervinia", length=240.0)
      _ <- roadStage(start="Verres", finish="Borgomanero", length=173.0)
      _ <- roadStage(start="Borgomanero", finish="Dalmine", length=158.0)
      _ <- roadStage(start="Dalmine", finish="Verona", length=200.0)
      _ <- individualTimeTrial(baselgaDiPine, cavalese, 40.0)
      _ <- roadStage(start="Predazzo", finish="Pfalzen", length=222.0)
      _ <- roadStage(start="Bruneck", finish="Passo del Tonale", length=176.0)
      _ <- roadStage(start="Male", finish="Edolo", length=238.0)
      _ <- roadStage(start="Boario Terme", finish="Milan", length=165.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1997,5,17)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1998:StageRaceEdition = {
    val nice:Location = Location("Nice")(France)
    val composition = for {
      _ <- prologue(nice, 8)
      _ <- roadStage(start=nice, finish="Cuneo", length=159.0)
      _ <- roadStage(start="Alba", finish="Imperia", length=160.0)
      _ <- roadStage(start="Rapallo", finish="Forte dei Marmi", length=196.0)
      _ <- roadStage(start="Viareggio", finish="Monte Argentario", length=239.0)
      _ <- roadStage(start="Orbetello", finish="Frascati", length=206.0)
      _ <- roadStage(start="Maddaloni", finish="Laga Laceno", length=158.0)
      _ <- roadStage(start="Montella", finish="Matera", length=238.0)
      _ <- roadStage(start="Matera", finish="Lecce", length=191.0)
      _ <- roadStage(start="Foggia", finish="Vasto", length=167.0)
      _ <- roadStage(start="Vasto", finish="Macerata", length=212.0)
      _ <- roadStage(start="Macerata", finish=Location("San Marino")(SanMarino), length=220.0)
      _ <- roadStage(start=Location("San Marino")(SanMarino), finish="Carpi", length=202.0)
      _ <- roadStage(start="Carpi", finish="Schio", length=166.0)
      _ <- roadStage(start="Schio", finish="Piancavallo", length=165.0)
      _ <- individualTimeTrial(trieste, 40.0)
      _ <- roadStage(start="Udine", finish="Asiago", length=227.0)
      _ <- roadStage(start="Asiago", finish="Selva", length=217.0)
      _ <- roadStage(start="Selva", finish="Passo di Pampeagno", length=115.0)
      _ <- roadStage(start="Cavalese", finish="Plan di Montecampione", length=239.0)
      _ <- roadStage(start="Darfo Boario Terme", finish=Location("Mendrisio")(Switzerland), length=137.0)
      _ <- individualTimeTrial(mendrisio, lugano, 34.0)
      _ <- roadStage(lugano, milano, 173.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1998,5,16)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro1999:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Agrigento", finish="Modica", length=175.0)
      _ <- roadStage(start="Noto", finish="Catania", length=133.0)
      _ <- roadStage(start="Catania", finish="Messina", length=176.0)
      _ <- roadStage(start="Vibo Valentia", finish="Terme Luigiane", length=186.0)
      _ <- roadStage(start="Terme Luigiane", finish="Massiccio del Sirino", length=144.0)
      _ <- roadStage(start="Lauria", finish="Foggia", length=257.0)
      _ <- roadStage(start="Foggia", finish="Lanciano", length=153.0)
      _ <- roadStage(start="Pescara", finish="Gran Sasso d'Italia", length=253.0)
      _ <- individualTimeTrial(ancona, 32.0)
      _ <- roadStage(start="Ancona", finish="Sansepolcro", length=189.0)
      _ <- roadStage(start="Sansepolcro", finish="Cesenatico", length=125.0)
      _ <- roadStage(start="Cesenatico", finish="Sassuolo", length=168.0)
      _ <- roadStage(start="Sassuolo", finish="Rapallo", length=243.0)
      _ <- transferDay
      _ <- roadStage(start="Bra", finish="Borgo San Dalmazzo", length=187.0)
      _ <- roadStage(start="Racconigi", finish="Sanctuario di Oropa", length=160.0)
      _ <- roadStage(start="Biella", finish="Lumezzane", length=232.0)
      _ <- roadStage(start="Lumezzane", finish="Castelfranco Veneto", length=215.0)
      _ <- individualTimeTrial(treviso, 45.0)
      _ <- roadStage(start="Castelfranco Veneto", finish="Alpe di Pampeago", length=166.0)
      _ <- roadStage(start="Predazzo", finish="Madonna di Campiglio", length=175.0)
      _ <- roadStage(start="Madonna di Campiglio", finish="Aprica", length=190.0)
      _ <- roadStage(start="Darfo Boario Terme", finish="Milan", length=170.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(1999,5,15)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2000:StageRaceEdition = {
    val composition = for {
      _ <- prologue(rome, 4.6)
      _ <- roadStage(start="Rome", finish="Terracina", length=125.0)
      _ <- roadStage(start="Terracina", finish="Maddaloni", length=225.0)
      _ <- roadStage(start="Paestum", finish="Scalea", length=177.0)
      _ <- roadStage(start="Scalea", finish="Matera", length=233.0)
      _ <- roadStage(start="Matera", finish="Peschici", length=232.0)
      _ <- roadStage(start="Peschici", finish="Vasto", length=160.0)
      _ <- roadStage(start="Vasto", finish="Teramo", length=182.0)
      _ <- roadStage(start="Corinaldo", finish="Prato", length=265.0)
      _ <- roadStage(start="Prato", finish="Abetone", length=138.0)
      _ <- roadStage(start="San Marcello Pistoiese", finish="Padua", length=253.0)
      _ <- individualTimeTrial(lignanoSabbiadoro, bibione, 45.0)
      _ <- transferDay
      _ <- roadStage(start="Bibione", finish="Feltre", length=184.0)
      _ <- roadStage(start="Feltre", finish="Selva", length=186.0)
      _ <- roadStage(start="Selva", finish="Bormio", length=203.0)
      _ <- roadStage(start="Bormio", finish="Brescia", length=180.0)
      _ <- roadStage(start="Brescia", finish="Meda", length=102.0)
      _ <- roadStage(start="Meda", finish=genoa, length=236.0)
      _ <- roadStage(start=genoa, finish="Prato Nevoso", length=173.0)
      _ <- roadStage(start="Saluzzo", finish=Location("Briancon")(France), length=176.0)
      _ <- individualTimeTrial(briancon, sestriere, 32.0)
      _ <- roadStage(start="Turin", finish="Milan", length=189.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(2000,5,13)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2001:StageRaceEdition = {
    val composition = for {
      _ <- prologue(montesilvano, pescara, 7.0)
      _ <- roadStage(start="Guilianova", finish="Francavilla al Mare", length=205.0)
      _ <- roadStage(start="Fossacesia", finish="Lucera", length=163.0)
      _ <- roadStage(start="Lucera", finish="Potenza", length=149.0)
      _ <- roadStage(start="Potenza", finish="Mercogliano", length=169.0)
      _ <- roadStage(start="Avellino", finish="Nettuno", length=229.0)
      _ <- roadStage(start="Nettuno", finish="Rieti", length=152.0)
      _ <- roadStage(start="Rieti", finish="Montevarchi", length=239.0)
      _ <- roadStage(start="Montecatini Terme", finish="Reggio Emilia", length=185.0)
      _ <- roadStage(start="Reggio Emilia", finish="Rovigo", length=140.0)
      _ <- roadStage(start="Lido di Jesolo", finish=Location("Ljubljana")(Slovenia), length=212.0)
      _ <- roadStage(start=Location("Bled")(Slovenia), finish="Gorizia", length=187.0)
      _ <- roadStage(start="Gradisca d'Isonzo", finish="Montebelluna", length=139.0)
      _ <- roadStage(start="Montebelluna", finish="Passo Pordoi", length=225.0)
      _ <- roadStage(start="Cavalese", finish="Arco", length=160.0)
      _ <- individualTimeTrial(sirmione, salo, 55.0)
      _ <- roadStage(start="Erbusco", finish="Parma", length=142.0)
      _ <- transferDay
      _ <- criterium(sanRemo, 123.0)
      _ <- roadStage(start="Imperia", finish="Sant'Anna di Vinadio", length=230.0)
      _ <- roadStage(start="Alba", finish="Busto Arsizio", length=163.0)
      _ <- roadStage(start="Busto Arsizio", finish="Arona", length=181.0)
      _ <- roadStage(start="Arona", finish="Milan", length=125.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(2001,5,19)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2002:StageRaceEdition = {
    val composition = for {
      _ <- prologue(Location("Groningen")(Netherlands), 6.5)
      _ <- roadStage(start=Location("Groningen")(Netherlands), finish=Location("Munster")(Germany), length=215.0)
      _ <- roadStage(start=Location("Cologne")(Germany), finish=Location("Ans")(Belgium), length=209.0)
      _ <- roadStage(start=Location("Verviers")(Belgium), finish=Location("Esch-sur-Alzette")(Luxembourg), length=206.0)
      _ <- roadStage(start=Location("Esch-sur-Alzette")(Luxembourg), finish=Location("Strasbourg")(France), length=232.0)
      _ <- transferDay
      _ <- roadStage(start="Fossano", finish="Limone Piemonte", length=150.0)
      _ <- roadStage(start="Cuneo", finish="Varazze", length=190.0)
      _ <- roadStage(start="Viareggio", finish="Lido di Camaiore", length=159.0)
      _ <- roadStage(start="Capannori", finish="Orvieto", length=237.0)
      _ <- roadStage(start="Tivoli", finish="Caserta", length=41.0)
      _ <- roadStage(start="Maddaloni", finish="Benevento", length=118.0)
      _ <- roadStage(start="Benevento", finish="Campitello Matese", length=140.0)
      _ <- roadStage(start="Campobasso", finish="Chieti", length=200.0)
      _ <- roadStage(start="Chieti", finish="San Giacomo di Valle Castellana", length=190.0)
      _ <- individualTimeTrial(numana, 30.0)
      _ <- transferDay
      _ <- roadStage(start="Terme Euganee", finish="Conegliano", length=156.0)
      _ <- roadStage(start="Conegliano", finish="Corvara", length=163.0)
      _ <- roadStage(start="Corvara", finish="Folgaria", length=222.0)
      _ <- roadStage(start="Rovereto", finish="Brescia", length=143.0)
      _ <- individualTimeTrial(cambiago, monticelloBrianza, 46.0)
      _ <- roadStage(start="Cantu", finish="Milan", length=141.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(2002,5,11)))
    StageRaceEdition(TourOfItaly, result.stages)
  }

  def giro2003:StageRaceEdition = {
    val composition = for {
      _ <- criterium(lecce, 201.0)
      _ <- roadStage(start="Copertino", finish="Matera", length=177.0)
      _ <- roadStage(start="Policoro", finish="Term Luigiane", length=145.0)
      _ <- roadStage(start="Term Luigiane", finish="Vibo Valentia", length=170.0)
      _ <- roadStage(start="Messina", finish="Catania", length=176.0)
      _ <- transferDay
      _ <- roadStage(start="Maddaloni", finish="Avezzano", length=222.0)
      _ <- roadStage(start="Avezzano", finish="Monte Terminillo", length=146.0)
      _ <- roadStage(start="Rieti", finish="Arezzo", length=214.0)
      _ <- roadStage(start="Arezzo", finish="Montecatini Terme", length=160.0)
      _ <- roadStage(start="Montecatini Terme", finish="Faenza", length=202.0)
      _ <- roadStage(start="Faenza", finish="San Dona di Piave", length=222.0)
      _ <- roadStage(start="San Dona di Piave", finish="Monte Zoncolan", length=185.0)
      _ <- roadStage(start="Pordenone", finish="Marostica", length=149.0)
      _ <- roadStage(start="Marostica", finish="Alpe di Pampeago", length=162.0)
      _ <- individualTimeTrial(merano, bolzano, 42.5)
      _ <- roadStage(start="Arco", finish="Pavia", length=207.0)
      _ <- transferDay
      _ <- roadStage(start="Salice Terme", finish="Asti", length=117.0)
      _ <- roadStage(start="Sanuario di Vicoforte", finish="Chianale", length=174.0)
      _ <- roadStage(start="Canelli", finish="Cascata del Toce", length=239.0)
      _ <- roadStage(start="Cannobio", finish="Cantu", length=133.0)
      _ <- individualTimeTrial(milano, 33.0)
    } yield()
    val result = composition.exec(GiroState.init(LocalDate.of(2003,5,10)))
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
      _ <- transferDay
  
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
      _ <- roadStage("Pizzo", "Praia a Mare", 159)
  
      // Stage 8 12-05-2018
      _ <- roadStage("Praia a Mare", "Montevergine Di Mercogliano", 209)
      _ <- c2("Montevergine Di Mercogliano", height=1260, summitKM=209)
  
      // Stage 9 13-05-2018
      _ <- roadStage("Pesco Sannita", "Gran Sasso d'Italia (Campo Imperatore)", 225)
      _ <- c2("Roccaraso", height=1252, summitKM=108.1)
      _ <- c2("Calascio", height=1190, summitKM=192.9)
  
      // Rest Day #2
      _ <- transferDay

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
      _ <- transferDay

      // Stage 16 22-05-2018
      _ <- individualTimeTrial(trento, rovereto, 34.2)
  
      // Stage 17 23-05-2018
      _ <- roadStage("Riva del Garda", "Iseo", 149.5)
      _ <- c3("Lodrino", height=736, summitKM=71.5)
  
      // Stage 18 24-05-2018
      _ <- roadStage("Abbiategrasso", "Prato Nevoso", 196)
      _ <- c1("Pratonevoso", height=1607, summitKM=196)
  
      // Stage 19 25-05-2018
      _ <- roadStage("Veneria Reale", "Bardonecchia (Monte Jafferau)", 185)
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
      _ <- criterium(rome, 115)
    } yield()

    val result = composition.exec(GiroState.init(LocalDate.of(2018,5,4)))
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
      _ <- transferDay

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
      _ <- transferDay

      // Stage 10
      _ <- individualTimeTrial(foligno, montefalco, 39.8)

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
      _ <- transferDay

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
      _ <- individualTimeTrial(monza, milano, 29.3)
    } yield()

    val result = composition.exec(GiroState.init(LocalDate.of(2017,5,5)))
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

      _ <- transferDay

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
      _ <- individualTimeTrial(chiantiClassicoStage, 40.5)

      _ <- transferDay

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
      val alpeDiSiusiCommune = Location.commune(alpeDiSiusi, "Seiseralm")
      _ <- individualTimeTrial(castelrotto, alpeDiSiusiCommune, 10.8)
      _ <- c1("Alpe di Siusi", height=1844, summitKM=10.8)

      _ <- transferDay

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

    val result = composition.exec(GiroState.init(LocalDate.of(2016,5,6)))
    StageRaceEdition(TourOfItaly, result.stages)
  }
}
