package parcoursdb

import java.time.LocalDate
import StageRaceState._

object TourDeFranceEditions {

  implicit val country:Country = France

  def tdf1972:StageRaceEdition = {
    val composition = for {
      _ <- prologue("Angers", 7.2)
      _ <- roadStage("Angers", "Saint-Brieuc",235.5)
      _ <- roadStage("Saint-Brieuc", "La Baule",206.5)
      _ <- enableSplitStages 
      _ <- roadStage("Pornichet", "Saint-Jean-de-Monts",161)
      _ <- individualTimeTrial("Merlin-Plage" ,16.2)
      _ <- disableSplitStages 
      _ <- roadStage("Melin-Plage", "Royan",236)
      _ <- enableSplitStages 
      _ <- roadStage("Royan", "Bordeaux",133.5)
      _ <- individualTimeTrial("Bordeaux", 12.7)
      _ <- disableSplitStages 
      _ <- roadStage("Bordeaux", "Bayonne",205)
      _ <- restDay("Bayonne")
      _ <- roadStage("Bayonne", "Pau",220.5)
      _ <- roadStage("Pau", "Luchon",163.5)
      _ <- roadStage("Luchon", "Colombiers",179)
      _ <- roadStage("Castres", "La Grand-Motte",210)
      _ <- roadStage("Carnon-Plage", "Mont Ventoux",207)
      _ <- roadStage("Carpentras", "Orcieres",192)
      _ <- restDay("Orcieres")
      _ <- roadStage("Orcieres", "Briancon",201)
      _ <- enableSplitStages 
      _ <- roadStage("Briancon", "Valloire",51)
      _ <- roadStage("Valloire", "Aix-les-Bains",151)
      _ <- disableSplitStages 
      _ <- roadStage("Aix-les-Bains", "Le Revard",28)
      _ <- roadStage("Aix-les-Bains", "Pontarlier",198.5)
      _ <- roadStage("Pontarlier", "Ballon d'Alsace",213)
      _ <- roadStage("Vesoul", "Auxerre",257.5)
      _ <- roadStage("Auxerre", "Versailles",230)
      _ <- enableSplitStages 
      _ <- individualTimeTrial("Versailles", 42)
      _ <- roadStage("Versailles", "Paris",89)
      _ <- disableSplitStages 
    } yield()
    val result = composition.exec(StageRaceState.init(TourDeFrance,LocalDate.of(1972,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2018:StageRaceEdition = {

    val composition = for {

      // Stage 1 07-07-2018
      _ <- roadStage("Noirmoutier-en-l'Îe", "Fontenay-le-Comte", 201)
      _ <- c4("Cote de Vix", height=30, length=0.7, summitKM=173, averageGradient=4.2)

      // Stage 2 08-07-2018
      _ <- roadStage("Mouilleron-Saint-Germain", "La Roche-sur-Yon", 182.5)
      _ <- c4("Cote de Pouzauges", height=202, length=1, summitKM=28, averageGradient=3.9)
 
      // Stage 3 09-07-2018
      _ <- teamTimeTrial(Location("Cholet"),35.5)
 
      // Stage 4 10-07-2018
      _ <- roadStage("La Baule", "Sarzeau", 195 )
      _ <- c4("Cote de Saint-Jean-la-Poterie", height=79, length=0.8, summitKM=135.5, averageGradient=7.8)
 
      // Stage 5 11-07-2018
      _ <- roadStage("Lorient", "Quimper", 204.5)
      _ <- c4("Cote de Kaliforn", height=209, length=1.7, summitKM=106, averageGradient=7.1)
      _ <- c4("Cote de Trimen", height=223, length=1.6, summitKM=113, averageGradient=5.6)
      _ <- c3("Cote de la Roche du Feu", height=221, length=1.9, summitKM=140.5, averageGradient=6.6)
      _ <- c3("Cote de Menez Quelerc'h", height=210, length=3, summitKM=159.5, averageGradient=6.2)
      _ <- c3("Cote de la montagne de Locranan", height=233, length=2.2, summitKM=184.5, averageGradient=5.9)
 
      // Stage 6 12-07-2018
      _ <- roadStage("Brest", "Mûr-de-Bretagne", 181)
      _ <- c3("Cote de Ploudiry", summitKM=44, height=128, length=1.5, averageGradient=7)
      _ <- c4("Cote de Roc'h Trevezel", summitKM=68.5, height=340, length=2.5, averageGradient=3.5)
      _ <- c3("Mur-de-Bretagne", height=293, summitKM=165, length=2, averageGradient=6.9)
      _ <- c3("Mur-de-Bretagne", height=293, summitKM=181, length=2, averageGradient=6.9)
 
      // Stage 7 13-07-2018
      _ <- roadStage("Fougres", "Chartres", 231)
      _ <- c4("Cote du Buisson de Perseigne", summitKM=120, height=235, length=1.5, averageGradient=6.9)
 
      // Stage 8 14-07-2018
      _ <- roadStage("Dreux", "Amiens", 181 )
      _ <- c4("Cote de Pacy-sur-Eure", summitKM=35, height=135, length=2, averageGradient=4.3)
      _ <- c4("Cote de Feuquerolles", height=134, summitKM=71.5, length=2.3, averageGradient=4.3)
 
      // Stage 9 15-07-2018
      _ <- roadStage("Arras", "Roubaix", 156.5)

      // Rest day 16-07-2018
      _ <- restDay("Annecy")

      // Stage 10 17-07-2018
      _ <- roadStage("Annecy", "Le Grand-Bornard", 158.5)
      _ <- c4("Col de Bluffy", summitKM=19, height=622, length=1.5, averageGradient=5.6)
      _ <- c1("Col de la Croix Fry", summitKM=43, height=1477, length=11.3, averageGradient=7)
      _ <- hc("Montee du plateau des Glieres", summitKM=68.5, height=1390, length=6, averageGradient=11.2)
      _ <- c1("Col de Romme", height=1297, length=8.8, summitKM=130, averageGradient=8.9)
      _ <- c1("Col de la Colombiere", height=1618, length=7.5, summitKM=144, averageGradient=8.5)
 
      // Stage 11 18-07-2018
      _ <- roadStage("Albertville", "La Rosiere", 108.5)
      _ <- hc("Montee de Bisanne", summitKM=26, height=1723, length=12.4, averageGradient=8.2)
      _ <- hc("Col du Pre", height=1748, summitKM=57.5, length=12.6, averageGradient=7.7)
      _ <- c2("Cormet de Roselend", height=1968, summitKM=70, length=5.7, averageGradient=6.5)
      _ <- c1("La Rosiere", height=1855, length=17.6, summitKM=108.5, averageGradient=5.8)
 
      // Stage 12 19-07-2018
      _ <- roadStage("Bourg-Saint-Maurice", "L'Alpe d'Huez", 175.5)
      _ <- hc("Col de la Madeleine", summitKM=53.5, height=2000, length=25.3, averageGradient=6.2)
      _ <- c2("Lacets de Montvernier", summitKM=83, height=782, length=3.4, averageGradient=8.2)
      _ <- hc("Col de la Croix de Fer", height=2067, summitKM=121, length=29, averageGradient=5.2)
      _ <- hc("Alpe d'Huez", height=1850, length=13.8, summitKM=175.5, averageGradient=8.1)
 
      // Stage 13 20-07-2018
      _ <- roadStage("Le Bourg-d'Oisans", "Valence", 169.5)
      _ <- c3("Cote de Brie", summitKM=32.5, height=450, length=2.4, averageGradient=6.9)
      _ <- c4("Cote de Sainte-Eulalie", summitKM=109.5, height=298, length=1.5, averageGradient=4.9)
 
      // Stage 14 21-07-2018
      _ <- roadStage("Saint-Paul-Trois-Chateaux", "Mende", 188)
      _ <- c4("Cote du Grand Chataignier", summitKM=81, height=321, length=1, averageGradient=7.4)
      _ <- c2("Col de la Croix de Berthel", summitKM=129, height=1088, length=9.1, averageGradient=5.3)
      _ <- c3("Col du Pont sans Eau", height=1084, summitKM=142, length=3.3, averageGradient=6.3)
      _ <- c2("Cote de la Croix Neuve", height=1055, length=3, summitKM=186.5, averageGradient=10.2)
 
      // Stage 15 22-07-2018
      _ <- roadStage("Millau", "Carcassonne", 181.5)
      _ <- c3("Cote de Luzencon", summitKM=9, height=538, length=3.1, averageGradient=5.9)
      _ <- c2("Col de Sie", summitKM=64.5, height=928, length=10.2, averageGradient=4.9)
      _ <- c1("Pic de Nore", height=1205, summitKM=140, length=12.3, averageGradient=6.3)
 
      // Rest day 23-07-2018
      _ <- restDay("Lourdes")

      // Stage 16 24-07-2018
      _ <- roadStage("Carcassonne", "Bagneres-de-Luchon", 218)
      _ <- c4("Cote de Fanjeaux", summitKM=25, height=348, length=2.4, averageGradient=4.9)
      _ <- c4("Cote de Pamiers", height=417, summitKM=72, length=2.3, averageGradient=5.8)
      _ <- c2("Col de Portet d'Aspet", height=1069, summitKM=155.5, length=5.4, averageGradient=7.1)
      _ <- c1("Col de Mente", height=1349, summitKM=171, length=6.9, averageGradient=8.1)
      _ <- c1("Col du Portillon", height=1292, summitKM=208, length=8.3, averageGradient=7.1)
 
      // Stage 17 25-07-2018
      _ <- roadStage("Bagneres-de-Luchon", "Saint-Lary-Soulan (Col de Portet)", 65)
      _ <- c1("Monte de Peyragudes", height=1645, length=14.9, summitKM=15, averageGradient=6.7)
      _ <- c1("Col de Val Louron-Azet", height=1580, summitKM=37, length=7.4, averageGradient=8.3)
      _ <- hc("Col du Portet", height=2215, length=16, summitKM=65, averageGradient=8.7)
 
      // Stage 18 26-07-2018
      _ <- roadStage("Trie-sur-Basie", "Pau", 171) 
      _ <- c4("Cote de Madiran", summitKM=53.5, height=260, length=1.2, averageGradient=7)
      _ <- c4("Cote d'Anos", height=304, summitKM=152.5, length=2.1, averageGradient=4.6)
 
      // Stage 19 27-07-2018
      _ <- roadStage("Lourdes", "Laruns", 200.5)
      _ <- c4("Cote de Loucrup", summitKM=7, height=532, length=1.8, averageGradient=7.2)
      _ <- c4("Cote de Capvern-les-Bains", summitKM=40, height=604, length=3.4, averageGradient=5.1)
      _ <- c1("Col d'Aspin", height=1490, length=12, summitKM=78.5, averageGradient=6.5)
      _ <- hc("Col du Tourmalet", height=2115, length=17.1, summitKM=108, averageGradient=7.3)
      _ <- c2("Col de Borderes", height=1156, length=8.6, summitKM=159.5, averageGradient=5.8)
      _ <- hc("Col d'Aubisque", height=1709, length=16.6, summitKM=180.5, averageGradient=4.9)
 
      // Stage 20 28-07-2018
      _ <- individualTimeTrial("Saint-Pee-sur-Nivelle", "Espelette", 31)
 
      // Stage 21 29-07-2018
      _ <- roadStage("Houilles", "Paris", 116)
    } yield()

    val result = composition.exec(StageRaceState.init(TourDeFrance,LocalDate.of(2018,7,7)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1989:StageRaceEdition = {

    val luxembourgCity = Location("Luxembourg City")(Luxembourg)
    val spa            = Location("Spa")(Belgium)
    val liege          = Location("Liege")(Belgium)
    val wasquehal      = Location("Wasquehal")(France)

    val composition = for {
      _ <- prologue(luxembourgCity, 7.8)
      _ <- morningStage
      _ <- criterium(luxembourgCity, 135.5)
      _ <- afternoonStage
      _ <- teamTimeTrial(luxembourgCity, 46)
      _ <- roadStage(luxembourgCity, spa, 241)
      _ <- roadStage(liege, wasquehal, 255)
      _ <- restDay("Dinard")
      _ <- individualTimeTrial("Dinard", "Rennes", 73)
      _ <- roadStage("Rennes", "Futuroscope", 259)
      _ <- roadStage("Poitiers", "Bordeaux", 258.5)
      _ <- roadStage("Labastide-d'Armagnac", "Pau", 157)
      _ <- roadStage("Pau", "Cauterets", 147)
      _ <- roadStage("Cauterets", "Superbagneres", 136)
      _ <- roadStage("Luchon", "Blagnac", 158.5)
      _ <- roadStage("Toulouse", "Montpellier", 242)
      _ <- roadStage("Montpellier", "Marseille", 179)
      _ <- roadStage("Marseille", "Gap", 240)
      _ <- individualTimeTrial("Gap", "Orcieres-Merlette", 39)
      _ <- restDay("Orcieres-Merlette")
      _ <- roadStage("Gap", "Briancon", 175)
      _ <- roadStage("Briancon", "Alpe d'Huez", 165)
      _ <- roadStage("Le Bourg-d'Oisans", "Villard-de-Lans", 91.5)
      _ <- roadStage("Villard-de-Lans", "Aix-les-Bains", 125)
      _ <- roadStage("Aix-les-Bains", "L'Isle-d'Abeau", 130)
      _ <- individualTimeTrial("Versailles", "Paris", 24.5)
    } yield()

    val result = composition.exec(StageRaceState.init(TourDeFrance,LocalDate.of(1989,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1990:StageRaceEdition = {

    val besancon = Location("Besancon")(France)
    val saintGervais = Location("Saint-Gervais")(France)
    val geneva = Location("Geneva")(Switzerland)

    val composition = for {
      _ <- prologue("Futuroscope", 6.3)
      _ <- morningStage
      _ <- criterium("Futuroscope", 138.5)
      _ <- afternoonStage
      _ <- teamTimeTrial("Futuroscope", 44.5)
      _ <- roadStage("Poitiers", "Nantes", 233)
      _ <- roadStage("Nantes", "Mont Saint-Michel", 203)
      _ <- roadStage("Avranches", "Rouen", 301)
      _ <- restDay("Rouen")
      _ <- roadStage("Sarrebourg", "Vittel", 202.5)
      _ <- individualTimeTrial("Vittel", "Epinal", 61.5)
      _ <- roadStage("Epinal", "Besancon", 181.5)
      _ <- roadStage(besancon, geneva, 196)
      _ <- roadStage(geneva, saintGervais, 118.5)
      _ <- roadStage("Saint-Gervais", "Alpe d'Huez", 182.5)
      _ <- individualTimeTrial("Fontaine", "Villard-de-Lans", 33.5)
      _ <- restDay("Villard-de-Lans")
      _ <- roadStage("Villard-de-Lans", "Saint-Etienne", 149)
      _ <- roadStage("Le Puy-en-Velay", "Millau", 205)
      _ <- roadStage("Millau", "Revel", 170)
      _ <- roadStage("Blagnac", "Luz Ardiden", 215)
      _ <- roadStage("Lourdes", "Pau", 150)
      _ <- roadStage("Pau", "Bordeaux", 202)
      _ <- roadStage("Castillon-la-Bataille", "Limoges", 182.5)
      _ <- individualTimeTrial("Lac de Vassiviere", 45.5)
      _ <- roadStage("Bretigny-sur-Orge", "Paris", 182.5)
    } yield()

    val result = composition.exec(StageRaceState.init(TourDeFrance,LocalDate.of(1990,6,30)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1991:StageRaceEdition = {

    val jaca = Location("Jaca")(Spain)

    val composition = for {
      _ <- prologue("Lyon", 5.4)
      _ <- morningStage
      _ <- criterium("Lyon", 114.5)
      _ <- afternoonStage
      _ <- teamTimeTrial("Bron", "Chassieu", 36.5)
      _ <- roadStage("Villeurbanne", "Dijon", 210.5)
      _ <- roadStage("Dijon", "Reims", 286)
      _ <- roadStage("Reims", "Valenciennes", 149.5)
      _ <- roadStage("Arras", "Le Havre", 259)
      _ <- roadStage("Le Havre", "Argentan", 167)
      _ <- individualTimeTrial("Argentan", "Alencon", 73)
      _ <- roadStage("Alencon", "Rennes", 161)
      _ <- roadStage("Rennes", "Quimper", 207.5)
      _ <- roadStage("Quimper", "Saint-Herblain", 246)
      _ <- restDay("Pau")
      _ <- roadStage("Pau", jaca, 192)
      _ <- roadStage(jaca, "Val Louron", 232)
      _ <- roadStage("St Gaudens", "Castres", 172.5)
      _ <- roadStage("Albi", "Ales", 235)
      _ <- roadStage("Ales", "Gap", 215)
      _ <- roadStage("Gap", "Alpe d'Huez", 125)
      _ <- roadStage("Le Bourg-d'Oisans", "Morzine", 255)
      _ <- roadStage("Morzine", "Aix-les-Bains", 177)
      _ <- roadStage("Aix-les-Bains", "Macon", 160)
      _ <- individualTimeTrial("Lugny", "Macon", 57)
      _ <- roadStage("Melun", "Paris", 178)
    } yield()

    val result = composition.exec(StageRaceState.init(TourDeFrance,LocalDate.of(1991,7,6)))
    StageRaceEdition(TourDeFrance, result.stages)
  }
}
