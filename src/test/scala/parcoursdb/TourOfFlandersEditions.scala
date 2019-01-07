package parcoursdb

import java.time.LocalDate
import TourOfFlandersState._

object TourOfFlandersEditions {

  def ronde2018:TourOfFlandersEdition = {
    val composition = for {
      _ <- pave(name="Lippenhovestraat", km=87, length=1.3)
      _ <- pave(name="Paddestraat", km=89, length=2.3)
      _ <- pave(name="Holleweg", km=142, length=0.35)
      _ <- pave(name="Haaghoek", km=148, length=2)
      _ <- pave(name="Mariaborrestraat", km=225, length=2)
      // Three ascents of Oude-Kwaremont
      _ <- cobbledBerg(km=121, name="Oude-Kwaremont", length=2.2)
      _ <- cobbledBerg(km=211, name="Oude-Kwaremont", length=2.2)
      _ <- cobbledBerg(km=250, name="Oude-Kwaremont", length=2.2)
      // Two ascents of Paterberg
      _ <- cobbledBerg(km=214, name="Paterberg", length=0.36)
      _ <- cobbledBerg(km=253, name="Paterberg", length=0.36)
      // One ascent of everything else
      _ <- asphaltBerg(km=132, name="Kortkeer", length=1)
      _ <- asphaltBerg(km=137, name="Edelare", length=1)
      _ <- cobbledBerg(km=142, name="Wolvenberg", length=1.5)
      _ <- asphaltBerg(km=151, name="Leberg", length=0.95)
      _ <- asphaltBerg(km=155, name="Berendries", length=0.94)
      _ <- asphaltBerg(km=160, name="Tenbosse", length=0.45)
      _ <- asphaltBerg(km=170, name="Muur-Kapelmuur", length=0.75)
      _ <- asphaltBerg(km=189, name="Pottelberg", length=1.5)
      _ <- asphaltBerg(km=195, name="Kanarieberg", length=1)
      _ <- cobbledBerg(km=221, name="Koppenberg", length=0.6)
      _ <- asphaltBerg(km=226, name="Steenbeekdries", length=0.6)
      _ <- cobbledBerg(km=229, name="Taaienberg", length=0.5)
      _ <- cobbledBerg(km=240, name="Kruisberg (Oudestraat)", length=0.45)
      edition <- build
    } yield(edition)
    composition.eval(TourOfFlandersState.init(LocalDate.of(2018,4,1),267))
  }
}
