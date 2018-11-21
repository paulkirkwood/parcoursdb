package parcoursdb

object ColBuilder {
  def apply() = new ColBuilder[Zero,Zero,Zero,Zero,Zero,Zero]()
}

sealed trait Col {
  def name: String
  def height: Double
  def summitKM: Double
}

case class HorsCategoryCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class CategoryOneCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class CategoryTwoCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class CategoryThreeCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class CategoryFourCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class UncategorisedCol(name:String,
                           height:Double,
                           summitKM:Double,
                           length:Option[Double],
                           averageGradient:Option[Double],
                           maximumGradient:Option[Double]) extends Col

case class ColBuilder[WithNameTracking <: Count,
                      WithHeightTracking <: Count,
                      WithSummitKMTracking <: Count,
                      WithLengthTracking <: Count,
                      WithAverageGradientTracking <: Count,
                      WithMaximumGradientTracking <: Count](
  name: Option[String] = None,
  height: Option[Double] = None,
  summitKM: Option[Double] = None,
  length: Option[Double] = None,
  averageGradient: Option[Double] = None,
  maximumGradient: Option[Double] = None) {

  type IsOnce[T] = =:=[T, Once]
  type IsZero[T] = =:=[T, Zero]
 
  def withName[N <: WithNameTracking : IsZero](n: String) = {
    copy[Once,
         WithHeightTracking,
         WithSummitKMTracking,
         WithLengthTracking,
         WithAverageGradientTracking,
         WithMaximumGradientTracking](name = Some(n))
  }

  def withHeight[H <: WithHeightTracking : IsZero](h: Double) = {
    copy[WithNameTracking,
         Once,
         WithSummitKMTracking,
         WithLengthTracking,
         WithAverageGradientTracking,
         WithMaximumGradientTracking](height = Some(h))
  }

  def withSummitKM[S <: WithSummitKMTracking : IsZero](s: Double) = {
    copy[WithNameTracking,
         WithHeightTracking,
         Once,
         WithLengthTracking,
         WithAverageGradientTracking,
         WithMaximumGradientTracking](summitKM = Some(s))
  }

  def withLength[L <: WithLengthTracking : IsZero](l: Double) = {
    copy[WithNameTracking,
         WithHeightTracking,
         WithSummitKMTracking,
         Once,
         WithAverageGradientTracking,
         WithMaximumGradientTracking](length = Some(l))
  }

  def withAverageGradient[A <: WithAverageGradientTracking : IsZero](a: Double) = {
    copy[WithNameTracking,
         WithHeightTracking,
         WithSummitKMTracking,
         WithLengthTracking,
         Once,
         WithMaximumGradientTracking](averageGradient = Some(a))
  }

  def withMaximumGradient[A <: WithMaximumGradientTracking : IsZero](m: Double) = {
    copy[WithNameTracking,
         WithHeightTracking,
         WithSummitKMTracking,
         WithLengthTracking,
         WithAverageGradientTracking,
         Once](maximumGradient = Some(m))
  }

  def hc[N <: WithNameTracking : IsOnce,
         H <: WithHeightTracking : IsOnce,
         S <: WithSummitKMTracking : IsOnce] = {
    HorsCategoryCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

  def c1[N <: WithNameTracking : IsOnce,
         H <: WithHeightTracking : IsOnce,
         S <: WithSummitKMTracking : IsOnce] = {
    CategoryOneCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

  def c2[N <: WithNameTracking : IsOnce,
         H <: WithHeightTracking : IsOnce,
         S <: WithSummitKMTracking : IsOnce] = {
    CategoryTwoCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

  def c3[N <: WithNameTracking : IsOnce,
         H <: WithHeightTracking : IsOnce,
         S <: WithSummitKMTracking : IsOnce] = {
    CategoryThreeCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

  def c4[N <: WithNameTracking : IsOnce,
         H <: WithHeightTracking : IsOnce,
         S <: WithSummitKMTracking : IsOnce] = {
    CategoryFourCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

  def uncategorised[N <: WithNameTracking : IsOnce,
                    H <: WithHeightTracking : IsOnce,
                    S <: WithSummitKMTracking : IsOnce] = {
    UncategorisedCol(name.get, height.get, summitKM.get, length, averageGradient, maximumGradient)
  }

}
