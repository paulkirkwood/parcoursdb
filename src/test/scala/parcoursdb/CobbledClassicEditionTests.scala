package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class CobbledClassicEditionTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  def ~=(x: Double, y: Double, precision: Double) = {
    if ((x - y).abs < precision) true else false
  }

  val ronde2018   = TourOfFlandersEditions.ronde2018
  val roubaix2017 = ParisRoubaixEditions.roubaix2017
  val roubaix2018 = ParisRoubaixEditions.roubaix2018

  test("Tour of Flanders: Number of sectors and total pave KMs") {
    Table[TourOfFlandersEdition, Int, Double](
      ("Race", "Number of Pave sectors", "Total Pave KMs"),
      (ronde2018, 5, 7.94),
    ).forEvery {case (race,numberOfPaveSectors,totalPaveKMs) =>
      race.numberOfPaveSectors shouldEqual numberOfPaveSectors
      ~=(race.totalPaveKMs, totalPaveKMs, 0.0001)
    }
  }

  test("Paris-Roubaix: Number of sectors and total pave KMs") {
    Table[ParisRoubaixEdition, Int, Double](
      ("Race", "Number of Pave sectors", "Total Pave KMs"),
      (roubaix2017, 29, 57),
      (roubaix2018, 29, 54.8),
    ).forEvery {case (race,numberOfPaveSectors,totalPaveKMs) =>
      race.numberOfPaveSectors shouldEqual numberOfPaveSectors
      ~=(race.totalPaveKMs, totalPaveKMs, 0.0001)
    }
  }

  test("Tour Of Flanders: Bergs") {
    Table[TourOfFlandersEdition](
      ("Race"),
      (ronde2018)
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.race)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.date.getYear}/bergs.csv"))
      val result = source.getLines.toList
      source.close()
      edition.climbs shouldEqual result }
  }

  test("Paris-Roubaix: Pave sectors") {
    Table[ParisRoubaixEdition](
      ("Race"),
      (roubaix2017),
      (roubaix2018)
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.race)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.date.getYear}/pave.csv"))
      val result = source.getLines.toList
      source.close()
      edition.paveSectors shouldEqual result }
  }
}
