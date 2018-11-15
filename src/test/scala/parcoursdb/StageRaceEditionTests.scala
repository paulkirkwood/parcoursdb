package parcoursdb

import org.scalatest.FunSuite

class StageRaceEditionTests extends FunSuite {

  test("2018 Tour de France composition") {
    val tdf = TourDeFrance2018.tdf

    assert(tdf.raceDistance === 3351)
    assert(tdf.roadStages.size == 19)
    assert(tdf.restDays.size == 2)
    assert(tdf.teamTimeTrials.size == 1)
    assert(tdf.individualTimeTrials.size == 1)

    assert(tdf.stageComposition ===
      "21 stages: 19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days")

    assert(tdf.summitFinishes === 4)

    val col:Col = tdf.highPoint
    assert(col.name === "Col du Portet")
    assert(col.height === 2215 )
  }
}
