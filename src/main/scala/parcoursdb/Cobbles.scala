package parcoursdb

import java.time.LocalDate
import scalaz._
import Scalaz._
import TraversableUtil._

sealed trait PaveRating
case object FiveStarRating extends PaveRating
case object FourStarRating extends PaveRating
case object ThreeStarRating extends PaveRating
case object TwoStarRating extends PaveRating
case object OneStarRating extends PaveRating

sealed trait Pave {
  def id:Int
  def name:String
  def length:Double
  def km:Double
}

case class RondePave(id:Int, name:String, length:Double, km:Double) extends Pave
case class ParisRoubaixPave(id:Int, name:String, length:Double, km:Double, rating:PaveRating) extends Pave

object PaveUtils {
  def description(p:Pave, raceLength:Double) : String = p match {
    case p:ParisRoubaixPave => 
      val stars = p.rating match {
        case FiveStarRating  => "*****"
        case FourStarRating  => "****"
        case ThreeStarRating => "***"
        case TwoStarRating   => "**"
        case OneStarRating   => "*"
      }
      s"${p.id},${raceLength - p.km} km,${p.name},${p.length} km,${stars}"
    case _ => s"${p.id},${raceLength - p.km} km,${p.name},${p.length} km"
  }
}

case class ParisRoubaixEdition(date:LocalDate,
                               start:Location,
                               finish:Location,
                               length:Double,
                               pave:Seq[ParisRoubaixPave]) extends RaceEdition {

  def race = ParisRoubaix
  def numberOfPaveSectors : Int = pave.map(_.id).distinct.size
  def totalPaveKMs : Double = pave.map(_.length).sum
  def paveSectors : List[String] = pave.map(PaveUtils.description(_,length)).toList
}

case class ParisRoubaixState(date:LocalDate,
                             length:Double,
                             id:Int,
                             multiplePavePerSector:Boolean,
                             pave:Seq[ParisRoubaixPave])

object ParisRoubaixState {

  def init(date:LocalDate, raceLength:Double) = {
    ParisRoubaixState(date=date,
                      length=raceLength,
                      id= -1,
                      multiplePavePerSector=false,
                      pave=Seq[ParisRoubaixPave]())
  }

  def fiveStarPave(name:String, length:Double, km:Double) : State[ParisRoubaixState, Unit] = {
    pave(name=name, length=length, km=km, rating=FiveStarRating)
  }

  def fourStarPave(name:String, length:Double, km:Double) : State[ParisRoubaixState, Unit] = {
    pave(name=name, length=length, km=km, rating=FourStarRating)
  }

  def threeStarPave(name:String, length:Double, km:Double) : State[ParisRoubaixState, Unit] = {
    pave(name=name, length=length, km=km, rating=ThreeStarRating)
  }

  def twoStarPave(name:String, length:Double, km:Double) : State[ParisRoubaixState, Unit] = {
    pave(name=name, length=length, km=km, rating=TwoStarRating)
  }

  def oneStarPave(name:String, length:Double, km:Double) : State[ParisRoubaixState, Unit] = {
    pave(name=name, length=length, km=km, rating=OneStarRating)
  }

  def pave(name:String, length:Double, rating:String, km:Double) : State[ParisRoubaixState, Unit] = {
    val obj = rating match {
      case "*****" => FiveStarRating
      case "****"  => FourStarRating
      case "***"   => ThreeStarRating
      case "**"    => TwoStarRating
      case "*"     => OneStarRating
    }
    pave(name=name, length=length, km=km, rating=obj)
  }

  def pave(name:String, length:Double, rating:PaveRating, km:Double) : State[ParisRoubaixState, Unit] = {
    for {
      s <- get[ParisRoubaixState]
      pave = ParisRoubaixPave(id=s.id, name=name, length=length, rating=rating, km=km)
      nextID = if (s.multiplePavePerSector == true) s.id  else s.id - 1
      producedValue <- put(s.copy(id=nextID, pave=s.pave :+ pave))
    } yield producedValue
  }

  def enableMultiplePavePerSector : State[ParisRoubaixState, Unit] = {
    for {
      s <- get[ParisRoubaixState]
      producedValue <- put(s.copy(multiplePavePerSector=true))
    } yield producedValue
  }

  def disableMultiplePavePerSector : State[ParisRoubaixState, Unit] = {
    for {
      s <- get[ParisRoubaixState]
      producedValue <- put(s.copy(multiplePavePerSector=false))
    } yield producedValue
  }

  def build : State[ParisRoubaixState, ParisRoubaixEdition] = {
    for {
      s <- get[ParisRoubaixState]
      start = s.date.getYear match {
        case year if 1896 to 1897 contains year => Location("Porte Maillot, Paris")(Belgium)
        case year if 1898 to 1899 contains year => Location("Chatou, Paris")(Belgium)
        case year if 1900 to 1900 contains year => Location("Saint-Germain")(Belgium)
        case year if 1901 to 1901 contains year => Location("Porte Maillot, Paris")(Belgium)
        case year if 1902 to 1913 contains year => Location("Chatou, Paris")(Belgium)
        case year if 1914 to 1914 contains year => Location("Suresnes, Paris")(Belgium)
        case year if 1919 to 1928 contains year => Location("Suresnes, Paris")(Belgium)
        case year if 1929 to 1937 contains year => Location("Porte Maillot, Paris")(Belgium)
        case year if 1938 to 1938 contains year => Location("Argenteuil")(Belgium)
        case year if 1939 to 1939 contains year => Location("Porte Maillot, Paris")(Belgium)
        case year if 1943 to 1965 contains year => Location("Saint-Denis, Paris")(Belgium)
        case year if 1966 to 1976 contains year => Location("Chantilly")(Belgium)
        case _ => Location("Compiegne")(Belgium)
      }
      finish = Location("Roubaix")(Belgium)

      // Renumber the sector so that they countdown towards the finish
      sectors = s.pave.sortWith(_.km < _.km)
      numberOfSectors = s.pave.map(_.id).distinct.size
      countdown = sectors.map(p => p.copy(id=p.id + numberOfSectors + 1))
      edition = ParisRoubaixEdition(s.date, start, finish, s.length, countdown)
    } yield edition
  }
}

sealed trait Pavement
case object Cobbles extends Pavement
case object Asphalt extends Pavement

case class Berg(name:String, pavement:Pavement, length:Double, km:Double)
case class IndexedBerg(id:Int, name:String, pavement:Pavement, length:Double, km:Double)

object IndexedBerg {
  def description(b:IndexedBerg, length:Double) : String = {
    s"${b.id},${length - b.km} km,${b.name},${b.length} km,${b.pavement}"
  }
}

case class TourOfFlandersEdition(date:LocalDate,
                                 start:Location,
                                 finish:Location,
                                 length:Double,
                                 pave:Seq[RondePave],
                                 bergs:Seq[IndexedBerg]) extends RaceEdition {

  def race = TourOfFlanders
  def numberOfPaveSectors : Int = pave.size
  def totalPaveKMs : Double = pave.map(_.length).sum
  def paveSectors : List[String] = pave.map(PaveUtils.description(_,length)).toList

  def numberOfClimbs : Int = bergs.size
  def climbs : List[String] = bergs.map(IndexedBerg.description(_,length)).toList
}

case class TourOfFlandersState(date:LocalDate,
                      length:Double,
                      paveID:Int,
                      pave:Seq[RondePave],
                      bergs:Set[Berg])

object TourOfFlandersState {

  implicit val country:Country = Belgium

  def init(date:LocalDate, raceLength:Double) = {
    TourOfFlandersState(date=date,
               length=raceLength,
               paveID=1,
               pave=Seq[RondePave](),
               bergs=Set.empty[Berg])
  }

  def pave(name:String, length:Double, km:Double) : State[TourOfFlandersState, Unit] = {
    for {
      s <- get[TourOfFlandersState]
      pave = RondePave(id=s.paveID, name=name, length=length, km=km)
      producedValue <- put(s.copy(paveID=s.paveID + 1, pave=s.pave :+ pave))
    } yield producedValue
  }

  def cobbledBerg(name:String, length:Double, km:Double) : State[TourOfFlandersState, Unit] = {
    berg(name=name, pavement=Cobbles, length=length, km=km)
  }

  def asphaltBerg(name:String, length:Double, km:Double) : State[TourOfFlandersState, Unit] = {
    berg(name=name, pavement=Asphalt, length=length, km=km)
  }

  private def berg(name:String, pavement:Pavement, length:Double, km:Double) : State[TourOfFlandersState, Unit] = {
    for {
      s <- get[TourOfFlandersState]
      berg = Berg(name=name, pavement=pavement, length=length, km=km)
      producedValue <- put(s.copy(bergs=s.bergs + berg))
    } yield producedValue
  }

  def build : State[TourOfFlandersState, TourOfFlandersEdition] = {
    val ghent = Location("Ghent")
    val bruges = Location("Bruges")
    val antwerp = Location("Antwerp")
    val meerbeke = Location("Antwerp")
    val oudenaarde = Location("Oudenaarde")
    for {
      s <- get[TourOfFlandersState]
      start = s.date.getYear match {
        case year if 1913 to 1914 contains year => ghent
        case year if 1919 to 1942 contains year => ghent
        case year if 1942 to 1976 contains year => ghent
        case year if 1977 to 1997 contains year => ghent
        case year if 1998 to 2016 contains year => bruges
        case _ => antwerp
      }
      finish = s.date.getYear match {
        case year if 1914 to 1914 contains year => Location("Evergem")
        case year if 1919 to 1923 contains year => Location("Gentbrugge")
        case year if 1924 to 1927 contains year => ghent
        case year if 1928 to 1941 contains year => Location("Wetteren")
        case year if 1942 to 1944 contains year => ghent
        case year if 1945 to 1961 contains year => Location("Wetteren")
        case year if 1962 to 1972 contains year => Location("Gentbrugge")
        case year if 1973 to 2011 contains year => meerbeke
        case _ => oudenaarde
      }

      // Sort the climbs
      sorted = s.bergs.toSeq.sortWith(_.km < _.km)
      bergs = sorted.map(doIndexed((i,b) => IndexedBerg(id=i + 1,name=b.name,pavement=b.pavement,length=b.length,km=b.km)))
      edition = TourOfFlandersEdition(s.date, start, finish, s.length, s.pave, bergs)
    } yield edition
  }
}

object TraversableUtil {
    class IndexMemoizingFunction[A, B](f: (Int, A) => B) extends Function1[A, B] {
        private var index = 0
        override def apply(a: A): B = {
            val ret = f(index, a)
            index += 1
            ret
        }
    }

    def doIndexed[A, B](f: (Int, A) => B): A => B = {
        new IndexMemoizingFunction(f)
    }
}
