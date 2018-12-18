package parcoursdb

import org.scalatest.FunSuite

class StageRaceEditionTests extends FunSuite {

  test("2018 Tour de France composition") {
    val tdf = TourDeFrance2018.tdf

    assert(StageRaceUtils.dates(tdf) === "7-29 July")
    assert(tdf.length === 3351)
    assert(tdf.roadStages.size == 19)
    assert(tdf.restDays.size == 2)
    assert(tdf.teamTimeTrials.size == 1)
    assert(tdf.individualTimeTrials.size == 1)

    assert(StageRaceUtils.composition(tdf) ===
      "21 stages: 19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days")

    assert(tdf.summitFinishes === 4)
    val col:Col = tdf.highPoint.get
    assert(col.name === "Col du Portet")
    assert(col.height === 2215 )

    assert(StageRaceUtils.cols(tdf) === "9 HC, 10 Cat. 1, 7 Cat. 2, 9 Cat. 3, 18 Cat. 4")
    assert(tdf.finish === Location("Paris")(France))
  }

  test("2018 Giro d'Italia composition") {
    val giro = Giro2018.giro

    assert(StageRaceUtils.dates(giro) === "4-27 May")
    assert(giro.length.toInt === 3572)
    assert(giro.roadStages.size == 19)
    assert(giro.restDays.size == 3)
    assert(giro.teamTimeTrials.size == 0)
    assert(giro.individualTimeTrials.size == 2)

    assert(StageRaceUtils.composition(giro) ===
      "21 stages: 19 road stages, 2 Individual Time Trials, 3 rest days")

    assert(giro.summitFinishes == 5)
    val col:Col = giro.highPoint.get
    assert(col.name === "Colle delle Finestre")
    assert(col.height === 2178 )

  }

  test("2017 Giro d'Italia composition") {
    val giro = Giro2017.giro
    assert(StageRaceUtils.dates(giro) === "5-28 May")
    assert(giro.length.toInt === 3614)
    assert(giro.roadStages.size == 19)
    assert(giro.restDays.size == 3)
    assert(giro.teamTimeTrials.size == 0)
    assert(giro.individualTimeTrials.size == 2)

    assert(StageRaceUtils.composition(giro) ===
      "21 stages: 19 road stages, 2 Individual Time Trials, 3 rest days")

    assert(giro.summitFinishes == 4)
    val col:Col = giro.highPoint.get
    assert(col.name === "Passo dello Stelvio")
    assert(col.height === 2758 )
  }

  test("2016 Giro d'Italia composition") {
    val giro = Giro2016.giro
    assert(StageRaceUtils.dates(giro) === "6-29 May")
    assert(giro.length.toInt === 3467)
    assert(giro.roadStages.size == 18)
    assert(giro.restDays.size == 3)
    assert(giro.teamTimeTrials.size == 0)
    assert(giro.individualTimeTrials.size == 3)

    assert(StageRaceUtils.composition(giro) ===
      "21 stages: 18 road stages, 3 Individual Time Trials, 3 rest days")

    assert(giro.summitFinishes == 6)
    val col:Col = giro.highPoint.get
    assert(col.name === "Colle dell'Agnello")
    assert(col.height === 2744 )
  }

  test("2018 Paris-Nice composition") {
    val parisNice = ParisNice2018.parisNice
    assert(parisNice.restDays.size == 0)
    assert(StageRaceUtils.composition(parisNice) === "8 stages: 7 road stages, 1 Individual Time Trial")
    assert(parisNice.summitFinishes === 2)
  }
}
