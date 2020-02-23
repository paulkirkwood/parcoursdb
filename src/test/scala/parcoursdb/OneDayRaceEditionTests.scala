package parcoursdb

import org.scalatest.prop.TableDrivenPropertyChecks
import org.scalatest.{FunSuite, Matchers}
import scala.math
import scala.io.Source

class OneDayRaceEditionTests extends FunSuite with Matchers with TableDrivenPropertyChecks {

  def ~=(x: Double, y: Double, precision: Double) = {
    if ((x - y).abs < precision) true else false
  }

  val lbl2018 = LiegeBastogneLiegeEditions.lbl2018

  test("Number of Cols") {
    Table[OneDayRaceEdition, Int](
      ("Edition", "Number of Cols"),
      (lbl2018, 11),
    ).forEvery {case (edition,numberOfCols) => edition.cols.size shouldEqual numberOfCols }
  }

  test("Cols") {
    Table[OneDayRaceEdition](
      ("Edition"),
      (lbl2018)
    ).forEvery {case (edition) =>
      val raceName:String = RaceUtils.name(edition.race)
      val source = Source.fromURL(getClass.getResource(s"/${raceName}/${edition.date.getYear}/cotes.csv"))
      val result = source.getLines.toList
      source.close()
      edition.climbs shouldEqual result }
  }
}
