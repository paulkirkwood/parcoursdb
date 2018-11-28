package parcoursdb

import org.scalatest._
import Assertions._
import java.time.LocalDateTime

class StageRaceEditionBuilderTests extends FunSuite {

  implicit val country:Country = France

  val thirdMarch2018:LocalDateTime = LocalDateTime.of(2018,3,7,0,0)
  val firstJuly1989:LocalDateTime = LocalDateTime.of(1989,7,7,0,0)

  val prologue:Prologue = StageBuilder().
    withStart(Location("A")).
    withFinish(Location("B")).
    withLength(8).prologue
      
  val roadStage:RoadStage = StageBuilder().
      withStart(Location("B")).
      withFinish(Location("C")).
      withLength(200).roadStage
    
  val ttt:TeamTimeTrial = StageBuilder().
    withStart(Location("C")).
    withFinish(Location("D")).
    withLength(65).teamTimeTrial
      
  val itt:IndividualTimeTrial = StageBuilder().
    withStart(Location("D")).
    withFinish(Location("E")).
    withLength(57).individualTimeTrial
      
  val amRoadStage:RoadStage = StageBuilder().
      withStart(Location("Grenoble")).
      withFinish(Location("Gap")).
      withLength(150).roadStage

  val pmRoadStage:RoadStage = StageBuilder().
      withStart(Location("Gap")).
      withFinish(Location("Alpe d'Huez")).
      withLength(80).roadStage

  test("Can't add a prologue after a road stage") {
    assertTypeError("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withRoadStage(roadStage).withPrologue(prologue).build")
  }

  test("Stage race cannot be just a prologue") {
    assertTypeError("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withPrologue(prologue).build")
  }

  test("First stage cannot be a rest day") {
    assertTypeError("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withRestDay().build")
  }

  test("Last stage cannot be a rest day") {
    assertTypeError("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withRoadStage(roadStage).withRestDay().build")
  }

  test("A rest day cannot follow a rest day") {
    assertTypeError("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withRoadStage(roadStage).withRestDay().withRestDay().build")
  }

  test("First stage can be a road stage") {
    assertCompiles("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withRoadStage(roadStage).build")
  }

  test("Last stage can be a road stage") {
    assertCompiles("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withPrologue(prologue).withTeamTimeTrial(ttt).withRoadStage(roadStage).build")
  }

  test("First stage can be a team time trial") {
    assertCompiles("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withTeamTimeTrial(ttt).build")
  }

  test("First stage can be an individual time trial") {
    assertCompiles("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withIndividualTimeTrial(itt).build")
  }

  test("Last stage can be an individual time trial") {
    assertCompiles("StageRaceEditionBuilder(ParisNice,thirdMarch2018).withPrologue(prologue).withRoadStage(roadStage).withIndividualTimeTrial(itt).build")
  }

  test("Can have morning and afternoon stages") {
    assertCompiles("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).am(amRoadStage).pm(pmRoadStage).build")
  }
    
  test("Can have morning road stage and afternoon team time trial") {
    assertCompiles("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).am(amRoadStage).pm(ttt).build")
  }

  test("Can have morning road stage and afternoon individual time trial") {
    assertCompiles("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).am(amRoadStage).pm(itt).build")
  }

  test("Last stage cannot be a morning stage") {
    assertTypeError("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).am(amRoadStage).build")
  }

  test("First stage cannot be a afternoon stage") {
    assertTypeError("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).pm(pmRoadStage).build")
  }

  test("A rest day cannot follow a morning stage") {
    assertTypeError("StageRaceEditionBuilder(TourDeFrance,firstJuly1989).am(amRoadStage).withRestDay().build")
  }
}
