package parcoursdb

object RaceUtils {

  def name(r:Race): String = r match {
    case OmloopHetNieuwsblad  => "Omloop Het Nieuwsblad"
    case KuurneBrusselsKuurne => "Kuurne-Brussels-Kuurne"
    case StradeBianche        => "Strade Bianche"
    case MilanSanRemo         => "Milan-San Remo"
    case E3Harelbeke          => "E3 Harelbeke"
    case GentWevelgem         => "Gent-Wevelgem"
    case TourOfFlanders       => "Tour of Flanders"
    case ParisRoubaix         => "Paris-Roubaix"
    case AmstelGoldRace       => "Amstel Gold Race"
    case FlecheWallonne       => "Fleche Wallonne"
    case LiegeBastogneLiege   => "Liege-Bastogne-Liege"
    case SanSebastianClassic  => "Clasica de San Sebastian"
    case GrandPrixDePoulay    => "Grand Prix de Poulay"
    case GrandPrixDeQuebec    => "Grand Prix de Quebec"
    case GrandPrixDeMontreal  => "Grand Prix de Montreal"
    case ParisTours           => "Paris-Tours"
    case TourOfLombardy       => "Il Lombardia"
    case ParisNice            => "Paris-Nice"
    case TirrenoAdriatico     => "Tirreno Adriatico"
    case TourDeFrance         => "Le Tour de France"
    case TourOfItaly          => "Giro d'Italia"
    case TourOfSpain          => "Vuelta a Espana"
  }

  def country(r:Race): Country = r match {
    case StradeBianche | MilanSanRemo | TourOfLombardy | TirrenoAdriatico | TourOfItaly => Italy
    case ParisRoubaix | GrandPrixDePoulay | ParisTours | ParisNice | TourDeFrance => France
    case AmstelGoldRace => Netherlands
    case SanSebastianClassic | TourOfSpain => Spain
    case GrandPrixDeQuebec | GrandPrixDeMontreal => Canada
    case _ => Belgium
  }

  def nicknames(r:Race): List[String] = r match {
    case MilanSanRemo => List[String]( "La Primavera" )
    case TourOfFlanders => List[String]("Ronde")
    case ParisRoubaix => List[String]("L'Enfer du Nord", "La Pascale", "Queen of the Classics" )
    case LiegeBastogneLiege => List[String]("La Doyenne")
    case ParisTours => List[String]("The Sprinter's Classic")
    case TourOfLombardy => List[String]("The race of falling leaves")
    case ParisNice => List[String]("The race to the Sun")
    case TirrenoAdriatico => List[String]("The race of the two seas")
    case TourDeFrance => List[String]("Le Grande Boucle")
    case _ => List[String]()
  }
}
