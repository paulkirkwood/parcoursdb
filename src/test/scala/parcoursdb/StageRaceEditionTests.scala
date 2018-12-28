package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class StageRaceEditionTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  def ~=(x: Double, y: Double, precision: Double) = {
    if ((x - y).abs < precision) true else false
  }

  val tdf1972       = TourDeFranceEditions.tdf1972
  val tdf1989       = TourDeFranceEditions.tdf1989
  val tdf1990       = TourDeFranceEditions.tdf1990
  val tdf1991       = TourDeFranceEditions.tdf1991
  val tdf2018       = TourDeFranceEditions.tdf2018
  val giro1980      = GiroEditions.giro1980
  val giro1981      = GiroEditions.giro1981
  val giro1982      = GiroEditions.giro1982
  val giro1983      = GiroEditions.giro1983
  val giro1984      = GiroEditions.giro1984
  val giro1985      = GiroEditions.giro1985
  val giro1986      = GiroEditions.giro1986
  val giro1987      = GiroEditions.giro1987
  //val giro1988      = GiroEditions.giro1988
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
  val parisNice2018 = ParisNiceEditions.parisNice2018
  val dauphine2018  = DauphineEditions.dauphine2018
  val tirreno2018   = TirrenoAdriaticoEditions.tirreno2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (tdf1972, "1-23 July"),
      (tdf1989, "1-23 July"),
      (tdf1990, "30 June-22 July"),
      (tdf1991, "6-28 July"),
      (tdf2018, "7-29 July"),
      (giro1980, "15 May-7 June"), (giro1981, "13 May-7 June"), (giro1982, "13 May-6 June"), (giro1983, "12 May-5 June"),
      (giro1984, "17 May-10 June"), (giro1985, "16 May-9 June"), (giro1986, "12 May-2 June"), (giro1987, "21 May-13 June"),
      (giro1989, "21 May-11 June"), (giro1990, "18 May-6 June"), (giro1991, "26 May-16 June"), (giro1992, "24 May-14 June"),
      (giro1993, "23 May-13 June"), (giro1994, "22 May-12 June"), (giro1995, "13 May-4 June"), (giro1996, "18 May-9 June"),
      (giro1997, "17 May-8 June"), (giro1998, "16 May-7 June"), (giro1999, "15 May-6 June"), (giro2000, "13 May-4 June"),
      (giro2001, "19 May-10 June"), (giro2002, "11 May-2 June"), (giro2003, "10 May-1 June"),
      (giro2016, "6-29 May"), (giro2017, "5-28 May"), (giro2018, "4-27 May"),
      (parisNice2018, "4-11 March"),
      (tirreno2018, "3-9 March"),
      (dauphine2018, "3-10 June")
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf1989, 3285),
      (tdf1990, 3404),
      (tdf1991, 3914),
      (tdf2018, 3351),
      (giro1980, 4026.0), (giro1981, 3895.6), (giro1982, 3994.5), (giro1983, 3930.0), (giro1984, 3810.0),
      (giro1985, 3998.6), (giro1986, 3858.6), (giro1987, 3915.0), (giro1989, 3525.2), (giro1990, 3498.0),
      (giro1991, 3720.0), (giro1992, 3849.0), (giro1993, 3702.0), (giro1994, 3730.0), (giro1995, 3733.0),
      (giro1996, 3987.0), (giro1997, 3918.0), (giro1998, 3869.0), (giro1999, 3774.0), (giro2000, 3700.6),
      (giro2001, 3580.0), (giro2002, 3194.5), (giro2003, 3476.5),
      (giro2016, 3467), (giro2017, 3614), (giro2018, 3572),
      (parisNice2018, 1198),
      (tirreno2018, 993),
      (dauphine2018, 958)
    ).forEvery {case (race,length) => ~=(race.length, length, 0.0001) }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (tdf1989, 17, 1, 3, 2),
      (tdf1990, 17, 1, 3, 2),
      (tdf1991, 19, 1, 2, 1),
      (tdf2018, 19, 1, 1, 2),
      (giro1980, 20, 0, 2, 1), (giro1981, 20, 1, 2, 3), (giro1982, 20, 0, 2, 2), (giro1983, 20, 1, 2, 2),
      (giro1984, 19, 1, 2, 2), (giro1985, 20, 1, 2, 2), (giro1986, 19, 1, 2, 0), (giro1987, 19, 1, 3, 1),
      (giro1989, 19, 1, 3, 0), (giro1990, 18, 0, 2, 0), (giro1991, 19, 0, 3, 1), (giro1992, 19, 0, 3, 0),
      (giro1993, 19, 0, 3, 1), (giro1994, 20, 0, 3, 0), (giro1995, 19, 0, 3, 1), (giro1996, 21, 0, 1, 1),
      (giro1997, 20, 0, 2, 1), (giro1998, 20, 0, 2, 0), (giro1999, 20, 0, 2, 1), (giro2000, 19, 0, 2, 1),
      (giro2001, 20, 0, 1, 1), (giro2002, 18, 0, 2, 2), (giro2003, 19, 0, 2, 2),
      (giro2016, 18, 0, 3, 3), (giro2017, 19, 0, 2, 3), (giro2018, 19, 0, 2, 3),
      (parisNice2018, 7, 0, 1, 0),
      (tirreno2018, 5, 1, 1, 0),
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
      (tdf1989, "21 stages + Prologue"),
      (tdf1990, "21 stages + Prologue"),
      (tdf1991, "22 stages + Prologue"),
      (tdf2018, "21 stages"),
      (giro1980, "22 stages + Prologue"), (giro1981, "22 stages + Prologue including 1 split stage"),
      (giro1982, "22 stages + Prologue"), (giro1983, "22 stages + Prologue including 1 split stage"),
      (giro1984, "22 stages + Prologue"), (giro1985, "22 stages + Prologue including 1 split stage"),
      (giro1986, "22 stages + Prologue"), (giro1987, "22 stages + Prologue including 1 split stage"),
      (giro1989, "22 stages including 1 split stage"), (giro1990, "19 stages + Prologue including 1 split stage"),
      (giro1991, "21 stages including 1 split stage"), (giro1992, "22 stages"),
      (giro1993, "21 stages including 1 split stage"), (giro1994, "22 stages including 1 split stage"),
      (giro1995, "22 stages"), (giro1996, "22 stages"), (giro1997, "22 stages"), (giro1998, "22 stages + Prologue"),
      (giro1999, "22 stages"), (giro2000, "21 stages + Prologue"), (giro2001, "21 stages + Prologue"),
      (giro2002, "20 stages + Prologue"), (giro2003, "21 stages"),
      (giro2016, "21 stages"), (giro2017, "21 stages"), (giro2018, "21 stages"),
      (parisNice2018, "8 stages"),
      (tirreno2018, "7 stages"),
      (dauphine2018, "7 stages + Prologue")
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (tdf1989,       "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 2 rest days"),
      (tdf1990,       "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 2 rest days"),
      (tdf1991,       "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"),
      (tdf2018,       "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"),
      (giro1980,      "20 road stages, 2 Individual Time Trials, 1 rest day"),
      (giro1981,      "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 3 rest days"),
      (giro1982,      "20 road stages, 2 Individual Time Trials, 2 rest days"),
      (giro1983,      "20 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 2 rest days"),
      (giro2018,      "19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2017,      "19 road stages, 2 Individual Time Trials, 3 rest days"),
      (giro2016,      "18 road stages, 3 Individual Time Trials, 3 rest days"),
      (parisNice2018, "7 road stages, 1 Individual Time Trial"),
      (tirreno2018,   "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
      (dauphine2018,  "6 road stages, 1 Team Time Trial")
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (tdf2018, 4),
      (giro2018, 5),
      (giro2017, 4),
      (giro2016, 6),
      (parisNice2018, 2),
      (tirreno2018, 3),
      (dauphine2018, 4),
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
      (tirreno2018, "Sarnano Sassotetto", 1335),
      (dauphine2018, "Cormet de Roselend", 1968)
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf1989, 259),
      (tdf1990, 301),
      (tdf1991, 286),
      (tdf2018, 231),
      (giro1980, 247), (giro1981, 255), (giro1982, 254), (giro1983, 269), (giro1984, 269), (giro1985, 248),
      (giro1986, 260), (giro1987, 260), (giro1989, 275), (giro1990, 241), (giro1991, 246), (giro1992, 260),
      (giro1993, 263), (giro1994, 235), (giro1995, 240), (giro1996, 250), (giro1997, 240), (giro1998, 239),
      (giro1999, 257), (giro2000, 265), (giro2001, 239), (giro2002, 237), (giro2003, 239),
      (giro2016, 244), (giro2017, 234), (giro2018, 244),
      (parisNice2018, 210),
      (tirreno2018, 239),
      (dauphine2018, 181)
    ).forEvery {case (race,result) => scala.math.rint(race.longestStage.length) shouldEqual result }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (tdf2018, "9 HC, 10 Cat. 1, 7 Cat. 2, 9 Cat. 3, 18 Cat. 4"),
      (giro2018, "8 Cat. 1, 9 Cat. 2, 9 Cat. 3, 10 Cat. 4"),
      (giro2017, "10 Cat. 1, 13 Cat. 2, 6 Cat. 3, 11 Cat. 4"),
      (giro2016, "11 Cat. 1, 12 Cat. 2, 10 Cat. 3, 5 Cat. 4"),
      (parisNice2018, "7 Cat. 1, 11 Cat. 2, 8 Cat. 3"),
      (dauphine2018, "4 HC, 5 Cat. 1, 5 Cat. 2, 7 Cat. 3, 6 Cat. 4")
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (tdf1972),
      (tdf1989),
      (tdf1990),
      (tdf1991),
      (tdf2018),
      (giro1980),
      (giro1981),
      (giro1982),
      (giro1983),
      (giro2016),
      (giro2017),
      (giro2018),
      (parisNice2018),
      (tirreno2018),
      (dauphine2018)
    ).forEvery {case (stageRace) =>
      val raceName:String = RaceUtils.name(stageRace.race)
      val year:Int = stageRace.firstStage.date.getYear()
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(stageRace)(RaceUtils.country(stageRace.race)) shouldEqual result }
  }

  test("Prologue starts") {
    Table[StageRaceEdition](
      ("Race"),
      (tdf1972),
      (tdf1989),
      (tdf1990),
      (tdf1991),
      (tdf2018),
      (giro1981),
      (giro2016),
      (giro2017),
      (giro2018),
      (parisNice2018),
      (tirreno2018),
      (dauphine2018)
    ).forEvery {case (stageRace) =>
      val raceName:String = RaceUtils.name(stageRace.race)
      val year:Int = stageRace.firstStage.date.getYear()
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(stageRace)(RaceUtils.country(stageRace.race)) shouldEqual result }
  }
}
