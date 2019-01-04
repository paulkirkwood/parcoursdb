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
