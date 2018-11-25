package parcoursdb

object ColUtils {

  def category_name(c:ColCategory): String = c match {
    case HC            => "HC"
    case C1            => "Cat. 1"
    case C2            => "Cat. 2"
    case C3            => "Cat. 3"
    case C4            => "Cat. 4"
    case Uncategorised => ""
  }

}
