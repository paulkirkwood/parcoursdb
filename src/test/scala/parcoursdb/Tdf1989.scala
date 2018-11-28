package parcoursdb

import java.time.LocalDateTime

object TourDeFrance1989 { 

  def tdf:StageRaceEdition = {

    implicit val country:Country = France

    val hostCity = Location("Luxembourg City")(Luxembourg)

    val prologue:Prologue = StageBuilder().
      withStart(hostCity).
      withFinish(hostCity).
      withLength(7.8).prologue

    val stage1:RoadStage = StageBuilder().
      withStart(hostCity).
      withFinish(hostCity).
      withLength(135.5).roadStage

    val stage2:TeamTimeTrial = StageBuilder().
      withStart(hostCity).
      withLength(46).teamTimeTrial
 
    StageRaceEditionBuilder(TourDeFrance,LocalDateTime.of(1989,7,1,0,0)).
      withPrologue(prologue).
      am(stage1).
      pm(stage2).build
  }
}
