package parcoursdb

import java.time.LocalDate
import ParisRoubaixState._

object ParisRoubaixEditions {

  implicit val country:Country = France

  def roubaix2017:ParisRoubaixEdition = {
    val composition = for {
      _ <- threeStarPave(km=97, name="Troisvilles à Inchy", length=2.2)
      _ <- threeStarPave(km=103.5, name="Viesly à Quiévy", length=1.8)
      _ <- fourStarPave(km=106, name="Quiévy à Saint Python", length=3.7)
      _ <- threeStarPave(km=112.5, name="Viesly à Biastre", length=3)
      _ <- twoStarPave(km=116, name="Biastre à Solesmes", length=0.8)
      _ <- threeStarPave(km=124.5, name="Vertain à Saint-Martin-sur-Ecaillon", length=2.3)
      _ <- threeStarPave(km=134.5, name="Verchain-Maugré à Quérénaing", length=1.6)
      _ <- threeStarPave(km=137.5, name="Quérénaing à Maing", length=2.5)
      _ <- threeStarPave(km=140.5, name="Maing à Monchaux-sur-Ecaillon", length=1.6)
      _ <- fourStarPave(km=153.5, name="Haveluy à Wallers", length=2.5)
      _ <- fiveStarPave(km=161.5, name="Trouée d'Arenberg", length=2.4)
      _ <- threeStarPave(km=168, name="Wallers à Hélesmes", length=1.6)
      _ <- fourStarPave(km=174.5, name="Hornaing à Wandignies", length=3.7)
      _ <- threeStarPave(km=182, name="Warlaing à Brillion", length=2.4)
      _ <- fourStarPave(km=185.5, name="Tilloy à Sars-et-Rosières", length=2.4)
      _ <- threeStarPave(km=192, name="Beuvry-la-Forêt à Orchies", length=1.4)
      _ <- threeStarPave(km=197, name="Orchies", length=1.7)
      _ <- fourStarPave(km=203, name="Auchy-lez-Orchies à Bersée", length=2.7)
      _ <- fiveStarPave(km=208.5, name="Mons-en-Pévèle", length=3)
      _ <- twoStarPave(km=214.5, name="Mérignies à Avelin", length=0.7)
      _ <- threeStarPave(km=218, name="Pont-Thibault à Ennevelin", length=1.4)
      _ <- twoStarPave(km=224, name="Templeuve", length=0.5)
      _ <- threeStarPave(km=230.5, name="Cysoing à Bourghelles", length=1.3)
      _ <- threeStarPave(km=233, name="Bourghelles à Wannehain", length=1.1)
      _ <- fourStarPave(km=237.5, name="Camphin-en-Pévèle", length=1.8)
      _ <- fiveStarPave(km=240, name="Carrefour de l'Arbre", length=2.1)
      _ <- twoStarPave(km=242.5, name="Grusson", length=1.1)
      _ <- threeStarPave(km=249, name="Willems à Hem", length=1.4)
      _ <- oneStarPave(km=256, name="Roubaix", length=0.3)
      edition <- build
    } yield(edition)
    composition.eval(ParisRoubaixState.init(LocalDate.of(2017,4,9),257))
  }

  def roubaix2018:ParisRoubaixEdition = {
    val composition = for {
      _ <- pave(name="Troisvilles", km=93.5, length=2.2, rating="***")
      _ <- pave(name="Briastre", km=100, length=3, rating="***")
      _ <- pave(name="Saint-Python", km=109, length=1.5, rating="***")
      _ <- pave(name="Quiévy", km=111.5, length=3.7, rating="****")
      _ <- pave(name="Saint-Vaast", km=119, length=1.5, rating="***")
      _ <- pave(name="Verchain-Maugré", km=130, length=1.5, rating="***")
      _ <- pave(name="Quérénaing", km=134.5, length=1.6, rating="***") 
      _ <- pave(name="Maing", km=137.5, length=2.5, rating="***")
      _ <- pave(name="Monchaux-sur-Ecaillon", km=140.5, length=1.6, rating="***")
      _ <- pave(name="Haveluy", km=153.5, length=2.5, rating="****")
      _ <- pave(name="Trouée d'Arenberg", km=162, length=2.4, rating="*****")
      _ <- pave(name="Hellesmes, dit Pont-Gibus", km=168, length=1.6, rating="***")
      _ <- pave(name="Wandignies", km=174.5, length=3.7, rating="****")
      _ <- pave(name="Brillon", km=182, length=2.4, rating="***")
      _ <- pave(name="Sars-et-Rosières", km=185.5, length=2.4, rating="****")
      _ <- pave(name="Beuvry-la-Forêt", km=192, length=1.4, rating="***")
      _ <- pave(name="Orchies", km=197, length=1.7, rating="***")
      _ <- pave(name="Bersée", km=203, length=2.7, rating="****")
      _ <- pave(name="Mons-en-Pévèle", km=208.5, length=3, rating="*****")
      _ <- pave(name="Mérignies à Avelin", km=214.5, length=0.7, rating="**")
      _ <- pave(name="Pont-Thibaut", km=218, length=1.4, rating="***")
      _ <- enableMultiplePavePerSector
      _ <- pave(name="Templeuve-L'Epinette", km=223.5, length=0.2, rating="*")
      _ <- disableMultiplePavePerSector
      _ <- pave(name="Templeuve, Moulin de Vertain", km=224, length=0.5, rating="**")
      _ <- pave(name="Cysoing à Bourghelles", km=230.5, length=1.3, rating="***")
      _ <- pave(name="Bourghelles à Wannehain", km=233, length=1.1, rating="***")
      _ <- pave(name="Camphin-en-Pévèle", km=237.5, length=1.8, rating="*****")
      _ <- pave(name="Carrefour de l'Arbre", km=240, length=2.1, rating="*****")
      _ <- pave(name="Grouson", km=242.5, length=1.1, rating="**")
      _ <- pave(name="Hem", km=249, length=1.4, rating="***")
      _ <- pave(name="Roubaix, espace Charles-Crupelandt", km=256, length=0.3, rating="*")
      edition <- build
    } yield(edition)
    composition.eval(ParisRoubaixState.init(LocalDate.of(2018,4,8),257))
  }
}
