package parcoursdb

import java.time.LocalDateTime

object Giro2018 {

  def giro:StageRaceEdition = {

    implicit val country:Country = Italy

    // Stage 1 04-05-2018
    val stage1:IndividualTimeTrial = StageBuilder().withStart(Location("Jerusalem")(Israel)).withFinish(Location("Jerusalem")(Israel)).withLength(9.7).individualTimeTrial

    // Stage 2 05-05-2018
    val stage2Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Zikhrow Ya'Aqov").withHeight(162).withSummitKM(91).withCategory(C4).build()
    )

    val stage2:RoadStage = StageBuilder().
      withStart(Location("Haifa")(Israel)).
      withFinish(Location("Tel Aviv")(Israel)).
      withLength(167).
      withCols(stage2Cols).roadStage

    // Stage 3 06-05-2018
    val stage3Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Faran River").withHeight(322).withSummitKM(127.8).withCategory(C4).build()
    )

    val stage3:RoadStage = StageBuilder().
      withStart(Location( "Beersheba")(Israel)).
      withFinish(Location( "Eilat")(Israel)).
      withLength(229).
      withCols(stage3Cols).roadStage

    // Stage 4 08-05-2018
    val stage4Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Pietre Calde").withHeight(779).withSummitKM(86.4).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("Vizzini").withHeight(595).withSummitKM(154.5).withCategory(C4).build()
    )

    val stage4:RoadStage = StageBuilder().
      withStart(Location("Catania")).
      withFinish( Location("Caltagirone")).
      withLength(202).
      withCols(stage4Cols).roadStage

    // Stage 5 09-05-2018
    val stage5Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Santa Margherita di Belice").withHeight(430).withSummitKM(90.7).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("Partanna").withHeight(405).withSummitKM(111.8).withCategory(C4).build()
    )

    val stage5:RoadStage = StageBuilder().
      withStart(Location("Agrigento")).
      withFinish(Location("Santa Ninfa (Valle del Belice)")).
      withLength(153).
      withCols(stage5Cols).roadStage

    // Stage 6 10-05-2018
    val stage6Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Mount Etna").withHeight(1736).withSummitKM(190).withCategory(C1).build()
    )

    val stage6:RoadStage = StageBuilder().
      withStart(Location("Caltanissetta")).
      withFinish(Location("Mount Etna")).
      withLength(169).
      withCols(stage6Cols).roadStage

    // Stage 7 11-05-2018
    val stage7:RoadStage = StageBuilder().
      withStart(Location("Pizzo")).
      withFinish(Location("Praira a Mare")).
      withLength(159).roadStage

    // Stage 8 12-05-2018
    val stage8Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Montevergine Di Mercogliano").withHeight(1260).withSummitKM(209).withCategory(C2).build()
    )

    val stage8:RoadStage = StageBuilder().
      withStart(Location("Praira a Mare")).
      withFinish(Location("Montevergine Di Mercogliano")).
      withLength(209).
      withCols(stage8Cols).roadStage

    // Stage 9 13-05-2018
    val stage9Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Roccaraso").withHeight(1252).withSummitKM(108.1).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Calascio").withHeight(1190).withSummitKM(192.9).withCategory(C2).build()
    )

    val stage9:RoadStage = StageBuilder().
      withStart(Location("Pesco Sannita")).
      withFinish(Location("Gran Sasso d'Italia (Campo Imperatore)")).
      withLength(225).
      withCols(stage9Cols).roadStage

    // Stage 10 15-05-2018
    val stage10Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Forte Delia Creta").withHeight(1254).withSummitKM(21.8).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Bruzzolana").withHeight(523).withSummitKM(61.2).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Annifo").withHeight(895).withSummitKM(213.5).withCategory(C4).build()
    )

    val stage10:RoadStage = StageBuilder().
      withStart(Location("Penne")).
      withFinish(Location("Gualdo Tadino")).
      withLength(224).
      withCols(stage10Cols).roadStage

    // Stage 11 16-05-2018
    val stage11Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo Cornello").withHeight(814).withSummitKM(41.7).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Valico di Pietra Rossa").withHeight(674).withSummitKM(97.5).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Osimo").withHeight(265).withSummitKM(156).withCategory(C4).build()
    )

    val stage11:RoadStage = StageBuilder().
      withStart(Location("Assisi")).
      withFinish(Location("Osimo")).
      withLength(156).
      withCols(stage11Cols).roadStage

    // Stage 12 17-05-2018
    val stage12Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Tre Monti").withHeight(252).withSummitKM(206.6).withCategory(C4).build()
    )

    val stage12:RoadStage = StageBuilder().
      withStart(Location("Osimo")).
      withFinish(Location("Imola")).
      withLength(214).
      withCols(stage12Cols).roadStage

    // Stage 13 18-05-2018
    val stage13Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Montello").withHeight(242).withSummitKM(160.7).withCategory(C4).build()
    )

    val stage13:RoadStage = StageBuilder().
      withStart(Location("Ferrara")).
      withFinish(Location("Nervesa della Battaglia")).
      withLength(180).
      withCols(stage13Cols).roadStage

    // Stage 14 19-05-2018
    val stage14Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Monte di Ragogna").withHeight(494).withSummitKM(43.3).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Avaglio").withHeight(738).withSummitKM(106).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Passo Duron").withHeight(1609).withSummitKM(142.5).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Sella Valcalda Ravascletto").withHeight(958).withSummitKM(165.8).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Monte Zoncolan").withHeight(1730).withSummitKM(186).withCategory(C1).build()
    )

    val stage14:RoadStage = StageBuilder(). 
      withStart(Location("San Vito al Tagliamento")).
      withFinish(Location("Monte Zoncolan")).
      withLength(186).
      withCols(stage14Cols).roadStage

    // Stage 15 20-05-2018
    val stage15Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo della Mauria").withHeight(1301).withSummitKM(48.4).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Passo Tre Croci").withHeight(1805).withSummitKM(110.6).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo di Sant'Antonio").withHeight(1470).withSummitKM(146.9).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Costalissoio (Bosco dei Giavi)").withHeight(1300).withSummitKM(160.6).withCategory(C2).build()
    )

    val stage15:RoadStage = StageBuilder().
      withStart(Location("Tolmezzo")).
      withFinish(Location("Sappada")).
      withLength(176).
      withCols(stage15Cols).roadStage

    // Stage 16 22-05-2018
    val stage16:IndividualTimeTrial = StageBuilder().
      withStart(Location("Trento")).
      withFinish(Location("Rovereto")).
      withLength(34.2).individualTimeTrial

    // Stage 17 23-05-2018
    val stage17:RoadStage = StageBuilder().
      withStart(Location("Riva del Garda")).
      withFinish(Location("Iseo")).
      withLength(149.5).
      withCols(Set[Col](ColBuilder(TourOfItaly).withName("Lodrino").withHeight(736).withSummitKM(71.5).withCategory(C3).build())).
      roadStage

    // Stage 18 24-05-2018
    val stage18:RoadStage = StageBuilder().
      withStart(Location("Abbiategrasso")).
      withFinish(Location("Prato Nevoso")).
      withLength(196).
      withCols(Set[Col](ColBuilder(TourOfItaly).withName("Pratonevoso").withHeight(1607).withSummitKM(196).withCategory(C1).build())).
      roadStage

    // Stage 19 25-05-2018
    val stage19Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Colle del Lys").withHeight(1311).withSummitKM(48.9).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Colle delle Finestre").withHeight(2178).withSummitKM(110.7).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Sestriere").withHeight(2035).withSummitKM(138.4).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Bardonecchia").withHeight(1908).withSummitKM(184).withCategory(C1).build()
    )

    val stage19:RoadStage = StageBuilder().
      withStart(Location("Venaria Reale")).
      withFinish(Location("Bardonecchia (Monte Jafferau)")).
      withLength(18).
      withCols(stage19Cols).roadStage

    // Stage 20 26-05-2018
    val stage20Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Col Tsecore (Col du Mont-Tseuc)").withHeight(1623).withSummitKM(146.5).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Col de Saint-Pantaleon").withHeight(1664).withSummitKM(185.8).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Cervinia").withHeight(2001).withSummitKM(214).withCategory(C1).build()
   )

    val stage20:RoadStage = StageBuilder().
      withStart(Location("Susa")).
      withFinish(Location("Cervinia")).
      withLength(214).
      withCols(stage20Cols).roadStage

    // Stage 21 27-05-2018
    val stage21:RoadStage = StageBuilder().
      withStart(Location("Rome")).
      withFinish(Location("Rome")).
      withLength(115).roadStage

    StageRaceEditionBuilder(TourOfItaly,LocalDateTime.of(2018,5,4,0,0)).
      withIndividualTimeTrial(stage1).
      withRoadStage(stage2).
      withRoadStage(stage3).
      withRestDay().
      withRoadStage(stage4).
      withRoadStage(stage5).
      withRoadStage(stage6).
      withRoadStage(stage7).
      withRoadStage(stage8).
      withRoadStage(stage9).
      withRestDay().
      withRoadStage(stage10).
      withRoadStage(stage11).
      withRoadStage(stage12).
      withRoadStage(stage13).
      withRoadStage(stage14).
      withRoadStage(stage15).
      withRestDay().
      withIndividualTimeTrial(stage16).
      withRoadStage(stage17).
      withRoadStage(stage18).
      withRoadStage(stage19).
      withRoadStage(stage20).
      withRoadStage(stage21).build
  }
}
