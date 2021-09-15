package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class GiroTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val giro1909      = GiroEditions.giro1909
  val giro1910      = GiroEditions.giro1910
  val giro1911      = GiroEditions.giro1911
  val giro1912      = GiroEditions.giro1912
  val giro1913      = GiroEditions.giro1913
  val giro1914      = GiroEditions.giro1914
  val giro1919      = GiroEditions.giro1919
  val giro1980      = GiroEditions.giro1980
  val giro1981      = GiroEditions.giro1981
  val giro1982      = GiroEditions.giro1982
  val giro1983      = GiroEditions.giro1983
  val giro1984      = GiroEditions.giro1984
  val giro1985      = GiroEditions.giro1985
  val giro1986      = GiroEditions.giro1986
  val giro1987      = GiroEditions.giro1987
  val giro1988      = GiroEditions.giro1988
  val giro1989      = GiroEditions.giro1989
  val giro1990      = GiroEditions.giro1990
  val giro1991      = GiroEditions.giro1991
  val giro1992      = GiroEditions.giro1992
  val giro1993      = GiroEditions.giro1993
  val giro1994      = GiroEditions.giro1994
  val giro1995      = GiroEditions.giro1995
  val giro1996      = GiroEditions.giro1996
  val giro1997      = GiroEditions.giro1997
  val giro1998      = GiroEditions.giro1998
  val giro1999      = GiroEditions.giro1999
  val giro2000      = GiroEditions.giro2000
  val giro2001      = GiroEditions.giro2001
  val giro2002      = GiroEditions.giro2002
  val giro2003      = GiroEditions.giro2003
  val giro2016      = GiroEditions.giro2016
  val giro2017      = GiroEditions.giro2017
  val giro2018      = GiroEditions.giro2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (giro1909, "13-30 May"),
      (giro1910, "18 May-5 June"),
      (giro1911, "15 May-6 June"),
      (giro1912, "19 May-4 June"),
      (giro1913, "6-22 May"),
      (giro1914, "24 May-7 June"),
      (giro1919, "21 May-8 June"),
      (giro1980, "15 May-7 June"),
      (giro1981, "13 May-7 June"),
      (giro1982, "13 May-6 June"),
      (giro1983, "12 May-5 June"),
      (giro1984, "17 May-10 June"),
      (giro1985, "16 May-9 June"),
      (giro1986, "12 May-2 June"),
      (giro1987, "21 May-13 June"),
      (giro1988, "23 May-12 June"),
      (giro1989, "21 May-11 June"),
      (giro1990, "18 May-6 June"),
      (giro1991, "26 May-16 June"),
      (giro1992, "24 May-14 June"),
      (giro1993, "23 May-13 June"),
      (giro1994, "22 May-12 June"),
      (giro1995, "13 May-4 June"),
      (giro1996, "18 May-9 June"),
      (giro1997, "17 May-8 June"),
      (giro1998, "16 May-7 June"),
      (giro1999, "15 May-6 June"),
      (giro2000, "13 May-4 June"),
      (giro2001, "19 May-10 June"),
      (giro2002, "11 May-2 June"),
      (giro2003, "10 May-1 June"),
      (giro2016, "6-29 May"),
      (giro2017, "5-28 May"),
      (giro2018, "4-27 May"),
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (giro1909, 2445.2),
      (giro1910, 2987.3),
      (giro1911, 3530.2),
      (giro1912, 2733.6),
      (giro1913, 2932.0),
      (giro1914, 3162.0),
      (giro1919, 2984.2),
      (giro1980, 4026.0),
      (giro1981, 3895.6),
      (giro1982, 3994.5),
      (giro1983, 3930.0),
      (giro1984, 3810.0),
      (giro1985, 3998.6),
      (giro1986, 3858.6),
      (giro1987, 3915.0),
      (giro1988, 3569),
      (giro1989, 3525.2),
      (giro1990, 3498.0),
      (giro1991, 3720.0),
      (giro1992, 3849.0),
      (giro1993, 3702.0),
      (giro1994, 3730.0),
      (giro1995, 3733.0),
      (giro1996, 3987.0),
      (giro1997, 3918.0),
      (giro1998, 3869.0),
      (giro1999, 3774.0),
      (giro2000, 3700.6),
      (giro2001, 3580.0),
      (giro2002, 3194.5),
      (giro2003, 3476.5),
      (giro2016, 3467.1),
      (giro2017, 3614),
      (giro2018, 3572.39),
    ).forEvery {case (race,length) =>
        race.length shouldBe (length +- 0.2)
      }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (giro1909,  8, 0, 0, 0),
      (giro1910, 10, 0, 0, 0),
      (giro1911, 12, 0, 0, 0),
      (giro1912,  9, 0, 0, 0),
      (giro1913,  9, 0, 0, 0),
      (giro1914,  8, 0, 0, 0),
      (giro1919, 10, 0, 0, 0),
      (giro1980, 20, 0, 2, 1),
      (giro1981, 20, 1, 2, 3),
      (giro1982, 20, 0, 2, 2),
      (giro1983, 20, 1, 2, 2),
      (giro1984, 19, 1, 2, 2),
      (giro1985, 20, 1, 2, 2),
      (giro1986, 19, 1, 2, 0),
      (giro1987, 19, 1, 3, 1),
      (giro1989, 19, 1, 3, 0),
      (giro1990, 18, 0, 2, 0),
      (giro1991, 19, 0, 3, 1),
      (giro1992, 19, 0, 3, 0),
      (giro1993, 19, 0, 3, 1),
      (giro1994, 20, 0, 3, 0),
      (giro1995, 19, 0, 3, 1),
      (giro1996, 21, 0, 1, 1),
      (giro1997, 20, 0, 2, 1),
      (giro1998, 20, 0, 2, 0),
      (giro1999, 20, 0, 2, 1),
      (giro2000, 19, 0, 2, 1),
      (giro2001, 20, 0, 1, 1),
      (giro2002, 18, 0, 2, 2),
      (giro2003, 19, 0, 2, 2),
      (giro2016, 18, 0, 3, 3),
      (giro2017, 19, 0, 2, 3),
      (giro2018, 19, 0, 2, 3),
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
      (giro1909, "8 stages"),
      (giro1910, "10 stages"),
      (giro1911, "12 stages"),
      (giro1912, "9 stages"),
      (giro1913, "9 stages"),
      (giro1914, "8 stages"),
      (giro1919, "10 stages"),
      (giro1980, "22 stages + Prologue"),
      (giro1981, "22 stages + Prologue including 1 split stage"),
      (giro1982, "22 stages + Prologue"),
      (giro1983, "22 stages + Prologue including 1 split stage"),
      (giro1984, "22 stages + Prologue"),
      (giro1985, "22 stages + Prologue including 1 split stage"),
      (giro1986, "22 stages + Prologue"),
      (giro1987, "22 stages + Prologue including 1 split stage"),
      (giro1989, "22 stages including 1 split stage"),
      (giro1990, "19 stages + Prologue including 1 split stage"),
      (giro1991, "21 stages including 1 split stage"),
      (giro1992, "22 stages"),
      (giro1993, "21 stages including 1 split stage"),
      (giro1994, "22 stages including 1 split stage"),
      (giro1995, "22 stages"),
      (giro1996, "22 stages"),
      (giro1997, "22 stages"),
      (giro1998, "22 stages + Prologue"),
      (giro1999, "22 stages"),
      (giro2000, "21 stages + Prologue"),
      (giro2001, "21 stages + Prologue"),
      (giro2002, "20 stages + Prologue"),
      (giro2003, "21 stages"),
      (giro2016, "21 stages"),
      (giro2017, "21 stages"),
      (giro2018, "21 stages"),
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (giro1909, "8 road stages"),
      (giro1910, "10 road stages"),
      (giro1911, "12 road stages"),
      (giro1912, "9 road stages"),
      (giro1913, "9 road stages"),
      (giro1914, "8 road stages"),
      (giro1919, "10 road stages"),
      (giro1980, "20 road stages, 2 Individual Time Trials, 1 rest day"),
      (giro1981, "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 3 rest days"),
      (giro1982, "20 road stages, 2 Individual Time Trials, 2 rest days"),
      (giro1983, "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"),
      (giro2018, "19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2017, "19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2016, "18 road stages, 3 Individual Time Trials, 3 rest days"),
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (giro2018, 5),
      (giro2017, 4),
      (giro2016, 6),
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (giro2016, "Colle dell'Agnello", 2744),
      (giro2017, "Passo dello Stelvio", 2758),
      (giro2018, "Colle delle Finestre", 2178),
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Longest stage length"),
      (giro1909, 397),
      (giro1910, 388),
      (giro1911, 394.1),
      (giro1912, 398.8),
      (giro1913, 413.8),
      (giro1914, 430),
      (giro1919, 411.2),
      (giro1980, 247),
      (giro1981, 255),
      (giro1982, 254),
      (giro1983, 269),
      (giro1984, 269),
      (giro1985, 248),
      (giro1986, 260),
      (giro1987, 260),
      (giro1989, 275),
      (giro1990, 241),
      (giro1991, 246),
      (giro1992, 260),
      (giro1993, 263),
      (giro1994, 235),
      (giro1995, 240),
      (giro1996, 250),
      (giro1997, 240),
      (giro1998, 239),
      (giro1999, 257),
      (giro2000, 265),
      (giro2001, 239),
      (giro2002, 237),
      (giro2003, 239),
      (giro2016, 244),
      (giro2017, 234),
      (giro2018, 244),
    ).forEvery {case (race,longestStage) => race.longestStage.length shouldBe (longestStage +- 0.2) }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (giro2016, "11 Cat. 1, 12 Cat. 2, 10 Cat. 3, 5 Cat. 4"),
      (giro2017, "10 Cat. 1, 13 Cat. 2, 6 Cat. 3, 11 Cat. 4"),
      (giro2018, "8 Cat. 1, 9 Cat. 2, 9 Cat. 3, 10 Cat. 4"),
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (giro1909),
      (giro1910),
      (giro1911),
      (giro1912),
      (giro1913),
      (giro1914),
      (giro1919),
      (giro1980),
      (giro1981),
      (giro1982),
      (giro1983),
      (giro1984),
      (giro1985),
      (giro1986),
      (giro1987),
      (giro1988),
      (giro1989),
      (giro1990),
      (giro1991),
      (giro1992),
      (giro1993),
      (giro1994),
      (giro1995),
      (giro1996),
      (giro1997),
      (giro1998),
      (giro1999),
      (giro2000),
      (giro2001),
      (giro2002),
      (giro2003),
      (giro2016),
      (giro2017),
      (giro2018),
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.stageRace)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.year}/route.csv"))
      val result = source.getLines.toList
      val expected = result.mkString("\n")
      source.close()
      val actual = StageRaceUtils.route(edition)(RaceUtils.country(edition.stageRace)).mkString("\n")
      actual shouldEqual expected }
  }
}
