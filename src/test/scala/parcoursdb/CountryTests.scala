package parcoursdb

import org.scalatest.FunSuite

class CountryTests extends FunSuite {

  test("Country names") {
    assert(CountryUtils.name(Belgium) === "Belgium")
  }

  test("ISO Codes") {
    assert(CountryUtils.isoCode(Belgium) === "BEL" )
  }
}
