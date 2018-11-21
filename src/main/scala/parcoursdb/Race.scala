package parcoursdb

sealed trait Race
sealed trait OneDayRace extends Race

// Season openers
case object OmloopHetNieuwsblad extends OneDayRace
case object KuurneBrusselsKuurne extends OneDayRace

sealed trait Classic extends OneDayRace
sealed trait SpringClassic extends Classic

case object StradeBianche extends SpringClassic
case object MilanSanRemo extends SpringClassic

sealed trait CobbledClassic extends SpringClassic
case object E3Harelbeke extends CobbledClassic
case object GentWevelgem extends CobbledClassic
case object TourOfFlanders extends CobbledClassic
case object ParisRoubaix extends CobbledClassic

sealed trait ArdennesClassic extends SpringClassic
case object AmstelGoldRace extends ArdennesClassic
case object FlecheWallonne extends ArdennesClassic
case object LiegeBastogneLiege extends ArdennesClassic

sealed trait SummerClassic extends Classic
case object SanSebastianClassic extends SummerClassic
case object GrandPrixDePoulay extends SummerClassic
case object GrandPrixDeQuebec extends SummerClassic
case object GrandPrixDeMontreal extends SummerClassic

sealed trait AutumnClassic extends Classic
case object ParisTours extends AutumnClassic
case object TourOfLombardy extends AutumnClassic

sealed trait StageRace extends Race
case object ParisNice extends StageRace
case object TirrenoAdriatico extends StageRace
case object CriteriumDuDauphine extends StageRace

sealed trait GrandTour extends StageRace
case object TourDeFrance extends GrandTour
case object TourOfItaly extends GrandTour
case object TourOfSpain extends GrandTour
