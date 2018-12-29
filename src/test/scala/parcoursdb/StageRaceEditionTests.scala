package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class StageRaceEditionTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  def ~=(x: Double, y: Double, precision: Double) = {
    if ((x - y).abs < precision) true else false
  }

  val tdf1970       = TourDeFranceEditions.tdf1970
  val tdf1971       = TourDeFranceEditions.tdf1971
  val tdf1972       = TourDeFranceEditions.tdf1972
  val tdf1978       = TourDeFranceEditions.tdf1978
  val tdf1979       = TourDeFranceEditions.tdf1979
  val tdf1980       = TourDeFranceEditions.tdf1980
  val tdf1981       = TourDeFranceEditions.tdf1981
  val tdf1982       = TourDeFranceEditions.tdf1982
  val tdf1983       = TourDeFranceEditions.tdf1983
  val tdf1984       = TourDeFranceEditions.tdf1984
  val tdf1985       = TourDeFranceEditions.tdf1985
  val tdf1986       = TourDeFranceEditions.tdf1986
  val tdf1987       = TourDeFranceEditions.tdf1987
  val tdf1988       = TourDeFranceEditions.tdf1988
  val tdf1989       = TourDeFranceEditions.tdf1989
  val tdf1990       = TourDeFranceEditions.tdf1990
  val tdf1991       = TourDeFranceEditions.tdf1991
  val tdf1992       = TourDeFranceEditions.tdf1992
  val tdf1993       = TourDeFranceEditions.tdf1993
  val tdf1994       = TourDeFranceEditions.tdf1994
  val tdf1995       = TourDeFranceEditions.tdf1995
  val tdf1996       = TourDeFranceEditions.tdf1996
  val tdf1997       = TourDeFranceEditions.tdf1997
  val tdf1998       = TourDeFranceEditions.tdf1998
  val tdf1999       = TourDeFranceEditions.tdf1999
  val tdf2018       = TourDeFranceEditions.tdf2018
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
  val parisNice2018 = ParisNiceEditions.parisNice2018
  val dauphine2018  = DauphineEditions.dauphine2018
  val tirreno2013   = TirrenoAdriaticoEditions.tirrenoAdriatico2013
  val tirreno2014   = TirrenoAdriaticoEditions.tirrenoAdriatico2014
  val tirreno2015   = TirrenoAdriaticoEditions.tirrenoAdriatico2015
  val tirreno2016   = TirrenoAdriaticoEditions.tirrenoAdriatico2016
  val tirreno2017   = TirrenoAdriaticoEditions.tirrenoAdriatico2017
  val tirreno2018   = TirrenoAdriaticoEditions.tirrenoAdriatico2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (tdf1970, "26 June-19 July"), (tdf1971, "26 June-18 July"), (tdf1972, "1-23 July"),
      (tdf1978, "29 June-24 July"), (tdf1979, "27 June-22 July"),
      (tdf1980, "26 June-20 July"), (tdf1981, "25 June-19 July"), (tdf1982, "2-25 July"), (tdf1983, "1-24 July"),
      (tdf1984, "29 June-21 July"), (tdf1985, "28 June-21 July"), (tdf1986, "4-27 July"), (tdf1987, "1-26 July"),
      (tdf1988, "3-24 July"), (tdf1989, "1-23 July"), (tdf1990, "30 June-22 July"), (tdf1991, "6-28 July"),
      (tdf1992, "4-26 July"), (tdf1993, "3-25 July"), (tdf1994, "2-24 July"), (tdf1995, "1-23 July"), 
      (tdf1996, "29 June-21 July"), (tdf1997, "5-27 July"), (tdf1998, "11 July-2 August"), (tdf1999, "3-25 July"),
      (tdf2018, "7-29 July"),
      (giro1980, "15 May-7 June"), (giro1981, "13 May-7 June"), (giro1982, "13 May-6 June"), (giro1983, "12 May-5 June"),
      (giro1984, "17 May-10 June"), (giro1985, "16 May-9 June"), (giro1986, "12 May-2 June"), (giro1987, "21 May-13 June"),
      (giro1988, "23 May-12 June"), (giro1989, "21 May-11 June"), (giro1990, "18 May-6 June"), (giro1991, "26 May-16 June"),
      (giro1992, "24 May-14 June"), (giro1993, "23 May-13 June"), (giro1994, "22 May-12 June"), (giro1995, "13 May-4 June"),
      (giro1996, "18 May-9 June"), (giro1997, "17 May-8 June"), (giro1998, "16 May-7 June"), (giro1999, "15 May-6 June"),
      (giro2000, "13 May-4 June"), (giro2001, "19 May-10 June"), (giro2002, "11 May-2 June"), (giro2003, "10 May-1 June"),
      (giro2016, "6-29 May"), (giro2017, "5-28 May"), (giro2018, "4-27 May"),
      (parisNice2018, "4-11 March"),
      (tirreno2013, "6-12 March"), (tirreno2014, "12-18 March"), (tirreno2015, "11-17 March"),
      (tirreno2016, "9-15 March"), (tirreno2017, "8-14 March"), (tirreno2018, "3-9 March"),
      (dauphine2018, "3-10 June")
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf1970, 4368.3), (tdf1971, 3643.8), (tdf1972, 3846.6), (tdf1978, 4078), (tdf1979, 3720),
      (tdf1980, 3947), (tdf1981, 3759), (tdf1982, 3425), (tdf1983, 3870), (tdf1984, 3824),
      (tdf1985, 4276.0), (tdf1986, 4093.4), (tdf1987, 4231.0), (tdf1988, 3297.0), (tdf1989, 3285.3),
      (tdf1990, 3404), (tdf1991, 3914), (tdf1992, 3975.0), (tdf1993, 3710.3), (tdf1994, 3978.7),
      (tdf1995, 3626.8), (tdf1996, 3764.9), (tdf1997, 3873.3), (tdf1998, 3877.1), (tdf1999, 3690.8),
      (tdf2018, 3351),
      (giro1980, 4026.0), (giro1981, 3895.6), (giro1982, 3994.5), (giro1983, 3930.0), (giro1984, 3810.0),
      (giro1985, 3998.6), (giro1986, 3858.6), (giro1987, 3915.0), (giro1988, 3579), (giro1989, 3525.2),
      (giro1990, 3498.0), (giro1991, 3720.0), (giro1992, 3849.0), (giro1993, 3702.0), (giro1994, 3730.0),
      (giro1995, 3733.0), (giro1996, 3987.0), (giro1997, 3918.0), (giro1998, 3869.0), (giro1999, 3774.0),
      (giro2000, 3700.6), (giro2001, 3580.0), (giro2002, 3194.5), (giro2003, 3476.5),
      (giro2016, 3467), (giro2017, 3614), (giro2018, 3572),
      (parisNice2018, 1198),
      (tirreno2014, 1034.6), (tirreno2015, 1004.4), (tirreno2016, 1019.8),
      (tirreno2017, 1030.7), (tirreno2018, 992.5),
      (dauphine2018, 958)
    ).forEvery {case (race,length) => ~=(race.length, length, 0.0001) }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (tdf1970, 23, 1, 4, 0), (tdf1971, 23, 0, 1, 2), (tdf1972, 21, 0, 3, 2), (tdf1978, 20, 1, 3, 2), (tdf1979, 18, 2, 4, 1),
      (tdf1980, 19, 2, 3, 2), (tdf1981, 19, 2, 3, 2), (tdf1982, 16, 3, 3, 2), (tdf1983, 18, 0, 4, 1), (tdf1984, 18, 1, 3, 1),
      (tdf1985, 20, 0, 3, 1), (tdf1986, 20, 1, 2, 1), (tdf1987, 21, 1, 3, 2), (tdf1988, 18, 1, 3, 1), (tdf1989, 17, 1, 3, 2),
      (tdf1990, 17, 1, 3, 2), (tdf1991, 19, 1, 2, 1), (tdf1992, 18, 1, 2, 1), (tdf1993, 17, 1, 2, 2), (tdf1994, 18, 1, 2, 1),
      (tdf1995, 17, 1, 2, 2), (tdf1996, 19, 0, 2, 1), (tdf1997, 19, 0, 2, 1), (tdf1998, 19, 0, 2, 1), (tdf1999, 18, 0, 2, 2),
      (tdf2018, 19, 1, 1, 2),
      (giro1980, 20, 0, 2, 1), (giro1981, 20, 1, 2, 3), (giro1982, 20, 0, 2, 2), (giro1983, 20, 1, 2, 2),
      (giro1984, 19, 1, 2, 2), (giro1985, 20, 1, 2, 2), (giro1986, 19, 1, 2, 0), (giro1987, 19, 1, 3, 1),
      (giro1989, 19, 1, 3, 0), (giro1990, 18, 0, 2, 0), (giro1991, 19, 0, 3, 1), (giro1992, 19, 0, 3, 0),
      (giro1993, 19, 0, 3, 1), (giro1994, 20, 0, 3, 0), (giro1995, 19, 0, 3, 1), (giro1996, 21, 0, 1, 1),
      (giro1997, 20, 0, 2, 1), (giro1998, 20, 0, 2, 0), (giro1999, 20, 0, 2, 1), (giro2000, 19, 0, 2, 1),
      (giro2001, 20, 0, 1, 1), (giro2002, 18, 0, 2, 2), (giro2003, 19, 0, 2, 2),
      (giro2016, 18, 0, 3, 3), (giro2017, 19, 0, 2, 3), (giro2018, 19, 0, 2, 3),
      (parisNice2018, 7, 0, 1, 0),
      (tirreno2013, 5, 0, 1, 0), (tirreno2014, 5, 0, 1, 0), (tirreno2015, 5, 0, 1, 0),
      (tirreno2016, 5, 1, 1, 0), (tirreno2017, 5, 1, 1, 0), (tirreno2018, 5, 1, 1, 0),
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
      (tdf1970, "23 stages + Prologue including 5 split stages"),
      (tdf1971, "21 stages + Prologue including 3 split stages"),
      (tdf1972, "20 stages + Prologue including 4 split stages"),
      (tdf1978, "23 stages + Prologue including 1 split stage"),
      (tdf1979, "24 stages + Prologue"),
      (tdf1980, "22 stages + Prologue including 2 split stages"),
      (tdf1981, "22 stages + Prologue including 2 split stages"),
      (tdf1982, "21 stages + Prologue including 1 split stage"),
      (tdf1983, "22 stages + Prologue"),
      (tdf1984, "21 stages + Prologue including 1 split stage"),
      (tdf1985, "22 stages + Prologue including 1 split stage"),
      (tdf1986, "23 stages + Prologue"),
      (tdf1987, "25 stages + Prologue"),
      (tdf1988, "22 stages + Prologue"),
      (tdf1989, "21 stages + Prologue"),
      (tdf1990, "21 stages + Prologue"),
      (tdf1991, "22 stages + Prologue"),
      (tdf1992, "21 stages + Prologue"),
      (tdf1993, "20 stages + Prologue"),
      (tdf1994, "21 stages + Prologue"),
      (tdf1995, "20 stages + Prologue"),
      (tdf1996, "21 stages + Prologue"),
      (tdf1997, "21 stages + Prologue"),
      (tdf1998, "21 stages + Prologue"),
      (tdf1999, "20 stages + Prologue"),
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
      (tirreno2013, "6 stages + Prologue"), (tirreno2014, "6 stages + Prologue"),
      (tirreno2015, "6 stages + Prologue"), (tirreno2016, "7 stages"),
      (tirreno2017, "7 stages"), (tirreno2018, "7 stages"),
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
      (tirreno2013, "5 road stages, 1 Individual Time Trial"),
      (tirreno2014, "5 road stages, 1 Individual Time Trial"),
      (tirreno2015, "5 road stages, 1 Individual Time Trial"),
      (tirreno2016, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
      (tirreno2017, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
      (tirreno2018, "5 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial)"),
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
      ("Race", "Longest stage length"),
      (tdf1970, 269.5), (tdf1971, 257.5), (tdf1972, 257.5), (tdf1978, 244), (tdf1979, 248),
      (tdf1980, 282), (tdf1981, 264), (tdf1982, 251), (tdf1983, 300), (tdf1984, 338), 
      (tdf1985, 269), (tdf1986, 258.3), (tdf1987, 260), (tdf1988, 233.5), (tdf1989, 259),
      (tdf1990, 301), (tdf1991, 286), (tdf1992, 267.5), (tdf1993, 286.5), (tdf1994, 270.5),
      (tdf1995, 261), (tdf1996, 262.0), (tdf1997, 262.0), (tdf1998, 252.0), (tdf1999, 236.5),
      (tdf2018, 231),
      (giro1980, 247), (giro1981, 255), (giro1982, 254), (giro1983, 269), (giro1984, 269), (giro1985, 248),
      (giro1986, 260), (giro1987, 260), (giro1989, 275), (giro1990, 241), (giro1991, 246), (giro1992, 260),
      (giro1993, 263), (giro1994, 235), (giro1995, 240), (giro1996, 250), (giro1997, 240), (giro1998, 239),
      (giro1999, 257), (giro2000, 265), (giro2001, 239), (giro2002, 237), (giro2003, 239),
      (giro2016, 244), (giro2017, 234), (giro2018, 244),
      (parisNice2018, 210),
      (tirreno2013, 232), (tirreno2014, 244), (tirreno2015, 226), (tirreno2016, 216), (tirreno2017, 229), (tirreno2018, 239),
      (dauphine2018, 181)
    ).forEvery {case (race,result) => ~=(race.longestStage.length, result, 0.0001) }
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
      (tdf1970), (tdf1971), (tdf1972), (tdf1978), (tdf1979),
      (tdf1980), (tdf1981), (tdf1982), (tdf1983), (tdf1984), (tdf1985), (tdf1986), (tdf1987), (tdf1988), (tdf1989),
      (tdf1990), (tdf1991), (tdf1992), (tdf1993), (tdf1994), (tdf1995), (tdf1996), (tdf1997), (tdf1988), (tdf1999),
      (tdf2018),
      (giro1980), (giro1981), (giro1982), (giro1983), (giro1984), (giro1985), (giro1986), (giro1987), (giro1988), (giro1989),
      (giro1990), (giro1991), (giro1992), (giro1993), (giro1994), (giro1995), (giro1996), (giro1997), (giro1998), (giro1999),
      (giro2000), (giro2001), (giro2002), (giro2003),
      (giro2003),
      (giro2016),
      (giro2017),
      (giro2018),
      (parisNice2018),
      (tirreno2013), (tirreno2014), (tirreno2015), (tirreno2016), (tirreno2017), (tirreno2018),
      (dauphine2018)
    ).forEvery {case (stageRace) =>
      val raceName:String = RaceUtils.name(stageRace.race)
      val year:Int = stageRace.firstStage.date.getYear()
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(stageRace)(RaceUtils.country(stageRace.race)).mkString("\n")
      StageRaceUtils.route(stageRace)(RaceUtils.country(stageRace.race)) shouldEqual result }
  }
}
