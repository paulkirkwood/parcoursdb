package parcoursdb

import java.time.LocalDateTime

object Giro2017 {

  def giro:StageRaceEdition = {

    implicit val country:Country = Italy

    val stage1Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Multeddu").withHeight(182).withSummitKM(68).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("Trinità d’Agultu").withHeight(362).withSummitKM(90.2).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("San Pantaleo").withSummitKM(185.1).withHeight(215).withCategory(C4).build()
    )

    val stage1:RoadStage = StageBuilder().
      withStart(Location("Alghero")).
      withFinish(Location("Olbia")).
      withLength(206).
      withCols(stage1Cols).
      roadStage

    val stage2Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Genina Silana").withHeight(1002).withSummitKM(174.1).withCategory(C2).build()
    )

    val stage2:RoadStage = StageBuilder().
      withStart(Location("Olbia")).
      withFinish(Location("Tortolì")).
      withLength(221).
      withCols(stage2Cols).roadStage

    val stage3Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Capo Boi").withHeight(126).withSummitKM(107).withCategory(C4).build()
    )

    val stage3:RoadStage = StageBuilder().
      withStart(Location("Tortolì")).
      withFinish(Location( "Cagliari")).
      withLength(148).
      withCols(stage3Cols).roadStage

    val stage4Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Portella Femmina Morta").withHeight(1524).withSummitKM(90).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Etna (Rif. Sapienza)").withHeight(1892).withSummitKM(181).withCategory(C1).build()
    )

    val stage4:RoadStage = StageBuilder().
      withStart(Location("Cefalu")).
      withFinish( Location("Etna")).
      withLength(181).
      withCols(stage4Cols).roadStage

    val stage5Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Andronico-Sant'Alfio").withHeight(878).withSummitKM(38.4).withCategory(C4).build()
    )

    val stage5:RoadStage = StageBuilder().
      withStart(Location("Pedara")).
      withFinish(Location("Messina")).
      withLength(159).
      withCols(stage5Cols).roadStage

    val stage6Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Barritteri").withHeight(543).withSummitKM(36.6).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("Fuscaldo-BV.SP.30").withHeight(156).withSummitKM(193.3).withCategory(C4).build()
    )

    val stage6:RoadStage = StageBuilder().
      withStart(Location("Reggio Calabria")).
      withFinish(Location("Terme Luigiane")).
      withLength(217).
      withCols(stage6Cols).roadStage

    val stage7:RoadStage = StageBuilder().
      withStart(Location("Castrovillari")).
      withFinish(Location("Alberobello (Valle D'Itria)")).
      withLength(224).
      withCol(ColBuilder(TourOfItaly).withName("Bosco delle Pianelle").withHeight(457).withSummitKM(154.1).withCategory(C4).build()).
      roadStage

    val stage8Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Monte Sant'Angelo").withHeight(747).withSummitKM(100.7).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Coppa Santa Tecla").withHeight(362).withSummitKM(143).withCategory(C4).build()
    )

    val stage8:RoadStage = StageBuilder().
      withStart(Location("Molfetta")).
      withFinish(Location("Peschici")).
      withLength(189).
      withCols(stage8Cols).roadStage

    val stage9Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Blockhaus").withHeight(1665).withSummitKM(149).withCategory(C1).build()
    )

    val stage9:RoadStage = StageBuilder().
      withStart(Location("Montenero di Bisaccia")).
      withFinish(Location("Blockhaus)")).
      withLength(149).
      withCols(stage9Cols).roadStage

    val stage10:IndividualTimeTrial = StageBuilder().
      withStart(Location("Foligno")).
      withFinish(Location("Montefalco")).
      withLength(39.8).
      individualTimeTrial

    val stage11Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo della Consuma").withHeight(1060).withSummitKM(31.8).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo della Calla").withHeight(1295).withSummitKM(64.2).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Passo del Carnaio").withHeight(770).withSummitKM(102.4).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Monte Fumaiolo").withHeight(1347).withSummitKM(135.8).withCategory(C2).build()
    )

    val stage11:RoadStage = StageBuilder().
      withStart(Location("Firenze (Ponte a Ema)")).
      withFinish(Location("Bagno di Romagna")).
      withLength(161).
      withCols(stage11Cols).roadStage

    val stage12Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Colla di Casaglia").withHeight(913).withSummitKM(62.9).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Valico Appenninco").withHeight(731).withSummitKM(110.4).withCategory(C3).build()
    )

    val stage12:RoadStage = StageBuilder().
      withStart(Location("Forlì")).
      withFinish(Location("Reggio Emilia")).
      withLength(234).
      withCols(stage12Cols).roadStage

    val stage13:RoadStage = StageBuilder().
      withStart(Location("Reggio Emilia")).
      withFinish(Location("Tortona")).
      withLength(167).roadStage

    val stage14:RoadStage = StageBuilder(). 
      withStart(Location("Castellania")).
      withFinish(Location("Oropa (Biella)")).
      withLength(131).
      withCol(ColBuilder(TourOfItaly).withName("Oropa (Biella)").withHeight(1142).withSummitKM(131).withCategory(C1).build()).
      roadStage

    val stage15Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Miragolo San Salvatore").withHeight(931).withSummitKM(159.3).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Selvino").withHeight(948).withSummitKM(170.8).withCategory(C3).build()
    )

    val stage15:RoadStage = StageBuilder().
      withStart(Location("Valdengo")).
      withFinish(Location("Bergamo")).
      withLength(199).
      withCols(stage15Cols).roadStage

    val stage16Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo del Mortirolo").withHeight(1854).withSummitKM(84.5).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Passo dello Stelvio").withHeight(2758).withSummitKM(143.5).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Umbrailpass Giogo di Santa Maria").withHeight(2502).withSummitKM(202.5).withCategory(C1).build()
    )

    val stage16:RoadStage = StageBuilder().
      withStart(Location("Rovetta")).
      withFinish(Location("Bormio")).
      withLength(222).
      withCols(stage16Cols).roadStage

    val stage17Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Aprica").withHeight(1173).withSummitKM(15.1).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo del Tonale").withHeight(1883).withSummitKM(60.2).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Giovo").withHeight(615).withSummitKM(137).withCategory(C3).build()
    )

    val stage17:RoadStage = StageBuilder().
      withStart(Location("Tirano")).
      withFinish(Location("Canazei (Val di Fassa)")).
      withLength(219).
      withCols(Set[Col](ColBuilder(TourOfItaly).withName("Lodrino").withHeight(736).withSummitKM(71.5).withCategory(C3).build())).
      roadStage

    val stage18Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Passo Portdoi").withHeight(2293).withSummitKM(26).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Passo Valparola").withHeight(2200).withSummitKM(57.2).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo Gardena").withHeight(2121).withSummitKM(85.3).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Passo di Pinei Panidersattel").withHeight(1437).withSummitKM(108.8).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Pontives").withHeight(1103).withSummitKM(133).withCategory(C1).build()
    )

    val stage18:RoadStage = StageBuilder().
      withStart(Location("Moena (Val di Fassa)")).
      withFinish(Location("Ortisei/St. Ulrich (Val Gardena)")).
      withLength(137).
      withCols(stage18Cols).
      roadStage

    val stage19Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("P.S.O M. Croce Comelico").withHeight(1636).withSummitKM(13.9).withCategory(C3).build(),
      ColBuilder(TourOfItaly).withName("Sella Chianzutan").withHeight(955).withSummitKM(104.7).withCategory(C2).build(),
      ColBuilder(TourOfItaly).withName("Piancavallo").withHeight(1290).withSummitKM(191).withCategory(C1).build()
    )

    val stage19:RoadStage = StageBuilder().
      withStart(Location("San Candido/Innichen")).
      withFinish(Location("Piancavallo (Monte Jafferau)")).
      withLength(191).
      withCols(stage19Cols).roadStage

    // Stage 20 26-05-2018
    val stage20Cols = Set[Col](
      ColBuilder(TourOfItaly).withName("Muro di Ca'Del Poggio").withHeight(242).withSummitKM(37.3).withCategory(C4).build(),
      ColBuilder(TourOfItaly).withName("Monte Grappa").withHeight(1620).withSummitKM(127.7).withCategory(C1).build(),
      ColBuilder(TourOfItaly).withName("Foza").withHeight(1086).withSummitKM(175.2).withCategory(C1).build()
   )

    val stage20:RoadStage = StageBuilder().
      withStart(Location("Pordenone")).
      withFinish(Location("Asiago")).
      withLength(190).
      withCols(stage20Cols).roadStage

    val stage21:IndividualTimeTrial = StageBuilder().
      withStart(Location("Monza")).
      withFinish(Location("Milano")).
      withLength(29.3).individualTimeTrial

    StageRaceEditionBuilder(TourOfItaly,LocalDateTime.of(2018,5,5,0,0)).
      withRoadStage(stage1).
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
      withIndividualTimeTrial(stage10).
      withRoadStage(stage11).
      withRoadStage(stage12).
      withRoadStage(stage13).
      withRoadStage(stage14).
      withRoadStage(stage15).
      withRestDay().
      withRoadStage(stage16).
      withRoadStage(stage17).
      withRoadStage(stage18).
      withRoadStage(stage19).
      withRoadStage(stage20).
      withIndividualTimeTrial(stage21).build
  }
}
