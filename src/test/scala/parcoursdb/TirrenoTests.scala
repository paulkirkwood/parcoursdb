package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class TirrenoTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val tirreno2013   = TirrenoAdriaticoEditions.tirrenoAdriatico2013
  val tirreno2014   = TirrenoAdriaticoEditions.tirrenoAdriatico2014
  val tirreno2015   = TirrenoAdriaticoEditions.tirrenoAdriatico2015
  val tirreno2016   = TirrenoAdriaticoEditions.tirrenoAdriatico2016
  val tirreno2017   = TirrenoAdriaticoEditions.tirrenoAdriatico2017
  val tirreno2018   = TirrenoAdriaticoEditions.tirrenoAdriatico2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (tirreno2013, "6-12 March"), (tirreno2014, "12-18 March"), (tirreno2015, "11-17 March"),
      (tirreno2016, "9-15 March"), (tirreno2017, "8-14 March"), (tirreno2018, "3-9 March"),
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tirreno2014, 1034.6),
      (tirreno2015, 1004.4),
      (tirreno2016, 1019.8),
      (tirreno2017, 1030.7),
      (tirreno2018, 992.5),
    ).forEvery {case (race,length) =>
        race.length shouldBe (length +- 0.2)
      }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (tirreno2013, 5, 0, 1, 0), (tirreno2014, 5, 0, 1, 0), (tirreno2015, 5, 0, 2, 0),
      (tirreno2016, 5, 1, 1, 0), (tirreno2017, 5, 1, 1, 0), (tirreno2018, 5, 1, 1, 0),
    ).forEvery {case (race,roadStages,teamTimeTrials,individualTimeTrials,restDays) =>
      race.roadStages.size shouldEqual roadStages
      race.teamTimeTrials.size shouldEqual teamTimeTrials
      race.individualTimeTrials.size shouldEqual individualTimeTrials
      race.restDays.size shouldEqual restDays
    }
  }

  test("Race summary") {
    Table[StageRaceEdition, String](
      ("Race", "Summary"),
      (tirreno2013, "6 stages + Prologue"), (tirreno2014, "6 stages + Prologue"),
      (tirreno2015, "7 stages"), (tirreno2016, "7 stages"),
      (tirreno2017, "7 stages"), (tirreno2018, "7 stages"),
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (tirreno2013, "5 road stages, 1 Individual Time Trial"),
      (tirreno2014, "5 road stages, 1 Individual Time Trial"),
      (tirreno2015, "5 road stages, 2 Individual Time Trials"),
      (tirreno2016, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
      (tirreno2017, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
      (tirreno2018, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (tirreno2018, 3),
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (tirreno2018, "Sarnano Sassotetto", 1335),
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Longest stage length"),
      (tirreno2013, 232), (tirreno2014, 244), (tirreno2015, 226), (tirreno2016, 216), (tirreno2017, 229), (tirreno2018, 239),
    ).forEvery {case (race,longestStage) => race.longestStage.length shouldBe (longestStage +- 0.2) }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (tirreno2013),
      (tirreno2014),
      (tirreno2015),
      (tirreno2016),
      (tirreno2017),
      (tirreno2018),
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.stageRace)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(edition)(RaceUtils.country(edition.stageRace)) shouldEqual result }
  }
}
