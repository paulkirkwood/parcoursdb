package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class TourDeFranceTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  val tdf1903       = TourDeFranceEditions.tdf1903
  val tdf1904       = TourDeFranceEditions.tdf1904
  val tdf1905       = TourDeFranceEditions.tdf1905
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
  val tdf2000       = TourDeFranceEditions.tdf2000
  val tdf2001       = TourDeFranceEditions.tdf2001
  val tdf2002       = TourDeFranceEditions.tdf2002
  val tdf2003       = TourDeFranceEditions.tdf2003
  val tdf2004       = TourDeFranceEditions.tdf2004
  val tdf2005       = TourDeFranceEditions.tdf2005
  val tdf2006       = TourDeFranceEditions.tdf2006
  val tdf2007       = TourDeFranceEditions.tdf2007
  val tdf2008       = TourDeFranceEditions.tdf2008
  val tdf2009       = TourDeFranceEditions.tdf2009
  val tdf2010       = TourDeFranceEditions.tdf2010
  val tdf2011       = TourDeFranceEditions.tdf2011
  val tdf2012       = TourDeFranceEditions.tdf2012
  val tdf2013       = TourDeFranceEditions.tdf2013
  val tdf2014       = TourDeFranceEditions.tdf2014
  val tdf2015       = TourDeFranceEditions.tdf2015
  val tdf2016       = TourDeFranceEditions.tdf2016
  val tdf2018       = TourDeFranceEditions.tdf2018

  test("Race dates") {
    Table[StageRaceEdition, String](
      ("Race", "Dates"),
      (tdf1903, "1-18 July"),
      (tdf1904, "2-23 July"),
      (tdf1905, "9-29 July"),
      (tdf1970, "26 June-19 July"), (tdf1971, "26 June-18 July"), (tdf1972, "1-23 July"),
      (tdf1978, "29 June-23 July"), (tdf1979, "27 June-22 July"),
      (tdf1980, "26 June-20 July"), (tdf1981, "25 June-19 July"), (tdf1982, "2-25 July"), (tdf1983, "1-24 July"),
      (tdf1984, "29 June-22 July"), (tdf1985, "28 June-21 July"), (tdf1986, "4-27 July"), (tdf1987, "1-26 July"),
      (tdf1988, "3-24 July"), (tdf1989, "1-23 July"), (tdf1990, "30 June-22 July"), (tdf1991, "6-28 July"),
      (tdf1992, "4-26 July"), (tdf1993, "3-25 July"), (tdf1994, "2-24 July"), (tdf1995, "1-23 July"), 
      (tdf1996, "29 June-21 July"), (tdf1997, "5-27 July"), (tdf1998, "11 July-2 August"), (tdf1999, "3-25 July"),
      (tdf2000, "1-22 July"), (tdf2001, "7-29 July"), (tdf2002, "6-28 July"), (tdf2003, "5-27 July"), (tdf2004, "3-25 July"),
      (tdf2005, "2-24 July"), (tdf2006, "1-23 July"), (tdf2007, "7-29 July"), (tdf2008, "5-27 July"), (tdf2009, "4-26 July"),
      (tdf2010, "3-25 July"), (tdf2011, "2-24 July"), (tdf2012, "30 June-22 July"), (tdf2013, "29 June-21 July"),
      (tdf2014, "5-27 July"), (tdf2015, "4-26 July"), (tdf2016, "2-24 July"), (tdf2018, "7-29 July"),
    ).forEvery {case (race,dates) => StageRaceUtils.dates(race) shouldEqual dates }
  }

  test("Race length") {
    Table[StageRaceEdition, Double](
      ("Race", "Length"),
      (tdf1903, 2428.0),
      (tdf1904, 2429.0),
      (tdf1905, 3021.0),
      (tdf1970, 4368.3),
      (tdf1971, 3643.8),
      (tdf1972, 3846.6),
      (tdf1978, 4078),
      (tdf1979, 3720),
      (tdf1980, 3947),
      (tdf1981, 3759),
      (tdf1982, 3585),
      (tdf1983, 3870),
      (tdf1984, 4021),
      (tdf1985, 4276.0),
      (tdf1986, 4093.4),
      (tdf1987, 4231.0),
      (tdf1988, 3297.0),
      (tdf1989, 3285.3),
      (tdf1990, 3403.8),
      (tdf1991, 3914.4),
      (tdf1992, 3975.0),
      (tdf1993, 3710.3),
      (tdf1994, 3978.7),
      (tdf1995, 3626.8),
      (tdf1996, 3764.9),
      (tdf1997, 3873.3),
      (tdf1998, 3877.1),
      (tdf1999, 3690.8),
      (tdf2000, 3413.0),
      (tdf2001, 3454.2),
      (tdf2002, 3277.5),
      (tdf2003, 3427.5),
      (tdf2004, 3391.1),
      (tdf2005, 3592.5),
      (tdf2006, 3657.1),
      (tdf2007, 3569.9),
      (tdf2008, 3559.0),
      (tdf2009, 3459.5),
      (tdf2010, 3642.0),
      (tdf2011, 3430.0),
      (tdf2012, 3487.4),
      (tdf2013, 3403.5),
      (tdf2014, 3660.5),
      (tdf2015, 3360.3),
      (tdf2016, 3529.0),
      (tdf2018, 3351),
    ).forEvery {case (race,length) =>
        race.length shouldBe (length +- 0.2)
      }
  }

  test("Stage types") {
    Table[StageRaceEdition, Int, Int, Int, Int](
      ("Race", "Road stages", "Team Time Trials", "Individual Time Trials", "Rest Days"),
      (tdf1903, 6, 0, 0, 0),
      (tdf1904, 6, 0, 0, 0),
      (tdf1905, 11, 0, 0, 0),
      (tdf1970, 23, 1, 4, 0), (tdf1971, 23, 0, 1, 2), (tdf1972, 21, 0, 3, 2), (tdf1978, 20, 1, 3, 2), (tdf1979, 18, 2, 4, 1),
      (tdf1980, 19, 2, 3, 2), (tdf1981, 19, 2, 3, 2), (tdf1982, 17, 2, 3, 2), (tdf1983, 18, 0, 4, 1), (tdf1984, 19, 1, 3, 1),
      (tdf1985, 20, 0, 3, 1), (tdf1986, 20, 1, 2, 1), (tdf1987, 21, 1, 3, 2), (tdf1988, 18, 1, 3, 1), (tdf1989, 17, 1, 3, 2),
      (tdf1990, 17, 1, 3, 2), (tdf1991, 19, 1, 2, 1), (tdf1992, 18, 1, 2, 1), (tdf1993, 17, 1, 2, 2), (tdf1994, 18, 1, 2, 1),
      (tdf1995, 17, 1, 2, 2), (tdf1996, 19, 0, 2, 1), (tdf1997, 19, 0, 2, 1), (tdf1998, 19, 0, 2, 1), (tdf1999, 18, 0, 2, 2),
      (tdf2000, 18, 1, 1, 2), (tdf2001, 17, 1, 2, 2), (tdf2002, 17, 1, 2, 2), (tdf2003, 17, 1, 2, 2), (tdf2004, 17, 1, 2, 2),
      (tdf2005, 18, 1, 2, 2), (tdf2006, 18, 0, 2, 2), (tdf2007, 18, 0, 2, 2), (tdf2008, 19, 0, 2, 2), (tdf2009, 18, 1, 2, 2),
      (tdf2010, 19, 0, 1, 2), (tdf2011, 19, 1, 1, 2), (tdf2012, 18, 0, 2, 2), (tdf2013, 18, 1, 2, 2), (tdf2014, 20, 0, 1, 2),
      (tdf2015, 19, 1, 1, 2), (tdf2016, 19, 0, 2, 2), (tdf2018, 19, 1, 1, 2),
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
      (tdf1903, "6 stages"),
      (tdf1904, "6 stages"),
      (tdf1905, "11 stages"),
      (tdf1970, "23 stages + Prologue including 5 split stages"),
      (tdf1971, "21 stages + Prologue including 3 split stages"),
      (tdf1972, "20 stages + Prologue including 4 split stages"),
      (tdf1978, "22 stages + Prologue including 2 split stages"),
      (tdf1979, "24 stages + Prologue"),
      (tdf1980, "22 stages + Prologue including 2 split stages"),
      (tdf1981, "22 stages + Prologue including 2 split stages"),
      (tdf1982, "21 stages + Prologue including 1 split stage"),
      (tdf1983, "22 stages + Prologue"),
      (tdf1984, "22 stages + Prologue including 1 split stage"),
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
      (tdf2000, "20 stages"),
      (tdf2001, "20 stages + Prologue"),
      (tdf2002, "20 stages + Prologue"),
      (tdf2003, "20 stages + Prologue"),
      (tdf2004, "20 stages + Prologue"),
      (tdf2005, "21 stages"),
      (tdf2006, "20 stages + Prologue"),
      (tdf2007, "20 stages + Prologue"),
      (tdf2008, "21 stages"),
      (tdf2009, "21 stages"),
      (tdf2010, "20 stages + Prologue"), (tdf2011, "21 stages"), (tdf2012, "20 stages + Prologue"), (tdf2013, "21 stages"),
      (tdf2014, "21 stages"), (tdf2015, "21 stages"), (tdf2016, "21 stages"),
      (tdf2018, "21 stages"),
    ).forEvery {case (race,summary) => StageRaceUtils.summary(race) shouldEqual summary}
  }

  test("Stage composition") {
    Table[StageRaceEdition, String](
      ("Race", "Composition"),
      (tdf1903, "6 road stages"),
      (tdf1904, "6 road stages"),
      (tdf1905, "11 road stages"),
      (tdf1989,       "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 2 rest days"),
      (tdf1990,       "17 road stages, 4 Time Trials (1 Team Time Trial; 3 Individual Time Trials), 2 rest days"),
      (tdf1991,       "19 road stages, 3 Time Trials (1 Team Time Trial; 2 Individual Time Trials), 1 rest day"),
      (tdf2018,       "19 road stages, 2 Time Trials (1 Team Time Trial; 1 Individual Time Trial), 2 rest days"),
    ).forEvery {case (race,composition) => StageRaceUtils.composition(race) shouldEqual composition}
  }

  test("Summit finishes") {
    Table[StageRaceEdition, Int](
      ("Race", "Number of Summit finishes"),
      (tdf2018, 4),
    ).forEvery {case (race,numberOfSummitFinishes) => race.summitFinishes shouldEqual numberOfSummitFinishes }
  }

  test("High points") {
    Table[StageRaceEdition, String, Int](
      ("Race", "Name", "Height"),
      (tdf2018, "Col du Portet", 2215),
    ).forEvery {case (race,name,height) =>
      val col:Col = race.highPoint.get    
      col.name shouldEqual name
      col.height shouldEqual height
    }
  }

  test("Longest stage") {
    Table[StageRaceEdition, Double](
      ("Race", "Longest stage length"),
      (tdf1903, 471.0),
      (tdf1904, 471.0),
      (tdf1905, 348.0),
      (tdf1970, 269.5), (tdf1971, 257.5), (tdf1972, 257.5), (tdf1978, 244), (tdf1979, 248),
      (tdf1980, 282), (tdf1981, 264), (tdf1982, 251), (tdf1983, 300), (tdf1984, 338), 
      (tdf1985, 269), (tdf1986, 258.3), (tdf1987, 260), (tdf1988, 233.5), (tdf1989, 259),
      (tdf1990, 301), (tdf1991, 286), (tdf1992, 267.5), (tdf1993, 286.5), (tdf1994, 270.5),
      (tdf1995, 261), (tdf1996, 262.0), (tdf1997, 262.0), (tdf1998, 252.0), (tdf1999, 236.5),
      (tdf2000, 254.5), (tdf2001, 232.5), (tdf2002, 226.5), (tdf2003, 230.5), (tdf2004, 237.0),
      (tdf2005, 239.5), (tdf2006, 230.0), (tdf2007, 236.5), (tdf2008, 232.0), (tdf2009, 224.0),
      (tdf2010, 227.5), (tdf2011, 226.5), (tdf2012, 226.0), (tdf2013, 242.5), (tdf2014, 237.5), (tdf2015, 223.5), (tdf2016, 237.5),
      (tdf2018, 231),
    ).forEvery {case (race,longestStage) => race.longestStage.length shouldBe (longestStage +- 0.2) }
  }

  test("Climbs by category") {
    Table[StageRaceEdition, String](
      ("Race", "Cols by category"),
      (tdf2018, "9 HC, 10 Cat. 1, 7 Cat. 2, 9 Cat. 3, 18 Cat. 4"),
    ).forEvery {case (race,result) => StageRaceUtils.cols(race) shouldEqual result }
  }

  test("Race route") {
    Table[StageRaceEdition](
      ("Race"),
      (tdf1903),
      (tdf1904),
      (tdf1905),
      (tdf1970), (tdf1971), (tdf1972), (tdf1978), (tdf1979),
      (tdf1980), (tdf1981), (tdf1982), (tdf1983), (tdf1984), (tdf1985),
      //(tdf1980), (tdf1981), (tdf1982), (tdf1983), (tdf1984), (tdf1985), (tdf1986), (tdf1987), (tdf1988), (tdf1989),
      //(tdf1990), (tdf1991), (tdf1992), (tdf1993), (tdf1994), (tdf1995), (tdf1996), (tdf1997), (tdf1988), (tdf1999),
      //(tdf2000), (tdf2001), (tdf2002), (tdf2003), (tdf2004), (tdf2005), (tdf2006), (tdf2007), (tdf2008), (tdf2009),
      //(tdf2010), (tdf2011), (tdf2012), (tdf2013), (tdf2014), (tdf2015), (tdf2016), (tdf2018),
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.stageRace)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.year}/route.csv"))
      val result = source.getLines.toList
      source.close()
      StageRaceUtils.route(edition)(RaceUtils.country(edition.stageRace)) shouldEqual result }
  }
}
