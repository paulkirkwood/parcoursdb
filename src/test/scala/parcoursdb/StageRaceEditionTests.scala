package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class StageRaceEditionTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val tdf1989       = TourDeFranceEditions.tdf1989
  val tdf2018       = TourDeFranceEditions.tdf2018
  val giro2018      = GiroEditions.giro2018
  val giro2017      = GiroEditions.giro2017
  val giro2016      = GiroEditions.giro2016
  val parisNice2018 = ParisNiceEditions.parisNice2018
  val dauphine2018  = DauphineEditions.dauphine2018
  val tirreno2018   = TirrenoAdriaticoEditions.tirreno2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (tdf1989, "1-23 July"),
      (tdf2018, "7-29 July"),
      (giro2018, "4-27 May"),
      (giro2017, "5-28 May"),
      (giro2016, "6-29 May"),
      (parisNice2018, "4-11 March"),
      (tirreno2018, "3-9 March")
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf1989, 3285),
      (tdf2018, 3351),
      (giro2018, 3572),
      (giro2017, 3614),
      (giro2016, 3467),
      (parisNice2018, 1198),
      (tirreno2018, 993)
    ).forEvery {case (race,length) => scala.math.rint(race.length) shouldEqual length }
  }

  test("Race composition") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (tdf2018, 19, 1, 1, 2),
      (giro2018, 19, 0, 2, 3),
      (giro2017, 19, 0, 2, 3), 
      (giro2016, 18, 0, 3, 3),
      (parisNice2018, 7, 0, 1, 0),
      (tirreno2018, 5, 1, 1, 0)
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
      (tdf2018, "21 stages: 19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"),
      (giro2018, "21 stages: 19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2017, "21 stages: 19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2016, "21 stages: 18 road stages, 3 Individual Time Trials, 3 rest days"),
      (parisNice2018, "8 stages: 7 road stages, 1 Individual Time Trial"),
      (tirreno2018, "7 stages: 5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)")
    ).forEvery {case (race,summary) => StageRaceUtils.composition(race) shouldEqual summary }
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (tdf2018, 4),
      (giro2018, 5),
      (giro2017, 4),
      (giro2016, 6),
      (parisNice2018, 2),
      (tirreno2018, 3)
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (tdf2018, "Col du Portet", 2215),
      (giro2018, "Colle delle Finestre", 2178),
      (giro2017, "Passo dello Stelvio", 2758),
      (giro2016, "Colle dell'Agnello", 2744),
      (parisNice2018, "Valdeblore La Colmiane", 1500),
      (tirreno2018, "Sarnano Sassotetto", 1335)
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf2018, 231),
      (giro2018, 244),
      (giro2017, 234),
      (giro2016, 244),
      (parisNice2018, 210),
      (tirreno2018, 239)
    ).forEvery {case (race,result) => scala.math.rint(race.longestStage.length) shouldEqual result }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (tdf2018, "9 HC, 10 Cat. 1, 7 Cat. 2, 9 Cat. 3, 18 Cat. 4"),
      (giro2018, "8 Cat. 1, 9 Cat. 2, 9 Cat. 3, 10 Cat. 4"),
      (giro2017, "10 Cat. 1, 13 Cat. 2, 6 Cat. 3, 11 Cat. 4"),
      (giro2016, "11 Cat. 1, 12 Cat. 2, 10 Cat. 3, 5 Cat. 4"),
      (parisNice2018, "7 Cat. 1, 11 Cat. 2, 8 Cat. 3")
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (tdf1989),
      (tdf2018),
      (giro2018),
      (giro2017),
      (giro2016),
      (parisNice2018),
      (tirreno2018)
    ).forEvery {case (stageRace) =>
      val raceName:String = RaceUtils.name(stageRace.race)
      val year:Int = stageRace.firstStage.date.getYear()
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${year}.txt"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(stageRace)(RaceUtils.country(stageRace.race)) shouldEqual result }
  }
}
