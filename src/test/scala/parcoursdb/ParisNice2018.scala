package parcoursdb

import java.time.LocalDateTime

object ParisNice2018 {

  def parisNice:StageRaceEdition = {

    implicit val country:Country = France

    // Stage 1
    val stage1:RoadStage = StageBuilder().
      withStart(Location("Chatou")).
      withFinish(Location("Meudon")).
      withLength(134.5).roadStage

    val stage2:RoadStage = StageBuilder().
      withStart(Location("Orsonville")).
      withFinish(Location("Vierzon")).
      withLength(187.5).roadStage

    val stage3:RoadStage = StageBuilder().
      withStart(Location("Bourges")).
      withFinish(Location("Chatel-Guyon")).
      withLength(210).roadStage

    val stage4:IndividualTimeTrial = StageBuilder().
      withStart(Location("La Fouillouse")).
      withFinish(Location("Saint-Etienne")).
      withLength(18.4).individualTimeTrial

    val stage5:RoadStage = StageBuilder().
      withStart(Location("Salon-de-Provence")).
      withFinish(Location("Sisteron")).
      withLength(165).roadStage

    val stage6:RoadStage = StageBuilder().
      withStart(Location("Sisteron")).
      withFinish(Location("Vence")).
      withLength(198).roadStage

    val stage7:RoadStage = StageBuilder().
      withStart(Location("Nice")).
      withFinish(Location("Valdeblore La Colmiane")).
      withLength(175).roadStage

    val stage8:RoadStage = StageBuilder().
      withStart(Location("Nice")).
      withFinish(Location("Nice")).
      withLength(110).roadStage

    StageRaceEditionBuilder(ParisNice, LocalDateTime.of(2018,3,4,0,0)).
      withRoadStage(stage1).
      withRoadStage(stage2).
      withRoadStage(stage3).
      withIndividualTimeTrial(stage4).
      withRoadStage(stage5).
      withRoadStage(stage6).
      withRoadStage(stage7).
      withRoadStage(stage8).build
  }
}
