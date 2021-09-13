package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class DauphineTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val dauphine2018  = DauphineEditions.dauphine2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (dauphine2018, "3-10 June")
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (dauphine2018, 958.6)
    ).forEvery {case (race,length) =>
        race.length shouldBe (length +- 0.2)
      }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (dauphine2018, 6, 1, 0, 0)
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
      (dauphine2018, "7 stages + Prologue")
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (dauphine2018,  "6 road stages, 1 Team Time Trial")
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (dauphine2018, 4),
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (dauphine2018, "Cormet de Roselend", 1968)
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Longest stage length"),
      (dauphine2018, 181)
    ).forEvery {case (race,longestStage) => race.longestStage.length shouldBe (longestStage +- 0.2) }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (dauphine2018, "4 HC, 5 Cat. 1, 5 Cat. 2, 7 Cat. 3, 6 Cat. 4")
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (dauphine2018)
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.stageRace)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(edition)(RaceUtils.country(edition.stageRace)) shouldEqual result }
  }
}
