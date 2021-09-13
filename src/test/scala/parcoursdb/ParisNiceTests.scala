package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class ParisNiceTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val parisNice2018 = ParisNiceEditions.parisNice2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (parisNice2018, "4-11 March"),
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (parisNice2018, 1198.4),
    ).forEvery {case (race,length) =>
        race.length shouldBe (length +- 0.2)
      }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (parisNice2018, 7, 0, 1, 0),
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
      (parisNice2018, "8 stages"),
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (parisNice2018, "7 road stages, 1 Individual Time Trial"),
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (parisNice2018, 2),
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (parisNice2018, "Valdeblore La Colmiane", 1500),
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Longest stage length"),
      (parisNice2018, 210),
    ).forEvery {case (race,longestStage) => race.longestStage.length shouldBe (longestStage +- 0.2) }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (parisNice2018, "7 Cat. 1, 11 Cat. 2, 8 Cat. 3"),
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (parisNice2018),
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.stageRace)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(edition)(RaceUtils.country(edition.stageRace)) shouldEqual result }
  }
}
