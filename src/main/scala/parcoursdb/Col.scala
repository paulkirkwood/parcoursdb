package parcoursdb

sealed trait ColCategory
case object HC extends ColCategory
case object C1 extends ColCategory
case object C2 extends ColCategory
case object C3 extends ColCategory
case object C4 extends ColCategory
case object Uncategorised extends ColCategory

case class Col(name:String,
               category: ColCategory,
               height:Double,
               summitKM:Double,
               length:Option[Double],
               averageGradient:Option[Double],
               maximumGradient:Option[Double])

sealed trait ColBuilderMethods {
  type TName <: TBoolean
  type TCategory <: TBoolean
  type THeight <: TBoolean
  type TSummitKM <: TBoolean
  type TLength <: TBoolean
  type TAverageGradient <: TBoolean
  type TMaximumGradient <: TBoolean
  type TAllowHC <: TBoolean
  type TAllowUncategorised <: TBoolean
}

class ColBuilder[M <: ColBuilderMethods](
  name: Option[String] = None,
  category: Option[ColCategory] = None,
  height: Option[Double] = None,
  summitKM: Option[Double] = None,
  length: Option[Double] = None,
  averageGradient: Option[Double] = None,
  maximumGradient: Option[Double] = None) {

  type && [A <: TBoolean, B <: TBoolean] = A#If[B, TFalse]

  def withName(name: String)(implicit ev: M#TName =:= TFalse) = {
    new ColBuilder[M {type TName = TTrue}](Some(name),category,height,summitKM,length,averageGradient,maximumGradient)
  }

  def withCategory(category: ColCategory)(implicit ev: M#TCategory =:= TFalse) = {
    new ColBuilder[M {type TCategory = TTrue}](name,Some(category),height,summitKM,length,averageGradient,maximumGradient)
  }

  def withHeight(height: Double)(implicit ev: M#THeight =:= TFalse) = {
    new ColBuilder[M {type THeight = TTrue}](name,category,Some(height),summitKM,length,averageGradient,maximumGradient)
  }

  def withSummitKM(summitKM: Double)(implicit ev: M#TSummitKM =:= TFalse) = {
    new ColBuilder[M {type TSummitKM = TTrue}](name,category,height,Some(summitKM),length,averageGradient,maximumGradient)
  }

  def withLength(length: Double)(implicit ev: M#TLength =:= TFalse) = {
    new ColBuilder[M {type TLength = TTrue}](name,category,height,summitKM,Some(length),averageGradient,maximumGradient)
  }

  def withAverageGradient(averageGradient: Double)(implicit ev: M#TAverageGradient =:= TFalse) = {
    new ColBuilder[M {type TAverageGradient = TTrue}](name,category,height,summitKM,length,Some(averageGradient),maximumGradient)
  }

  def withMaximumGradient(maximumGradient: Double)(implicit ev: M#TMaximumGradient =:= TFalse) = {
    new ColBuilder[M {type TMaximumGradient = TTrue}](name,category,height,summitKM,length,averageGradient,Some(maximumGradient))
  }

  def build()(implicit ev:M#TName && M#TCategory && M#THeight && M#TSummitKM =:= TTrue):Col = {
    Col(name.get, category.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

}

object ColBuilder {
  def apply(race:StageRace) = race match {
    case TourDeFrance | CriteriumDuDauphine => 
      new ColBuilder[ColBuilderMethods { type TName               = TFalse
                                         type TCategory           = TFalse
                                         type THeight             = TFalse
                                         type TSummitKM           = TFalse
                                         type TLength             = TFalse
                                         type TAverageGradient    = TFalse
                                         type TMaximumGradient    = TFalse
                                         type TAllowHC            = TTrue
                                         type TAllowUncategorised = TFalse }
      ]()
    case TourOfItaly | TourOfSpain | ParisNice =>
      new ColBuilder[ColBuilderMethods { type TName               = TFalse
                                         type TCategory           = TFalse
                                         type THeight             = TFalse
                                         type TSummitKM           = TFalse
                                         type TLength             = TFalse
                                         type TAverageGradient    = TFalse
                                         type TMaximumGradient    = TFalse
                                         type TAllowHC            = TFalse
                                         type TAllowUncategorised = TFalse }
      ]()
    case _ =>
      new ColBuilder[ColBuilderMethods { type TName               = TFalse
                                         type TCategory           = TFalse
                                         type THeight             = TFalse
                                         type TSummitKM           = TFalse
                                         type TLength             = TFalse
                                         type TAverageGradient    = TFalse
                                         type TMaximumGradient    = TFalse
                                         type TAllowHC            = TFalse
                                         type TAllowUncategorised = TTrue }
      ]()
  }
}
