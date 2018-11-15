package parcoursdb

import org.joda.time.DateTime._

sealed trait StageCategory
case object Prologue extends StageCategory
case object RoadStage extends StageCategory
case object TeamTimeTrial extends StageCategory
case object IndividualTimeTrial extends StageCategory
case object MountainTimeTrial extends StageCategory
case object RestDay extends StageCategory

case class Stage(
  category : StageCategory,
     start : Location,
    finish : Option[Location],
    length : Option[Double],
      cols : Set[Col]) {

  def isSummitFinish:Boolean = {
    val climbs:List[Col] = cols.toList.sortWith(_.summitKM < _.summitKM)
    lastClimb(climbs)
  }

  private def lastClimb(xs: List[Col]): Boolean = xs match {
    case head :: Nil  => head.summitKM == length.getOrElse(0)
    case head :: tail => lastClimb(tail)
    case _ => false
  }

} 

trait StageBuilderMethods {
  type CategoryAdded  <: TBoolean
  type StartAdded     <: TBoolean
  type FinishAdded    <: TBoolean
  type LengthAdded    <: TBoolean
}

class StageBuilder[M <: StageBuilderMethods](
         category : Option[StageCategory] = None,
            start : Option[Location] = None,
           finish : Option[Location] = None,
           length : Option[Double] = None,
             cols : Set[Col] = Set.empty) {

  def withCategory(c:StageCategory)(implicit ev: M#CategoryAdded =:= TFalse) = {
    new StageBuilder[M {type CategoryAdded = TTrue}](Some(c), start, finish, length, cols)
  }

  def withStart(s:Location)(implicit ev: M#StartAdded =:= TFalse) = {
    new StageBuilder[M {type StartAdded = TTrue}](category, Some(s), finish, length, cols)
  }

  def withFinish(f:Location)(implicit ev: M#FinishAdded =:= TFalse) = {
    new StageBuilder[M {type FinishAdded = TTrue}](category, start, Some(f), length, cols)
  }

  def withLength(l:Double)(implicit ev: M#LengthAdded =:= TFalse) = {
    new StageBuilder[M {type LengthAdded = TTrue}](category, start, finish, Some(l), cols)
  }

  def withCol(c:Col) = {
    new StageBuilder[StageBuilderMethods { type CategoryAdded = M#CategoryAdded
                                           type StartAdded = M#StartAdded
                                           type FinishAdded = M#FinishAdded
                                           type LengthAdded = M#LengthAdded }
    ](category, start, finish, length, cols + c)
  }

  def withCols(c:Set[Col]) = {
    new StageBuilder[StageBuilderMethods { type CategoryAdded = M#CategoryAdded
                                           type StartAdded = M#StartAdded
                                           type FinishAdded = M#FinishAdded
                                           type LengthAdded = M#LengthAdded }
    ](category, start, finish, length, cols ++ c)
  }

  def ~[X](f:StageBuilder[M] => X):X = f(this)

  def build()(implicit ev1: M#StartAdded =:= TTrue,
                       ev2: M#CategoryAdded =:= TTrue): Stage = {
    Stage(category.get,start.get,finish,length,cols)
  }
}

object StageBuilder {
  type EmptyBuilder = StageBuilderMethods {
    type CategoryAdded = TFalse
    type StartAdded = TFalse
    type FinishAdded = TFalse
    type LengthAdded = TFalse
  }

  def apply(): StageBuilder[StageBuilder.EmptyBuilder] = {
    new StageBuilder[EmptyBuilder](None,None,None,None,Set.empty)
  }
}
