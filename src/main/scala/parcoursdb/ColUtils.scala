package parcoursdb

object ColUtils {

  def category_name(c:ColCategory): String = c match {
    case HorsCategory => "HC"
    case Category1    => "Cat. 1"
    case Category2    => "Cat. 2"
    case Category3    => "Cat. 3"
    case Category4    => "Cat. 4"
  }

}
