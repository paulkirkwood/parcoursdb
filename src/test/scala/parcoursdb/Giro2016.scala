package parcoursdb

import java.time.LocalDateTime

object Giro2016 {

  def giro:StageRaceEdition = {

    implicit val country:Country = Italy

    val stage1:IndividualTimeTrial = StageBuilder().
      withStart(Location("Apeldoorn")(Netherlands)).
      withFinish(Location("Apeldoorn")(Netherlands)).
      withLength(9.8).
      individualTimeTrial

    val stage2:RoadStage = StageBuilder().
      withStart(Location("Arnhem")(Netherlands)).
      withFinish(Location("Nijmegen")(Netherlands)).
      withLength(190).
      withCol(ColBuilder(TourOfItaly).withName("Berg en Dal").withHeight(96).withSummitKM(155.3).withCategory(C4).build()).roadStage

    val stage3:RoadStage = StageBuilder().
      withStart(Location("Nijmegen")(Netherlands)).
      withFinish(Location("Arnhem")(Netherlands)).
      withLength(190).
      withCol(ColBuilder(TourOfItaly).withName("Posbank").withHeight(88).withSummitKM(136.9).withCategory(C4).build()).roadStage

    val stage4Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Bonifati").withHeight(409).withSummitKM(126).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("San Pietro)").withHeight(378).withSummitKM(150.4).withCategory(C3).build()
    )

    val stage4:RoadStage = StageBuilder().
      withStart(Location("Catanzaro")).
      withFinish( Location("Praia a Mare")).
      withLength(200).
      withCols(stage4Cols).roadStage

    val stage5:RoadStage = StageBuilder().
      withStart(Location("Praia a Mare")).
      withFinish(Location("Benevento")).
      withLength(233).
      withCol(ColBuilder(TourOfItaly).withName("Fortino").withHeight(783).withSummitKM(35).withCategory(C3).build()).roadStage

    val stage6Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Bocca d. Selva").withHeight(1393).withSummitKM(54.1).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Roccaraso (Aremogna)").withHeight(1572).withSummitKM(157).withCategory(C2).build()
    )

    val stage6:RoadStage = StageBuilder().
      withStart(Location("Ponte")).
      withFinish(Location("Roccaraso (Aremogna)")).
      withLength(157).
      withCols(stage6Cols).roadStage

    val stage7Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Ls Svolte di Popoli").withHeight(746).withSummitKM(20).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Valico della Somma)").withHeight(646).withSummitKM(170.2).withCategory(C4).build()
    )

    val stage7:RoadStage = StageBuilder().
      withStart(Location("Sulmona")).
      withFinish(Location("Foligno")).
      withLength(211).
      withCol(ColBuilder(TourOfItaly).withName("Bosco delle Pianelle").withHeight(457).withSummitKM(154.1).withCategory(C4).build()).
      roadStage

    val stage8:RoadStage = StageBuilder().
      withStart(Location("Foligno")).
      withFinish(Location("Arezzo")).
      withLength(186).
      withCol(ColBuilder(TourOfItaly).withName("Scheggia").withHeight(576).withSummitKM(120).withCategory(C3).build()).roadStage

    val stage9:IndividualTimeTrial = StageBuilder().
      withStart(Location("Chianti Classico Stage")).
      withFinish(Location("Chianti Classico Stage)")).
      withLength(40.5).individualTimeTrial

    val stage10Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo della Collina").withHeight(777).withSummitKM(37.5).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Pietracolora").withHeight(805).withSummitKM(75.8).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Pian del Falco").withHeight(1352).withSummitKM(20).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Sestola").withHeight(998).withSummitKM(219).withCategory(C3).build()
    )

    val stage10:RoadStage = StageBuilder().
      withStart(Location("Campi Bisenzio")).
      withFinish(Location("Sestola")).
      withLength(219).
      withCols(stage10Cols).
      roadStage

    val stage11:RoadStage = StageBuilder().
      withStart(Location("Modena")).
      withFinish(Location("Asolo")).
      withLength(227).
      withCol(ColBuilder(TourOfItaly).withName("Forcella Mostaccin").withHeight(374).withSummitKM(207.7).withCategory(C4).build()).
      roadStage

    val stage12:RoadStage = StageBuilder().
      withStart(Location("Noale")).
      withFinish(Location("Bibione")).
      withLength(182).
      roadStage

    val stage13Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Montemaggiore").withHeight(985).withSummitKM(57.5).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Crai").withHeight(813).withSummitKM(80.9).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Cima Porzus").withHeight(910).withSummitKM(138.5).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Valle").withHeight(682).withSummitKM(156.1).withCategory(C2).build()
    )

    val stage13:RoadStage = StageBuilder().
      withStart(Location("Palmanova")).
      withFinish(Location("Cividale del Friuli")).
      withLength(170).
      withCols(stage13Cols).
      roadStage

    val stage14Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo Pordoi").withHeight(2239).withSummitKM(94.7).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Passo Sella").withHeight(2244).withSummitKM(106.6).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo Gardena").withHeight(2121).withSummitKM(111.9).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Passo Campolongo").withHeight(1875).withSummitKM(132.8).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo Giau").withHeight(2236).withSummitKM(168.8).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Passo Valparola").withHeight(2200).withSummitKM(190.6).withCategory(C2).build()
    )

    val stage14:RoadStage = StageBuilder(). 
      withStart(Location("Alpago (Farra)")).
      withFinish(Location("Corvara")).
      withLength(210).
      roadStage

    val stage15:IndividualTimeTrial = StageBuilder().
      withStart(Location("Castelrotto")).
      withFinish(Location("Alpe di Siusi/Seiseralm")).
      withLength(10.8).
      withCol(ColBuilder(TourOfItaly).withName("Alpe di Siusi").withHeight(1844).withSummitKM(10.8).withCategory(C1).build()).
      individualTimeTrial

    val stage16Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo della Mendola").withHeight(1363).withSummitKM(64.3).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Fai della Paganella").withHeight(994).withSummitKM(122.4).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Andaolo").withHeight(1024).withSummitKM(132).withCategory(C3).build()
    )

    val stage16:RoadStage = StageBuilder().
      withStart(Location("Bressanone")).
      withFinish(Location("Andalo")).
      withLength(132).
      withCols(stage16Cols).roadStage

    val stage17:RoadStage = StageBuilder().
      withStart(Location("Molveno")).
      withFinish(Location("Cassano d'Adda")).
      withLength(196).
      withCol(ColBuilder(TourOfItaly).withName("Passo Sant'Eusebio").withHeight(570).withSummitKM(99.5).withCategory(C4).build()).
      roadStage

    val stage18:RoadStage = StageBuilder().
      withStart(Location("Muggio")).
      withFinish(Location("Pinerolo")).
      withLength(244).
      withCol(ColBuilder(TourOfItaly).withName("Pramartino").withHeight(925).withSummitKM(220.5).withCategory(C2).build()).
      roadStage

    val stage19Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Colle dell'Agnello").withHeight(2744).withSummitKM(106.4).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Risoul").withHeight(1862).withSummitKM(162).withCategory(C1).build()
    )

    val stage19:RoadStage = StageBuilder().
      withStart(Location("Pinerolo")).
      withFinish(Location("Risoul")).
      withLength(162).
      withCols(stage19Cols).roadStage

    val stage20Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Col de Vars").withHeight(2108).withSummitKM(19).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Col de la Bonette").withHeight(2715).withSummitKM(63.1).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Colle della Lombardia").withHeight(2530).withSummitKM(123.7).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Sant'Anna di Vinadio").withHeight(2015).withSummitKM(134).withCategory(C3).build()
   )

    val stage20:RoadStage = StageBuilder().
      withStart(Location("Guillestre")).
      withFinish(Location("Sant'Anna di Vinadio")).
      withLength(134).
      withCols(stage20Cols).roadStage

    val stage21:RoadStage = StageBuilder().
      withStart(Location("Cuneo")).
      withFinish(Location("Torino")).
      withLength(163).roadStage

    StageRaceEditionBuilder(TourOfItaly,LocalDateTime.of(2018,5,6,0,0)).
      withIndividualTimeTrial(stage1).
      withRoadStage(stage2).
      withRoadStage(stage3).
      withRestDay(RestDay()).
      withRoadStage(stage4).
      withRoadStage(stage5).
      withRoadStage(stage6).
      withRoadStage(stage7).
      withRoadStage(stage8).
      withIndividualTimeTrial(stage9).
      withRestDay(RestDay()).
      withRoadStage(stage10).
      withRoadStage(stage11).
      withRoadStage(stage12).
      withRoadStage(stage13).
      withRoadStage(stage14).
      withIndividualTimeTrial(stage15).
      withRestDay(RestDay()).
      withRoadStage(stage16).
      withRoadStage(stage17).
      withRoadStage(stage18).
      withRoadStage(stage19).
      withRoadStage(stage20).
      withRoadStage(stage21).build
  }
}
