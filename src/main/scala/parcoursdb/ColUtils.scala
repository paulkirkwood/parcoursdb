package parcoursdb

object ColUtils {

  def category_name(c:Col): String = c match {
    case hc: HorsCategoryCol  => "HC"
    case c1: CategoryOneCol   => "Cat. 1"
    case c2: CategoryTwoCol   => "Cat. 2"
    case c3: CategoryThreeCol => "Cat. 3"
    case c4: CategoryFourCol  => "Cat. 4"
    case uc: UncategorisedCol => ""
  }

}
