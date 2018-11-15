package parcoursdb

sealed abstract class ColCategory
case object HorsCategory extends ColCategory
case object Category1 extends ColCategory
case object Category2 extends ColCategory
case object Category3 extends ColCategory
case object Category4 extends ColCategory

trait ColBuilderMethods {
  type NameAdded <: TBoolean
  type CategoryAdded <: TBoolean
  type HeightAdded <: TBoolean
  type LengthAdded <: TBoolean
  type SummitKMAdded <: TBoolean
  type AverageGradientAdded <: TBoolean
  type MaximumGradientAdded <: TBoolean
}

case class Col(
             name : String,
         category : ColCategory,
           height : Double,
         summitKM : Double,
           length : Option[Double],
  averageGradient : Option[Double],
  maximumGradient : Option[Double])

class ColBuilder[M <: ColBuilderMethods](
             name : Option[String] = None,
         category : Option[ColCategory] = None,
           height : Option[Double] = None,
         summitKM : Option[Double] = None,
           length : Option[Double] = None,
  averageGradient : Option[Double] = None,
  maximumGradient : Option[Double] = None) {

  def withName(n: String)(implicit ev: M#NameAdded =:= TFalse) = {
    new ColBuilder[M {type NameAdded = TTrue}](Some(n), category, height, summitKM, length, averageGradient, maximumGradient)
  }

  def withCategory(c: ColCategory)(implicit ev: M#CategoryAdded =:= TFalse) = {
    new ColBuilder[M {type CategoryAdded = TTrue}](name, Some(c), height, summitKM, length, averageGradient, maximumGradient)
  }
  def withHeight(h: Double)(implicit ev: M#HeightAdded =:= TFalse) = {
    new ColBuilder[M {type HeightAdded = TTrue}](name, category, Some(h), summitKM, length, averageGradient, maximumGradient)
  }

  def withSummitKM(km: Double)(implicit ev: M#SummitKMAdded =:= TFalse) = {
    new ColBuilder[M {type SummitKMAdded = TTrue}](name, category, height, Some(km), length, averageGradient, maximumGradient)
  }

  def withLength(l: Double)(implicit ev: M#LengthAdded =:= TFalse) = {
    new ColBuilder[M {type LengthAdded = TTrue}](name, category, height, summitKM, Some(l), averageGradient, maximumGradient)
  }

  def withAverageGradient(g: Double)(implicit ev: M#AverageGradientAdded =:= TFalse) = {
    new ColBuilder[M {type AverageGradientLengthAdded = TTrue}](name, category, height, summitKM, length, Some(g), maximumGradient)
  }

  def withMaximumGradient(g: Double)(implicit ev: M#MaximumGradientAdded =:= TFalse) = {
    new ColBuilder[M {type MaximumGradientLengthAdded = TTrue}](name, category, height, summitKM, length, averageGradient, Some(g))
  }

  def build()(implicit ev1: M#NameAdded =:= TTrue,
                       ev2: M#CategoryAdded =:= TTrue,
                       ev3: M#HeightAdded =:= TTrue,
                       ev4: M#SummitKMAdded =:= TTrue): Col = {
    Col(name.get,category.get,height.get,summitKM.get,length,averageGradient,maximumGradient)
  }

}

object ColBuilder {
  type UnusedBuilder = ColBuilderMethods {
    type NameAdded = TFalse
    type CategoryAdded = TFalse
    type HeightAdded = TFalse
    type SummitKMAdded = TFalse
    type LengthAdded = TFalse
    type AverageGradientAdded = TFalse
    type MaximumGradientAdded = TFalse
  }

  type CategoryAddedBuilder = ColBuilderMethods {
    type NameAdded = TFalse
    type CategoryAdded = TTrue
    type HeightAdded = TFalse
    type SummitKMAdded = TFalse
    type LengthAdded = TFalse
    type AverageGradientAdded = TFalse
    type MaximumGradientAdded = TFalse
  }

  def apply(): ColBuilder[ColBuilder.UnusedBuilder] = {
    new ColBuilder[UnusedBuilder](None,None,None,None,None,None,None)
  }

  def apply(c:String): ColBuilder[ColBuilder.CategoryAddedBuilder] = {
    c match {
      case "HC" => new ColBuilder[CategoryAddedBuilder](None,Some(HorsCategory),None,None,None,None,None)
      case "1" => new ColBuilder[CategoryAddedBuilder](None,Some(Category1),None,None,None,None,None)
      case "2" => new ColBuilder[CategoryAddedBuilder](None,Some(Category2),None,None,None,None,None)
      case "3" => new ColBuilder[CategoryAddedBuilder](None,Some(Category3),None,None,None,None,None)
      case _ => new ColBuilder[CategoryAddedBuilder](None,Some(Category4),None,None,None,None,None)
    }
  }
}
