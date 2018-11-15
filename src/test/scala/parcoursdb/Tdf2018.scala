package parcoursdb

object TourDeFrance2018 { 

  def tdf:StageRaceEdition = {

  implicit val country:Country = France

  // Stage 1 07-07-2018
  val stage1 = StageBuilder().withCategory(RoadStage).
    withStart(Location("Noirmoutier-en-l'Îe")).
    withFinish(Location("Fontenay-le-Comte")).
    withLength(201).
    withCol(ColBuilder("4").withName("Cote de Vix").withHeight(30).withLength(0.7).withSummitKM(173).withAverageGradient(4.2).build).build

  // Stage 2 08-07-2018
  val stage2 = StageBuilder().withCategory(RoadStage).
    withStart(Location("Mouilleron-Saint-Germain")).
    withFinish(Location("La Roche-sur-Yon")).
    withLength(182.5).
    withCol(ColBuilder("4").withName("Cote de Pouzauges").withHeight(202).withLength(1).withSummitKM(28).withAverageGradient(3.9).build).build
 
  // Stage 3 09-07-2018
  val stage3 = StageBuilder().withCategory(TeamTimeTrial).
    withStart(Location("Cholet")).
    withLength(35.5).build
 
  // Stage 4 10-07-2018
  val stage4Cols = Set[Col](
    ColBuilder("4").withName("Cote de Saint-Jean-la-Poterie").withHeight(79).withLength(0.8).withSummitKM(135.5).withAverageGradient(7.8).build
  )
 
  val stage4 = StageBuilder().withCategory(RoadStage).
    withStart(Location("La Baule")).
    withFinish(Location("Sarzeau")).
    withLength(195).withCols(stage4Cols).build
 
  // Stage 5 11-07-2018
  val stage5Cols = Set[Col](
    ColBuilder("4")
      .withName("Cote de Kaliforn")
      .withHeight(209)
      .withLength(1.7)
      .withSummitKM(106)
      .withAverageGradient(7.1).build
    ,
    ColBuilder("4")
      .withName("Cote de Trimen")
      .withHeight(223)
      .withLength(1.6)
      .withSummitKM(113)
      .withAverageGradient(5.6).build
    ,
    ColBuilder("3")
      .withName("Cote de la Roche du Feu")
      .withHeight(221)
      .withLength(1.9)
      .withSummitKM(140.5)
      .withAverageGradient(6.6).build
    ,
    ColBuilder("3")
      .withName("Cote de Menez Quelerc'h")
      .withHeight(210)
      .withLength(3)
      .withSummitKM(159.5)
      .withAverageGradient(6.2).build
    ,
    ColBuilder("3")
      .withName("Cote de la montagne de Locranan")
      .withHeight(233)
      .withLength(2.2)
      .withSummitKM(184.5)
      .withAverageGradient(5.9).build
  )
 
  val stage5 = StageBuilder().withCategory(RoadStage).withStart(Location("Lorient")).withFinish(Location("Quimper")).withLength(204.5).withCols(stage5Cols).build
 
  // Stage 6 12-07-2018
  val stage6Cols = Set[Col](
    ColBuilder("3").withName("Cote de Ploudiry").withSummitKM(44).withHeight(128).withLength(1.5).withAverageGradient(7).build,
    ColBuilder("4").withName("Cote de Roc'h Trevezel").withSummitKM(68.5).withHeight(340).withLength(2.5).withAverageGradient(3.5).build,
    ColBuilder("3").withName("Mur-de-Bretagne").withHeight(293).withSummitKM(165).withLength(2).withAverageGradient(6.9).build,
    ColBuilder("3").withName("Mur-de-Bretagne").withHeight(293).withLength(2).withSummitKM(181).withAverageGradient(6.9).build
  )
 
  val stage6 = StageBuilder().withCategory(RoadStage).withStart(Location("Brest")).withFinish(Location("Mûr-de-Bretagne")).withLength(181).withCols(stage6Cols).build
 
  // Stage 7 13-07-2018
  val stage7Cols = Set[Col](
    ColBuilder("4").withName("Cote du Buisson de Perseigne").withSummitKM(120).withHeight(235).withLength(1.5).withAverageGradient(6.9).build
  )
 
  val stage7 = StageBuilder().withCategory(RoadStage).withStart(Location("Fougres")).withFinish(Location("Chartres")).withLength(231).withCols(stage7Cols).build
 
  // Stage 8 14-07-2018
  val stage8Cols = Set[Col](
    ColBuilder("4").withName("Cote de Pacy-sur-Eure").withSummitKM(35).withHeight(135).withLength(2).withAverageGradient(4.3).build,
    ColBuilder("4").withName("Cote de Feuquerolles").withHeight(134).withSummitKM(71.5).withLength(2.3).withAverageGradient(4.3).build
  )
 
  val stage8 = StageBuilder().withCategory(RoadStage).withStart(Location("Dreux")).withFinish(Location("Amiens")).withLength(181).withCols(stage8Cols).build
 
  // Stage 9 15-07-2018
  val stage9 = StageBuilder().withCategory(RoadStage).withStart(Location("Arras")).withFinish(Location("Roubaix")).withLength(156.5).build
 
  // Rest Day #1 16-07-2018
  val restDay1 = StageBuilder().withCategory(RestDay).withStart(Location("Annency")).build

  // Stage 10 17-07-2018
  val stage10Cols = Set[Col](
    ColBuilder("4").withName("Col de Bluffy").withSummitKM(19).withHeight(622).withLength(1.5).withAverageGradient(5.6).build,
    ColBuilder("1").withName("Col de la Croix Fry").withSummitKM(43).withHeight(1477).withLength(11.3).withAverageGradient(7).build,
    ColBuilder("HC").withName("Montee du plateau des Glieres").withSummitKM(68.5).withHeight(1390).withLength(6).withAverageGradient(11.2).build,
    ColBuilder("1").withName("Col de Romme").withHeight(1297).withLength(8.8).withSummitKM(130).withAverageGradient(8.9).build,
    ColBuilder("1").withName("Col de la Colombiere").withHeight(1618).withLength(7.5).withSummitKM(144).withAverageGradient(8.5).build
  )
 
  val stage10 = StageBuilder().withCategory(RoadStage).withStart(Location("Annecy")).withFinish(Location("Le Grand-Bornard")).withLength(158.5).withCols(stage10Cols).build
 
  // Stage 11 18-07-2018
  val stage11Cols = Set[Col](
    ColBuilder("HC").withName("Montee de Bisanne").withSummitKM(26).withHeight(1723).withLength(12.4).withAverageGradient(8.2).build,
    ColBuilder("HC").withName("Col du Pre").withHeight(1748).withSummitKM(57.5).withLength(12.6).withAverageGradient(7.7).build,
    ColBuilder("2").withName("Cormet de Roselend").withHeight(1968).withSummitKM(70).withLength(5.7).withAverageGradient(6.5).build,
    ColBuilder("1").withName("La Rosiere").withHeight(1855).withLength(17.6).withSummitKM(108.5).withAverageGradient(5.8).build
  )
 
  val stage11 = StageBuilder().withCategory(RoadStage).withStart(Location("Albertville")).withFinish(Location("La Rosiere")).withLength(108.5).withCols(stage11Cols).build
 
  // Stage 12 19-07-2018
  val stage12Cols = Set[Col](
    ColBuilder("HC").withName("Col de la Madeleine").withSummitKM(53.5).withHeight(2000).withLength(25.3).withAverageGradient(6.2).build,
    ColBuilder("2").withName("Lacets de Montvernier").withSummitKM(83).withHeight(782).withLength(3.4).withAverageGradient(8.2).build,
    ColBuilder("HC").withName("Col de la Croix de Fer").withHeight(2067).withSummitKM(121).withLength(29).withAverageGradient(5.2).build,
    ColBuilder("HC").withName("Alpe d'Huez").withHeight(1850).withLength(13.8).withSummitKM(175.5).withAverageGradient(8.1).build,
  )
 
  val stage12 = StageBuilder().withCategory(RoadStage).withStart(Location("Bourg-Saint-Maurice")).withFinish(Location("L'Alpe d'Huez")).withLength(175.5).withCols(stage12Cols).build
 
  // Stage 13 20-07-2018
  val stage13Cols = Set[Col](
    ColBuilder("3").withName("Cote de Brie").withSummitKM(32.5).withHeight(450).withLength(2.4).withAverageGradient(6.9).build,
    ColBuilder("4").withName("Cote de Sainte-Eulalie").withSummitKM(109.5).withHeight(298).withLength(1.5).withAverageGradient(4.9).build
  )
 
  val stage13 = StageBuilder().withCategory(RoadStage).withStart(Location("Le Bourg-d'Oisans")).withFinish(Location("Valence")).withLength(169.5).withCols(stage13Cols).build
 
  // Stage 14 21-07-2018
  val stage14Cols = Set[Col](
    ColBuilder("4").withName("Cote du Grand Chataignier").withSummitKM(81).withHeight(321).withLength(1).withAverageGradient(7.4).build,
    ColBuilder("2").withName("Col de la Croix de Berthel").withSummitKM(129).withHeight(1088).withLength(9.1).withAverageGradient(5.3).build,
    ColBuilder("3").withName("Col du Pont sans Eau").withHeight(1084).withSummitKM(142).withLength(3.3).withAverageGradient(6.3).build,
    ColBuilder("2").withName("Cote de la Croix Neuve").withHeight(1055).withLength(3).withSummitKM(186.5).withAverageGradient(10.2).build
  )
 
  val stage14 = StageBuilder().withCategory(RoadStage).withStart(Location("Saint-Paul-Trois-Chateaux")).withFinish(Location("Mende")).withLength(188).withCols(stage14Cols).build
 
  // Stage 15 22-07-2018
  val stage15Cols = Set[Col](
    ColBuilder("3").withName("Cote de Luzencon").withSummitKM(9).withHeight(538).withLength(3.1).withAverageGradient(5.9).build,
    ColBuilder("2").withName("Col de Sie").withSummitKM(64.5).withHeight(928).withLength(10.2).withAverageGradient(4.9).build,
    ColBuilder("1").withName("Pic de Nore").withHeight(1205).withSummitKM(140).withLength(12.3).withAverageGradient(6.3).build
  )
 
  val stage15 = StageBuilder().withCategory(RoadStage).withStart(Location("Millau")).withFinish(Location("Carcassonne")).withLength(181.5).withCols(stage15Cols).build
 
  // Rest Day 2 23-07-2018
  val restDay2 = StageBuilder().withCategory(RestDay).withStart(Location("Lourdes")).build

  // Stage 16 24-07-2018
  val stage16Cols = Set[Col](
    ColBuilder("4").withName("Cote de Fanjeaux").withSummitKM(25).withHeight(348).withLength(2.4).withAverageGradient(4.9).build,
    ColBuilder("4").withName("Cote de Pamiers").withHeight(417).withSummitKM(72).withLength(2.3).withAverageGradient(5.8).build,
    ColBuilder("2").withName("Col de Portet d'Aspet").withHeight(1069).withSummitKM(155.5).withLength(5.4).withAverageGradient(7.1).build,
    ColBuilder("1").withName("Col de Mente").withHeight(1349).withSummitKM(171).withLength(6.9).withAverageGradient(8.1).build,
    ColBuilder("1").withName("Col du Portillon").withHeight(1292).withSummitKM(208).withLength(8.3).withAverageGradient(7.1).build
  )
 
  val stage16 = StageBuilder().withCategory(RoadStage).
    withStart(Location("Carcassonne")).
    withFinish(Location("Bagneres-de-Luchon")).
    withLength(218).
    withCols(stage16Cols).build
 
  // Stage 17 25-07-2018
  val stage17Cols = Set[Col](
    ColBuilder("1").withName("Monte de Peyragudes").withHeight(1645).withLength(14.9).withSummitKM(15).withAverageGradient(6.7).build,
    ColBuilder("1").withName("Col de Val Louron-Azet").withHeight(1580).withSummitKM(37).withLength(7.4).withAverageGradient(8.3).build,
    ColBuilder("HC").withName("Col du Portet").withHeight(2215).withLength(16).withSummitKM(65).withAverageGradient(8.7).build
  )
 
  val stage17 = StageBuilder().withCategory(RoadStage).
    withStart(Location("Bagneres-de-Luchon")).
    withFinish(Location("Saint-Lary-Soulan (Col de Portet)")).
    withLength(65).
    withCols(stage17Cols).build

  // Stage 18 26-07-2018
  //val stage18Cols = Set[Col](
  //  ColBuilder("4").withName("Cote de Madiran").withSummitKM(53.5).withHeight(260).withLength(1.2).withAverageGradient(7).build,
  //  ColBuilder("4").withName("Cote d'Anos").withHeight(304).withSummitKM(152.5).withLength(2.1).withAverageGradient(4.6).build
  //)
 
  val stage18 = StageBuilder().
    withCategory(RoadStage).
    withStart(Location("Trie-sur-Basie")).
    withFinish(Location("Pau")).
    withLength(171).
    withCol(
      ColBuilder("4").
      withName("Cote de Madiran").
      withSummitKM(53.5).
      withHeight(260).
      withLength(1.2).
      withAverageGradient(7).build).
    withCol(
      ColBuilder("4").
      withName("Cote d'Anos").
      withHeight(304).
      withSummitKM(152.5).
      withLength(2.1).
      withAverageGradient(4.6).build).
    build
 
  // Stage 19 27-07-2018
  val stage19Cols = Set[Col](
   ColBuilder("4").withName("Cote de Loucrup").withSummitKM(7).withHeight(532).withLength(1.8).withAverageGradient(7.2).build,
   ColBuilder("4").withName("Cote de Capvern-les-Bains").withSummitKM(40).withHeight(604).withLength(3.4).withAverageGradient(5.1).build,
   ColBuilder("1").withName("Col d'Aspin").withHeight(1490).withLength(12).withSummitKM(78.5).withAverageGradient(6.5).build,
   ColBuilder("HC").withName("Col du Tourmalet").withHeight(2115).withLength(17.1).withSummitKM(108).withAverageGradient(7.3).build,
   ColBuilder("2").withName("Col de Borderes").withHeight(1156).withLength(8.6).withSummitKM(159.5).withAverageGradient(5.8).build,
   ColBuilder("HC").withName("Col d'Aubisque").withHeight(1709).withLength(16.6).withSummitKM(180.5).withAverageGradient(4.9).build)
 
  val stage19 = StageBuilder().withCategory(RoadStage).withStart(Location("Lourdes")).withFinish(Location("Laruns")).withLength(200.5).withCols(stage19Cols).build

  // Stage 20 28-07-2018
  val stage20 = StageBuilder().withCategory(IndividualTimeTrial).withStart(Location("Saint-Pee-sur-Nivelle")).withFinish(Location("Espelette")).withLength(31).build
 
  // Stage 21 29-07-2018
  val stage21 = StageBuilder().withCategory(RoadStage).withStart(Location("Houilles")).withFinish(Location("Paris")).withLength(116).build
 
  val stages:Seq[Stage] = Seq(stage1,stage2,stage3,stage4,stage5,stage6,stage7,stage8,stage9,restDay1,stage10,stage11,stage12,stage13,stage14,stage15,restDay2,stage16,stage17,stage18,stage19,stage20,stage21)

  StageRaceEdition(TourDeFrance,stages)
}
}
