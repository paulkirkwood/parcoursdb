package parcoursdb

import java.time.LocalDate
//import NonConsecutiveStageRaceState.{init, roadStage => flatStage, teamTimeTrial => ttt}
import NonConsecutiveStageRaceState.{init, roadStage => flatStage}
import ModernTourDeFranceState._
import BelgianLocations.{rochefort => belgianRochefort}
import BelgianLocations.{arlon,antwerp}
import BelgianLocations.{bastogne,beauraing,beringen,beveren,brasschaat,brussels,bornem,circuitZolder}
import BelgianLocations.{charleroi,dinant,forest,ghent,harelbeke,hasselt,herentals,huy,jambes}
import BelgianLocations.{leuven,liege}
import BelgianLocations.{marcheEnFamenne,molenbeek,mons,mouscron,namur,sintNiklaas,seraing,sintPietersWoluwe,spa,tournai};
import BelgianLocations.{wanze,waregem,waterloo,verviers,vise,ypres};
import BritishLocations._
import DutchLocations._
import FrenchLocations._
import GermanLocations.{dusseldorf,freiburg,karlsruhe,koblenz,pforzheim,saarbrucken};
import IrishLocations.{cork,dublin,enniscorthy};
import ItalianLocations.{cuneo,pinerolo,pratoNevoso,sestriere,turin};
import SwissLocations._
import WestGermanLocations.{cologne,felsberg,frankfurt,saarlouis,stuttgart,westBerlin,wiesbaden};
import WestGermanLocations.{freiburg => westGermanFreiburg};
import WestGermanLocations.{karlsruhe => westGermanKarlsruhe};
import WestGermanLocations.{pforzheim => westGermanPforzheim};

object TourDeFranceEditions {

  implicit val country:Country = France

  // Andorran towns
  val arcalis  = Location("Andorra-Arcalis")(Andorra)
  val pal      = Location("Pal")(Andorra)
  val escaldes = Location("Escaldes-Engordany")(Andorra)

  // Spanish towns and cities
  val sanSebastian = Location("San Sebastian")(Spain)
  val pamplona     = Location("Pamplona")(Spain)
  val hendaye      = Location("Hendaye")(Spain)
  val girona       = Location("Girona")(Spain)
  val barcelona    = Location("Barcelona")(Spain)
  val vielha       = Location("Vielha Val d'Aran")(Spain)
  val jaca = Location("Jaca")(Spain)

  // Luxembourg locations
  val luxembourgCity = Location("Luxembourg City")(Luxembourg)
  val eschSurAlzette = Location("Esch-sur-Alzette")(Luxembourg)

  val monaco = Location("Monaco")(Monaco)

  // Swiss towns and cities
  val finhaut      = Location("Finhaut-Emosson")(Switzerland)

  def tdf1903:StageRaceEdition = {
    val composition = for {
      _ <- flatStage(7, 1, paris, lyon, 467.0)
      _ <- flatStage(7, 5, lyon, marseille, 374.0)
      _ <- flatStage(7, 8, marseille, toulouse, 423.0)
      _ <- flatStage(7, 12, toulouse, bordeaux, 268.0)
      _ <- flatStage(7, 13, bordeaux, nantes, 425.0)
      _ <- flatStage(7, 18, nantes, paris, 471.0)
    } yield()
    val result = composition.exec(NonConsecutiveStageRaceState.init(1903))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1904:StageRaceEdition = {
    val composition = for {
      _ <- flatStage(7, 2, montgeron, lyon, 467.0)
      _ <- flatStage(7, 9, lyon, marseille, 374.0)
      _ <- flatStage(7, 13, marseille, toulouse, 424.0)
      _ <- flatStage(7, 17, toulouse, bordeaux, 268.0)
      _ <- flatStage(7, 20, bordeaux, nantes, 425.0)
      _ <- flatStage(7, 23, nantes, paris, 471.0)
    } yield()
    val result = composition.exec(NonConsecutiveStageRaceState.init(1904))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1905:StageRaceEdition = {
    val composition = for {
      _ <- flatStage(7,  9, paris, nancy, 340.0)
      _ <- flatStage(7, 11, nancy, besancon, 299.0)
      _ <- flatStage(7, 14, besancon, grenoble, 327.0)
      _ <- flatStage(7, 16, grenoble, toulon, 348.0)
      _ <- flatStage(7, 18, toulon, nimes, 192.0)
      _ <- flatStage(7, 20, nimes, toulouse, 307.0)
      _ <- flatStage(7, 22, toulouse, bordeaux, 268.0)
      _ <- flatStage(7, 24, bordeaux, laRochelle, 257.0)
      _ <- flatStage(7, 26, laRochelle, rennes, 263.0)
      _ <- flatStage(7, 28, rennes, caen, 167.0)
      _ <- flatStage(7, 29, caen, paris, 253.0)
    } yield()
    val result = composition.exec(NonConsecutiveStageRaceState.init(1905))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1970:StageRaceEdition = {
    val composition = for {
      _ <- prologue(limoges, 7.4)
      _ <- roadStage(start=limoges, finish=laRochelle, length=224.0)
      _ <- roadStage(start=laRochelle, finish=angers, length=200.0)
      _ <- enableSplitStages
      _ <- teamTimeTrial(start=angers, finish=angers, length=10.7)
      _ <- roadStage(start=angers, finish=rennes, length=140.0)
      _ <- disableSplitStages
      _ <- roadStage(start=rennes, finish="Lisieux", length=229.0)
      _ <- enableSplitStages
      _ <- roadStage(start="Lisieux", finish="Rouen", length=94.5)
      _ <- roadStage(start="Rouen", finish="Amiens", length=223.0)
      _ <- disableSplitStages
      _ <- roadStage(start="Amiens", finish="Valenciennes", length=135.5)
      _ <- enableSplitStages
      _ <- roadStage(start="Valenciennes", finish=forest, length=120.0)
      _ <- individualTimeTrial(forest, 7.2)
      _ <- disableSplitStages
      _ <- roadStage(start="Ciney", finish=felsberg, length=232.5)
      _ <- roadStage(start=saarlouis, finish="Mulhouse", length=269.5)
      _ <- roadStage(start="Belfort", finish="Divonne-les-Bains", length=241.0)
      _ <- enableSplitStages
      _ <- individualTimeTrial(divonneLesBains, 8.8)
      _ <- roadStage(start="Divonne-les-Bains", finish="Thonon-les-Bains", length=139.5)
      _ <- disableSplitStages
      _ <- roadStage(start="Divonne-les-Bains", finish=grenoble, length=194.0)
      _ <- roadStage(start=grenoble, finish="Gap", length=194.5)
      _ <- roadStage(start="Gap", finish="Mont Ventoux", length=170.0)
      _ <- roadStage(start="Carpentras", finish="Montpellier", length=140.5)
      _ <- roadStage(start="Montpellier", finish="Toulouse", length=160.0)
      _ <- roadStage(start="Toulouse", finish="Saint-Gaudens", length=190.0)
      _ <- roadStage(start="Saint-Gaudens", finish="La Mongie", length=135.5)
      _ <- roadStage(start="Bagnères-de-Bigorre", finish="Mourenx", length=185.5)
      _ <- enableSplitStages
      _ <- roadStage(start="Mourenx", finish="Bordeaux", length=223.5)
      _ <- individualTimeTrial(bordeaux, 8.2)
      _ <- disableSplitStages
      _ <- roadStage(start="Ruffex", finish="Tours", length=191.5)
      _ <- roadStage(start="Tours", finish="Versailles", length=238.5)
      _ <- individualTimeTrial(versailles, paris, 54.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1970,6,26)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1971:StageRaceEdition = {
    val composition = for {
      _ <- prologue(mulhouse, 11.0)
      _ <- enableSplitStages
      _ <- roadStage(start="Mulhouse", finish=basel, length=59.5)
      _ <- roadStage(start=basel, finish=westGermanFreiburg, length=90.0)
      _ <- roadStage(start=westGermanFreiburg, finish="Mulhouse", length=74.5)
      _ <- disableSplitStages
      _ <- roadStage(start="Mulhouse", finish="Strasbourg", length=144.0)
      _ <- roadStage(start="Strasbourg", finish=nancy, length=165.6)
      _ <- roadStage(start=nancy, marcheEnFamenne, length=242.0)
      _ <- roadStage(start=dinant, finish=roubaix, length=208.5)
      _ <- enableSplitStages
      _ <- roadStage(start=roubaix, finish="Amiens", length=127.5)
      _ <- roadStage(start="Amiens", finish="Le Touquet", length=133.5)
      _ <- disableSplitStages
      _ <- restDay(leTouquet)
      _ <- roadStage(start="Rungis", finish="Nevers", length=257.5)
      _ <- roadStage(start="Nevers", finish="Puy de Dôme", length=221.0)
      _ <- roadStage(start="Clermont-Ferrand", finish="Saint-Étienne", length=153.0)
      _ <- roadStage(start="Saint-Étienne", finish=grenoble, length=188.5)
      _ <- roadStage(start=grenoble, finish="Orcières-Merlette", length=134.0)
      _ <- restDay(orcieresMerlette)
      _ <- roadStage(start="Orcières-Merlette", finish="Marseille", length=251.0)
      _ <- criterium(albi, 16.3)
      _ <- roadStage(start="Revel", finish="Luchon", length=214.5)
      _ <- roadStage(start="Luchon", finish="Superbagnères", length=19.6)
      _ <- enableSplitStages
      _ <- roadStage(start="Luchon", finish="Gourette", length=145.0)
      _ <- roadStage(start="Gourette", finish=pau, length=57.5)
      _ <- disableSplitStages
      _ <- roadStage(start="Mont-de-Marsan", finish="Bordeaux", length=188.0)
      _ <- roadStage(start="Bordeaux", finish="Poitiers", length=244.0)
      _ <- roadStage(start="Blois", finish="Versailles", length=244.0)
      _ <- individualTimeTrial(versailles, paris, 53.8)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1971,6,26)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1972:StageRaceEdition = {
    val composition = for {
      _ <- prologue(angers, 7.2)
      _ <- roadStage(angers, saintBrieuc, 235.5)
      _ <- roadStage(saintBrieuc, laBaule, 206.5)
      _ <- enableSplitStages 
      _ <- roadStage(pornichet, saintJeanDeMonts, 161)
      _ <- individualTimeTrial(merlinPlage, 16.2)
      _ <- disableSplitStages 
      _ <- roadStage(merlinPlage, royan, 236)
      _ <- enableSplitStages 
      _ <- roadStage(royan, bordeaux, 133.5)
      _ <- individualTimeTrial(bordeaux, 12.7)
      _ <- disableSplitStages 
      _ <- roadStage(bordeaux, bayonne, 205)
      _ <- restDay(bayonne)
      _ <- roadStage(bayonne, pau, 220.5)
      _ <- roadStage(pau, luchon, 163.5)
      _ <- roadStage(luchon, colomiers, 179)
      _ <- roadStage(castres, laGrandeMotte, 210)
      _ <- roadStage(carnonPlage, montVentoux,207)
      _ <- roadStage(carpentras, orcieresMerlette, 192)
      _ <- restDay(orcieresMerlette)
      _ <- roadStage(orcieresMerlette, briancon, 201)
      _ <- enableSplitStages 
      _ <- roadStage(briancon, valloire, 51)
      _ <- roadStage(valloire, aixLesBains, 151)
      _ <- disableSplitStages 
      _ <- roadStage(aixLesBains, leRevard, 28)
      _ <- roadStage(aixLesBains, pontarlier, 198.5)
      _ <- roadStage(pontarlier, ballonDAlsace, 213)
      _ <- roadStage(vesoul, auxerre, 257.5)
      _ <- roadStage(auxerre, versailles, 230)
      _ <- enableSplitStages 
      _ <- individualTimeTrial(versailles, 42)
      _ <- roadStage(versailles, paris, 89)
      _ <- disableSplitStages 
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1972,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1978:StageRaceEdition = {
    val composition = for {
      _ <- prologue(leiden, 5.0)
      _ <- enableSplitStages
      _ <- roadStage(start=leiden, finish=sintWillebrord, length=135.0)
      _ <- roadStage(start=sintWillebrord, finish=brussels, length=100.0)
      _ <- disableSplitStages
      _ <- roadStage(start=brussels, finish=saintAmandLesEaux, length=199.0)
      _ <- roadStage(start=saintAmandLesEaux, finish=saintGermainEnLaye, length=244.0)
      _ <- teamTimeTrial(start=evreux, finish=caen, length=153.0)
      _ <- roadStage(start=caen, finish=mazeMontgeoffroy, length=244.0)
      _ <- roadStage(start=mazeMontgeoffroy, finish=poitiers, length=162.0)
      _ <- roadStage(start=poitiers, finish=bordeaux, length=242.0)
      _ <- individualTimeTrial(saintEmilion, sainteFoyLaGrande, 59.0)
      _ <- roadStage(start=bordeaux, finish=biarritz, length=233.0)
      _ <- restDay(biarritz)
      _ <- roadStage(start=biarritz, finish=pau, length=192.0)
      _ <- roadStage(start=pau, finish="Saint-Lary-Soulan Pla d'Adet", length=161.0)
      _ <- enableSplitStages
      _ <- roadStage(start=tarbes, finish="Valence d'Agen", length=158.0)
      _ <- roadStage(start="Valence d'Agen", finish=toulouse, length=96.0)
      _ <- disableSplitStages
      _ <- roadStage(start=figeac, finish="Super Besse", length=221.0)
      _ <- individualTimeTrial(besseEnChandesse, puyDeDome, 52.0)
      _ <- roadStage(start="Saint-Dier-d'Auvergne", finish=saintEtienne, length=196.0)
      _ <- roadStage(start="Saint-Étienne", finish="Alpe d'Huez", length=241.0)
      _ <- restDay(alpeDHuez)
      _ <- roadStage(start=grenoble, finish=morzine, length=225.0)
      _ <- roadStage(start=morzine, finish=lausanne, length=137.0)
      _ <- roadStage(start=lausanne, finish=belfort, length=182.0)
      _ <- individualTimeTrial(metz, nancy, 72.0)
      _ <- roadStage(start=epernay, finish=senlis, length=207.0)
      _ <- roadStage(start=saintGermainEnLaye, finish=paris, length=162.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1978,6,29)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1979:StageRaceEdition = {
    val composition = for {
      _ <- prologue(fleurance, 5.0)
      _ <- roadStage(start=fleurance, finish=luchon, length=225.0)
      _ <- individualTimeTrial(luchon, superbagneres, 24.0)
      _ <- roadStage(start=luchon, finish=pau, length=180.0)
      _ <- teamTimeTrial(start=captieux, finish=bordeaux, length=87.0)
      _ <- roadStage(start=neuvilleDePoitou, finish=angers, length=145.0)
      _ <- roadStage(start=angers, finish=saintBrieuc, length=239.0)
      _ <- roadStage(start=saintHilaireDuHarcouet, finish=deauville, length=158.0)
      _ <- teamTimeTrial(start=deauville, finish=leHavre, length=90.0)
      _ <- roadStage(start=amiens, finish=roubaix, length=201.0)
      _ <- roadStage(start=roubaix, finish=brussels, length=124.0)
      _ <- individualTimeTrial(brussels, 33.0)
      _ <- roadStage(start=belgianRochefort, finish=metz, length=193.0)
      _ <- roadStage(start=metz, finish="Ballon d'Alsace", length=202.0)
      _ <- roadStage(start=belfort, finish=evianLesBains, length=248.0)
      _ <- individualTimeTrial(evianLesBains, morzineAvoriaz, 54.0)
      _ <- roadStage(start=morzineAvoriaz, finish="Les Menuires", length=201.0)
      _ <- restDay(lesMenuires)
      _ <- roadStage(start="Les Menuires", finish="Alpe d'Huez", length=167.0)
      _ <- criterium(alpeDHuez, 119.0)
      _ <- roadStage(start="Alpe d'Huez", finish=saintPriest, length=162.0)
      _ <- roadStage(start=saintPriest, finish=dijon, length=240.0)
      _ <- individualTimeTrial(dijon, 49.0)
      _ <- roadStage(start=dijon, finish=auxerre, length=189.0)
      _ <- roadStage(start=auxerre, finish=nogentSurMarne, length=205.0)
      _ <- roadStage(start=lePerreuxSurMarne, finish=paris, length=180.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1979,6,27)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1980:StageRaceEdition = {
    val composition = for {
      _ <- prologue(frankfurt, 8.0)
      _ <- enableSplitStages
      _ <- roadStage(frankfurt, wiesbaden, 133.0)
      _ <- teamTimeTrial(wiesbaden, frankfurt, 46.0)
      _ <- disableSplitStages
      _ <- roadStage(frankfurt, metz, 276.0)
      _ <- roadStage(metz, liege, 282.0)
      _ <- individualTimeTrial(spa, 35.0)
      _ <- roadStage(liege, lille, 249.0)
      _ <- roadStage(lille, compiegne, 216.0)
      _ <- enableSplitStages
      _ <- teamTimeTrial(compiegne, beauvais, 65.0)
      _ <- roadStage(beauvais, rouen, 92.0)
      _ <- disableSplitStages
      _ <- roadStage(flers, saintMalo, 164.0)
      _ <- restDay(saintMalo)
      _ <- roadStage(saintMalo, nantes, 205.0)
      _ <- roadStage(rochefort, bordeaux, 163.0)
      _ <- individualTimeTrial(damazan, laplume, 52.0)
      _ <- roadStage(agen, pau, 194.0)
      _ <- roadStage(pau, bagneresDeLuchon, 200.0)
      _ <- roadStage(lezignanCorbieres, montpellier, 189.0)
      _ <- roadStage(montpellier, martigues, 160.0)
      _ <- roadStage(trets, praLoup, 209.0)
      _ <- roadStage(serreChevalier, morzine, 242.0)
      _ <- restDay(morzine)
      _ <- roadStage(morzine, prapoutel, 199.0)
      _ <- roadStage(voreppe, saintEtienne, 140.0)
      _ <- individualTimeTrial(saintEtienne, 34.0)
      _ <- roadStage(auxerre, fontenaySousBois, 208.0)
      _ <- roadStage(fontenaySousBois, paris, 186.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1980,6,26)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1981:StageRaceEdition = {
    val composition = for {
      _ <- prologue(nice, 6.0)
      _ <- enableSplitStages
      _ <- roadStage(nice, nice, 97.0)
      _ <- teamTimeTrial(nice, 40.0)
      _ <- disableSplitStages
      _ <- roadStage(start=nice, finish=martigues, length=254.0)
      _ <- roadStage(start=martigues, finish=narbonne, length=232.0)
      _ <- teamTimeTrial(start=narbonne, finish=carcassonne, length=77.0)
      _ <- roadStage(start=saintGaudens, finish=plaDAdet, 117.0)
      _ <- individualTimeTrial(nay, finish=pau, length=27.0)
      _ <- roadStage(start=pau, finish=bordeaux, length=227.0)
      _ <- roadStage(start=rochefort, finish=nantes, length=182.0)
      _ <- restDay(nantes)
      _ <- roadStage(start=nantes, finish=leMans, length=197.0)
      _ <- roadStage(start=leMans, finish=aulnaySousBois, length=264.0)
      _ <- roadStage(start=compiegne, finish=roubaix, length=246.0)
      _ <- enableSplitStages
      _ <- roadStage(start=roubaix, finish=brussels, length=107.0)
      _ <- roadStage(start=brussels, finish=circuitZolder, length=138.0)
      _ <- disableSplitStages
      _ <- roadStage(start=beringen, finish=hasselt, length=157.0)
      _ <- individualTimeTrial(mulhouse, 38.0)
      _ <- roadStage(start=besancon, finish=thononLesBains, length=231.0)
      _ <- roadStage(start=thononLesBains, finish=morzine, length=200.0)
      _ <- restDay(morzine)
      _ <- roadStage(start=morzine, finish=alpeDHuez, length=230.0)
      _ <- roadStage(start=leBourgDOisans, finish=lePleynet, length=134.0)
      _ <- roadStage(start=veurey, finish=saintPriest, length=118.0)
      _ <- individualTimeTrial(saintPriest, 46.0)
      _ <- roadStage(start=auxerre, finish=fontenaySousBois, length=207.0)
      _ <- roadStage(start=fontenaySousBois, finish=paris, length=187.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1981,6,25)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1982:StageRaceEdition = {
    val composition = for {
      _ <- prologue(basel, 7.0)
      _ <- roadStage(start=basel, finish=mohin, length=207.0)
      _ <- roadStage(start=basel, finish=nancy, length=250.0)
      _ <- roadStage(start=nancy, finish=longwy, length=134.0)
      _ <- roadStage(start=beauraing, finish=mouscron, length=219.0)
      _ <- teamTimeTrial(start=orchies, finish=fontaineAuPire, length=73.0)
      _ <- roadStage(start=lille, finish=lille, length=233.0)
      _ <- restDay(lille)
      _ <- roadStage(start=cancale, finish=concarneau, length=235.0)
      _ <- roadStage(start=concarneau, finish=chateaulin, length=201.0)
      _ <- enableSplitStages
      _ <- teamTimeTrial(start=lorient, finish=plumelec, length=69.0)
      _ <- roadStage(start=plumelec, finish=nantes, length=138.0)
      _ <- disableSplitStages
      _ <- roadStage(start=saintes, finish=bordeaux, length=147.0)
      _ <- individualTimeTrial(valenceDAgen, 57.0)
      _ <- roadStage(start=fleurance, finish=pau, length=249.0)
      _ <- roadStage(start=pau, finish=saintLarySoulanPlaDAdet, 122.0)
      _ <- restDay(martigues)
      _ <- individualTimeTrial(martigues, 33.0)
      _ <- roadStage(start=manosque, finish=orcieresMerlette, length=208.0)
      _ <- roadStage(start=orcieresMerlette, finish=alpeDHuez, length=123.0)
      _ <- roadStage(start=leBourgDOisans, finish=morzine, length=251.0)
      _ <- roadStage(start=morzine, finish=saintPriest, length=233.0)
      _ <- individualTimeTrial(saintPriest, 48.0)
      _ <- roadStage(start=sens, finish=aulnaySousBois, length=161.0)
      _ <- roadStage(start=fontenaySousBois, finish=paris, length=187.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1982,7,2)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1983:StageRaceEdition = {
    val composition = for {
      _ <- prologue(fontenaySousBois, 6.0)
      _ <- roadStage(nogentSurMarne, creteil, 163.0)
      _ <- roadStage(soissons, fontaineAuPire, 100.0)
      _ <- roadStage(valenciennes, finish=roubaix, 152.0)
      _ <- roadStage(roubaix, leHavre, 300.0)
      _ <- roadStage(leHavre, leMans, length=257.0)
      _ <- individualTimeTrial(chateaubriant, nantes, 58.0)
      _ <- roadStage(nantes, ileDOleron, 216.0)
      _ <- roadStage(laRochelle, bordeaux, 222.0)
      _ <- roadStage(bordeaux, pau, 207.0)
      _ <- roadStage(pau, bagneresDeLuchon, 201.0)
      _ <- roadStage(bagneresDeLuchon, fleurance, 177.0)
      _ <- roadStage(fleurance, roquefortSurSoulzon, 261.0)
      _ <- roadStage(roquefortSurSoulzon, aurillac, 210.0)
      _ <- roadStage(aurillac, issoire, 149.0)
      _ <- individualTimeTrial(clermontFerrand, puyDeDome, 16.0)
      _ <- roadStage(issoire, saintEtienne, 144.0)
      _ <- roadStage(laTourDuPin, alpeDHuez, 233.0)
      _ <- restDay(alpeDHuez)
      _ <- roadStage(leBourgDOisans, morzine, 247.0)
      _ <- individualTimeTrial(morzine, avoriaz, 15.0)
      _ <- roadStage(morzine, dijon, 291.0)
      _ <- individualTimeTrial(dijon, 50.0)
      _ <- roadStage(alfortville, paris, 195.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1983,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1984:StageRaceEdition = {
    val composition = for {
      _ <- prologue(montreuil, noisyLeSec, 5.0)
      _ <- roadStage(start=bondy, finish=saintDenis, length=149.0)
      _ <- roadStage(start=bobigny, finish=louvroil, length=249.0)
      _ <- enableSplitStages
      _ <- teamTimeTrial(start=louvroil, finish=valenciennes, length=51.0)
      _ <- roadStage(start=valenciennes, finish=bethune, length=83.0)
      _ <- disableSplitStages
      _ <- roadStage(start=bethune, finish=cergyPontoise, length=207.0)
      _ <- roadStage(start=cergyPontoise, finish=alencon, length=202.0)
      _ <- individualTimeTrial(alencon, leMans, 67.0)
      _ <- roadStage(start=leMans, finish=nantes, length=192.0)
      _ <- roadStage(start=nantes, finish=bordeaux, length=338.0)
      _ <- roadStage(start=langon, finish=pau, length=198.0)
      _ <- roadStage(start=pau, finish=guzetNeige, length=227.0)
      _ <- roadStage(start=saintGirons, finish=blagnac, length=111.0)
      _ <- roadStage(start=blagnac, finish=rodez, length=220.0)
      _ <- roadStage(start=rodez, finish=domaineDuRouret, length=228.0)
      _ <- roadStage(start=domaineDuRouret, finish=grenoble, length=241.0)
      _ <- restDay(grenoble)
      _ <- individualTimeTrial(lesEchelles, laRuchere, 22.0)
      _ <- roadStage(start=grenoble, finish=alpeDHuez, length=151.0)
      _ <- roadStage(start=leBourgDOisans, finish=laPlagne, length=185.0)
      _ <- roadStage(start=laPlagne, finish=morzine, length=186.0)
      _ <- roadStage(start=morzine, finish=cransMontana, length=141.0)
      _ <- roadStage(start=cransMontana, finish=villefrancheSurSaone, length=320.0)
      _ <- individualTimeTrial(villieMorgon, villefrancheSurSaone, 51.0)
      _ <- roadStage(pantin, paris, 197.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1984,6,29)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1985:StageRaceEdition = {
    val composition = for {
      _ <- prologue(plumelec,6.0)
      _ <- roadStage(vannes,lanester,256.0)
      _ <- roadStage(lorient,vitre,242.0)
      _ <- roadStage(vitre,fougeres,242.0)
      _ <- roadStage(fougeres,pontAudemer,239.0)
      _ <- roadStage(neufchatelEnBray,roubaix,224.0)
      _ <- roadStage(roubaix,reims,222.0)
      _ <- roadStage(reims,nancy,217.0)
      _ <- individualTimeTrial(sarrebourg,strasbourg,75.0)
      _ <- roadStage(strasbourg,epinal,174.0)
      _ <- roadStage(epinal, pontarlier, 204.0)
      _ <- roadStage(pontarlier, morzineAvoriaz, 195.0)
      _ <- roadStage(morzineAvoriaz, lansEnVercors, 269.0)
      _ <- individualTimeTrial(villardDeLans, 32.0)
      _ <- restDay(villardDeLans)
      _ <- roadStage(autrans, saintEtienne, 179.0)
      _ <- roadStage(saintEtienne, aurillac, 238.0)
      _ <- roadStage(aurillac, toulouse, 247.0)
      _ <- roadStage(toulouse, luzArdiden, 209.0)
      _ <- enableSplitStages
      _ <- roadStage(luzSaintSauveur, aubisque, 53.0)
      _ <- roadStage(laruns, pau, 83.0)
      _ <- disableSplitStages
      _ <- roadStage(pau, bordeaux, 203.0)
      _ <- roadStage(montponMenesterol, limoges, 225.0)
      _ <- individualTimeTrial(lacDeVassiviere, 46.0)
      _ <- roadStage(orleans, paris, 196.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1985,6,28)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1986:StageRaceEdition = {
    val composition = for {
      _ <- prologue(boulogneBillancourt, 4.6)
      _ <- morningStage
      _ <- roadStage(start="Nanterre", finish="Sceaux", length=85.0)
      _ <- afternoonStage
      _ <- teamTimeTrial(start=meudon, finish=saintQuentinEnYvelines, length=56.0)
      _ <- roadStage(start="Levallois-Perret", finish="Lievin", length=214.0)
      _ <- roadStage(start="Lievin", finish="Evreux", length=243.0)
      _ <- roadStage(start="Evreux", finish="Villers-sur-Mer", length=124.5)
      _ <- roadStage(start="Villers-sur-Mer", finish="Cherbourg", length=200.0)
      _ <- roadStage(start="Cherbourg", finish="Saint-Hilare-du-Harcouet", length=201.0)
      _ <- roadStage(start="Saint-Hilare-du-Harcouet", finish="Nantes", length=204.0)
      _ <- individualTimeTrial(nantes, 61.5)
      _ <- roadStage(start="Nantes", finish="Futuroscope", length=183.0)
      _ <- roadStage(start="Futuroscope", finish="Bordeaux", length=258.3)
      _ <- roadStage(start="Bayonne", finish=pau, length=217.5)
      _ <- roadStage(start=pau, finish="Superbagnères", length=186.0)
      _ <- roadStage(start="Superbagnères", finish="Blagnac", length=154.0)
      _ <- roadStage(start="Carcassonne", finish="Nimes", length=225.5)
      _ <- roadStage(start="Nimes", finish="Gap", length=246.5)
      _ <- roadStage(start="Gap", finish="Serre Chevalier", length=190.0)
      _ <- roadStage(start="Briançon", finish="Alpe d'Huez", length=162.5)
      _ <- restDay(alpeDHuez)
      _ <- roadStage(start="Villard-de-Lans", finish="Saint-Étienne", length=179.5)
      _ <- individualTimeTrial(saintEtienne, 58.0)
      _ <- roadStage(start="Saint-Étienne", finish="Puy de Dôme", length=190.0)
      _ <- roadStage(start="Clermont-Ferrand", finish="Nevers", length=194.0)
      _ <- roadStage(start="Cosne-sur-Loire", finish="Paris", length=255.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1986,7,4)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1987:StageRaceEdition = {
    val composition = for {
      _ <- prologue(westBerlin, 6.0)
      _ <- morningStage
      _ <- roadStage(start=westBerlin, finish=westBerlin, length=105.0)
      _ <- afternoonStage
      _ <- teamTimeTrial(start=westBerlin, finish=westBerlin, length=40.5)
      _ <- restDay
      _ <- roadStage(start=westGermanKarlsruhe, finish=stuttgart, length=219.0)
      _ <- morningStage
      _ <- roadStage(start=stuttgart, finish=westGermanPforzheim, length=79.0)
      _ <- afternoonStage
      _ <- roadStage(start=westGermanPforzheim, finish="Strasbourg", length=112.5)
      _ <- roadStage(start="Strasbourg", finish="Epinal", length=169.0)
      _ <- roadStage(start="Epinal", finish="Troyes", length=211.0)
      _ <- roadStage(start="Troyes", finish="Epnay-sous-Senart", length=205.5)
      _ <- roadStage(start="Orleans", finish="Renaze", length=260.0)
      _ <- individualTimeTrial(saumur, futuroscope, 87.5)
      _ <- roadStage(start="Poitiers", finish="Chaumeil", length=255.0)
      _ <- roadStage(start="Brive", finish="Bordeaux", length=228.0)
      _ <- roadStage(start="Bayonne", finish=pau, length=219.0)
      _ <- roadStage(start=pau, finish="Luz Ardiden", length=166.0)
      _ <- roadStage(start="Tarbes", finish="Blagnac", length=164.0)
      _ <- roadStage(start="Blagnac", finish="Millau", length=216.5)
      _ <- roadStage(start="Millau", finish="Avignon", length=239.0)
      _ <- restDay(avignon)
      _ <- individualTimeTrial(carpentras, montVentoux, 36.5)
      _ <- roadStage(start="Valreas", finish="Villard-de-Lans", length=185.0)
      _ <- roadStage(start="Villard-de-Lans", finish="Alpe d'Huez", length=201.0)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish=laPlagne, length=185.5)
      _ <- roadStage(start=laPlagne, finish=morzine, length=186.0)
      _ <- roadStage(start="Saint-Julien-en-Genevois", finish="Dijon", length=224.5)
      _ <- individualTimeTrial(dijon, 38.0)
      _ <- roadStage(start="Creteil", finish="Paris", length=192.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1987,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1988:StageRaceEdition = {
    val composition = for {
      _ <- prologue(pornichet, laBaule, 1.0)
      _ <- morningStage
      _ <- roadStage(pontchateau, machecoul, 91.5)
      _ <- afternoonStage
      _ <- teamTimeTrial(laHaieFouassiere, ancenis, 48.0)
      _ <- roadStage(nantes, leMans, 213.5)
      _ <- roadStage(leMans, evreux, 158.0)
      _ <- roadStage(neufchatelEnBray, lievin, 147.5)
      _ <- individualTimeTrial(lievin, wasquehal, 52.0)
      _ <- roadStage(wasquehal, reims, 225.5)
      _ <- roadStage(reims, nancy, 219.0)
      _ <- roadStage(nancy, strasbourg, 160.5)
      _ <- roadStage(belfort, besancon, 149.5)
      _ <- roadStage(besancon, morzine, 232.0)
      _ <- roadStage(morzine, alpeDHuez, 227.0)
      _ <- individualTimeTrial(grenoble, villardDeLans, 38.0)
      _ <- restDay(blagnac)
      _ <- roadStage(blagnac, guzetNeige, 163.0)
      _ <- roadStage(saintGirons, luzArdiden, 187.5)
      _ <- morningStage
      _ <- roadStage(luzArdiden, pau, 38.0)
      _ <- afternoonStage
      _ <- roadStage(pau, bordeaux, 210.0)
      _ <- roadStage(ruelleSurTourve, limoges, 93.5)
      _ <- roadStage(limoges, puyDeDome, 188.0)
      _ <- roadStage(clermontFerrand, chalonSurSaone, 233.5)
      _ <- individualTimeTrial(santennay, 48.0)
      _ <- roadStage(nemours, paris, 172.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1988,7,3)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1989:StageRaceEdition = {
    val composition = for {
      _ <- prologue(luxembourgCity, 7.8)
      _ <- morningStage
      _ <- criterium(luxembourgCity, 135.5)
      _ <- afternoonStage
      _ <- teamTimeTrial(luxembourgCity, 46)
      _ <- roadStage(luxembourgCity, spa, 241)
      _ <- roadStage(liege, "Wasquehal", 255)
      _ <- restDay(dinard)
      _ <- individualTimeTrial(dinard, rennes, 73)
      _ <- roadStage(rennes, "Futuroscope", 259)
      _ <- roadStage("Poitiers", "Bordeaux", 258.5)
      _ <- roadStage("Labastide-d'Armagnac", pau, 157)
      _ <- roadStage(pau, "Cauterets", 147)
      _ <- roadStage("Cauterets", "Superbagnères", 136)
      _ <- roadStage("Luchon", "Blagnac", 158.5)
      _ <- roadStage("Toulouse", "Montpellier", 242)
      _ <- roadStage("Montpellier", "Marseille", 179)
      _ <- roadStage("Marseille", "Gap", 240)
      _ <- individualTimeTrial(gap, orcieresMerlette, 39)
      _ <- restDay(orcieresMerlette)
      _ <- roadStage("Gap", "Briançon", 175)
      _ <- roadStage("Briançon", "Alpe d'Huez", 165)
      _ <- roadStage("Le Bourg-d'Oisans", "Villard-de-Lans", 91.5)
      _ <- roadStage("Villard-de-Lans", "Aix-les-Bains", 125)
      _ <- roadStage("Aix-les-Bains", "L'Isle-d'Abeau", 130)
      _ <- individualTimeTrial(versailles, paris, 24.5)
    } yield()

    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1989,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1990:StageRaceEdition = {

    val besancon = Location("Besancon")(France)
    val saintGervais = Location("Saint-Gervais")(France)

    val composition = for {
      _ <- prologue(futuroscope, 6.3)
      _ <- morningStage
      _ <- criterium(futuroscope, 138.5)
      _ <- afternoonStage
      _ <- teamTimeTrial(futuroscope, 44.5)
      _ <- roadStage("Poitiers", "Nantes", 233)
      _ <- roadStage("Nantes", "Mont Saint-Michel", 203)
      _ <- roadStage("Avranches", "Rouen", 301)
      _ <- restDay(rouen)
      _ <- roadStage("Sarrebourg", "Vittel", 202.5)
      _ <- individualTimeTrial(vittel, epinal, 61.5)
      _ <- roadStage("Epinal", "Besancon", 181.5)
      _ <- roadStage(besancon, geneva, 196)
      _ <- roadStage(geneva, saintGervais, 118.5)
      _ <- roadStage("Saint-Gervais", "Alpe d'Huez", 182.5)
      _ <- individualTimeTrial(fontaine, villardDeLans, 33.5)
      _ <- restDay(villardDeLans)
      _ <- roadStage("Villard-de-Lans", "Saint-Étienne", 149)
      _ <- roadStage("Le Puy-en-Velay", "Millau", 205)
      _ <- roadStage("Millau", "Revel", 170)
      _ <- roadStage("Blagnac", "Luz Ardiden", 215)
      _ <- roadStage("Lourdes", pau, 150)
      _ <- roadStage(pau, "Bordeaux", 202)
      _ <- roadStage("Castillon-la-Bataille", limoges, 182.5)
      _ <- individualTimeTrial(lacDeVassiviere, 45.5)
      _ <- roadStage("Bretigny-sur-Orge", "Paris", 182.5)
    } yield()

    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1990,6,30)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1991:StageRaceEdition = {

    val composition = for {
      _ <- prologue(lyon, 5.4)
      _ <- morningStage
      _ <- criterium(lyon, 114.5)
      _ <- afternoonStage
      _ <- teamTimeTrial(bron, chassieu, 36.5)
      _ <- roadStage("Villeurbanne", "Dijon", 210.5)
      _ <- roadStage("Dijon", "Reims", 286)
      _ <- roadStage("Reims", "Valenciennes", 149.5)
      _ <- roadStage(arras, "Le Havre", 259)
      _ <- roadStage("Le Havre", "Argentan", 167)
      _ <- individualTimeTrial(argentan, alencon, 73)
      _ <- roadStage("Alencon", rennes, 161)
      _ <- roadStage(rennes, "Quimper", 207.5)
      _ <- roadStage("Quimper", "Saint-Herblain", 246)
      _ <- restDay(pau)
      _ <- roadStage(pau, jaca, 192)
      _ <- roadStage(jaca, "Val Louron", 232)
      _ <- roadStage("St Gaudens", "Castres", 172.5)
      _ <- roadStage("Albi", "Ales", 235)
      _ <- roadStage("Ales", "Gap", 215)
      _ <- roadStage("Gap", "Alpe d'Huez", 125)
      _ <- roadStage("Le Bourg-d'Oisans", morzine, 255)
      _ <- roadStage(morzine, "Aix-les-Bains", 177)
      _ <- roadStage("Aix-les-Bains", "Macon", 160)
      _ <- individualTimeTrial(lugny, macon, 57)
      _ <- roadStage("Melun", "Paris", 178)
    } yield()

    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1991,7,6)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1992:StageRaceEdition = {
    val composition = for {
      _ <- prologue(sanSebastian, 8.0)
      _ <- criterium(sanSebastian, length=194.5)
      _ <- roadStage(start=sanSebastian, finish=pau, length=255.0)
      _ <- roadStage(start=pau, finish="Bordeaux", length=210.0)
      _ <- teamTimeTrial(libourne, 63.5)
      _ <- roadStage(start="Nogent-sur-Oise", finish="Wasquehal", length=196.0)
      _ <- roadStage(start=roubaix, finish=brussels, length=167.0)
      _ <- roadStage(start=brussels, finish=valkenburg, length=196.5)
      _ <- roadStage(start=valkenburg, finish=koblenz, length=206.5)
      _ <- individualTimeTrial(luxembourgCity, 65)
      _ <- roadStage(start=luxembourgCity, finish="Strasbourg", length=217.0)
      _ <- roadStage(start="Strasbourg", finish="Mulhouse", length=249.5)
      _ <- roadStage(start="Dole", finish="Saint-Gervais", length=267.5)
      _ <- restDay(dole)
      _ <- roadStage(start="Saint-Gervais", finish=sestriere, length=254.5)
      _ <- roadStage(start=sestriere, finish="Alpe d'Huez", length=186.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Saint-Étienne", length=198.0)
      _ <- roadStage(start="Saint-Étienne", finish="La Bourboule", length=212.0)
      _ <- roadStage(start="La Bourboule", finish="Montlucon", length=189.0)
      _ <- roadStage(start="Montlucon", finish="Tours", length=212.0)
      _ <- individualTimeTrial(tours, blois, 64.0)
      _ <- roadStage(start="Blois", finish="Nanterre", length=222.0)
      _ <- roadStage(start="La Defense", finish="Paris", length=141.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1992,7,4)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1993:StageRaceEdition = {
    val composition = for {
      _ <- prologue(lePuyDuFou, 6.8)
      _ <- roadStage(start="Lucon", finish="Les Sables-d'Olonne", length=215.0)
      _ <- roadStage(start="Les Sables-d'Olonne", finish="Vannes", length=227.5)
      _ <- roadStage(start="Vannes", finish="Dinard", length=189.5)
      _ <- teamTimeTrial(start=dinard, finish=avranches, length=81.0)
      _ <- roadStage(start="Avranches", finish="Evreux", length=225.5)
      _ <- roadStage(start="Evreux", finish="Amiens", length=158.0)
      _ <- roadStage(start="Peronne", finish="Chalons-sur-Marne", length=199.0)
      _ <- roadStage(start="Chalons-sur-Marne", finish="Verdun", length=184.5)
      _ <- individualTimeTrial(lacDeMadine, 59.0)
      _ <- restDay(villardDeLans)
      _ <- roadStage(start="Villard-de-Lans", finish="Serre Chevalier", length=203.0)
      _ <- roadStage(start="Serre Chevalier", finish="Isola 2000", length=179.0)
      _ <- roadStage(start="Isola", finish="Marseille", length=286.5)
      _ <- roadStage(start="Marseille", finish="Montpellier", length=181.5)
      _ <- roadStage(start="Montpellier", finish="Perpignan", length=223.0)
      _ <- roadStage(start="Perpignan", finish=pal, length=231.5)
      _ <- restDay(pal)
      _ <- roadStage(start=pal, finish="Saint-Lary-Soulan Pla d'Adet", length=230.0)
      _ <- roadStage(start="Tarbes", finish=pau, length=190.0)
      _ <- roadStage(start="Orthez", finish="Bordeaux", length=195.5)
      _ <- individualTimeTrial(bretignySurOrge, montlhery, 48.0)
      _ <- roadStage(start="Viry-Chatillon", finish="Paris", length=196.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1993,7,3)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1994:StageRaceEdition = {
    val composition = for {
      _ <- prologue(lille, 7.2)
      _ <- roadStage(start="Lille", finish="Armentieres", length=234.0)
      _ <- roadStage(start=roubaix, finish="Boulogne-sur-Mer", length=203.5)
      _ <- teamTimeTrial(start=calais, finish=eurotunnel, length=66.5)
      _ <- roadStage(start=dover, finish=brighton, length=204.5)
      _ <- criterium(portsmouth, length=187.0)
      _ <- roadStage(start="Cherbourg", finish=rennes, length=270.5)
      _ <- roadStage(start=rennes, finish="Futuroscope", length=259.5)
      _ <- roadStage(start="Poitiers", finish="Trelissac", length=218.5)
      _ <- individualTimeTrial(perigueux, bergerac, 64.0)
      _ <- roadStage(start="Bergerac", finish="Cahors", length=160.5)
      _ <- roadStage(start="Cahors", finish="Hautacam", length=263.5)
      _ <- restDay(lourdes)
      _ <- roadStage(start="Lourdes", finish="Luz Ardiden", length=204.5)
      _ <- roadStage(start="Bagneres-de-Bignore", finish="Albi", length=223.0)
      _ <- roadStage(start="Castres", finish="Montpellier", length=202.0)
      _ <- roadStage(start="Montpellier", finish="Carpentras", length=231.0)
      _ <- roadStage(start="Valreas", finish="Alpe d'Huez", length=224.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Val Thorens", length=149.0)
      _ <- roadStage(start="Moutiers", finish="Cluses", length=174.5)
      _ <- individualTimeTrial(cluses, avoriaz, 47.5)
      _ <- roadStage(start=morzine, finish="Lac Saint-Point", length=208.5)
      _ <- roadStage(start="Disneyland", finish="Paris", length=175.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1994,7,2)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1995:StageRaceEdition = {
    val composition = for {
      _ <- prologue(saintBrieuc, 7.3)
      _ <- roadStage(start="Dinan", finish="Lannion", length=233.5)
      _ <- roadStage(start="Perros-Guirec", finish="Vitre", length=235.5)
      _ <- teamTimeTrial(start=mayenne, finish=alencon, length=67.0)
      _ <- roadStage(start="Alencon", finish="Le Havre", length=162.0)
      _ <- roadStage(start="Fecamp", finish="Dunkirk", length=261.0)
      _ <- roadStage(start="Dunkirk", finish=charleroi, length=202.0)
      _ <- roadStage(start=charleroi, finish=liege, length=203.0)
      _ <- individualTimeTrial(huy, seraing, 54.0)
      _ <- restDay(leGrandBornand)
      _ <- roadStage(start="Le Grand-Bornand", finish=laPlagne, length=160.0)
      _ <- roadStage(start=laPlagne, finish="Alpe d'Huez", length=162.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Saint-Étienne", length=199.0)
      _ <- roadStage(start="Saint-Étienne", finish="Mende", length=222.5)
      _ <- roadStage(start="Mende", finish="Revel", length=245.0)
      _ <- roadStage(start="Saint-Orens-de-Gameville", finish="Guzet-Neige", length=164.0)
      _ <- restDay(saintGirons)
      _ <- roadStage(start="Saint-Girons", finish="Cauterets", length=206.0)
      _ <- roadStage(start="Tarbes", finish=pau, length=149.0)
      _ <- roadStage(start=pau, finish="Bordeaux", length=246.0)
      _ <- roadStage(start="Montpon-Menesterol", finish=limoges, length=246.0)
      _ <- individualTimeTrial(lacDeVassiviere, 46.5)
      _ <- roadStage(start="Sainte-Genevieve-des-Bois", finish="Paris", length=155.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1995,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1996:StageRaceEdition = {
    val composition = for {
      _ <- prologue(sHertogenbosch, 9.4)
      _ <- criterium(sHertogenbosch, length=209.0)
      _ <- roadStage(start=sHertogenbosch, finish="Wasquehal", length=247.5)
      _ <- roadStage(start="Wasquehal", finish="Nogent-sur-Oise", length=195.0)
      _ <- roadStage(start="Soissons", finish="Lac de Madine", length=232.0)
      _ <- roadStage(start="Lac de Madine", finish="Besancon", length=242.0)
      _ <- roadStage(start="Arc-et-Senans", finish="Aix-les-Bains", length=207.0)
      _ <- roadStage(start="Chambery", finish="Les Arcs", length=200.0)
      _ <- individualTimeTrial(bourgSaintMaurice, valDIsere, 30.5)
      _ <- roadStage(start="Le Monetier-les-Bains", finish=sestriere, length=46.0)
      _ <- roadStage(start=turin, finish="Gap", length=208.5)
      _ <- restDay(gap)
      _ <- roadStage(start="Gap", finish="Valence", length=202.0)
      _ <- roadStage(start="Valence", finish="Le Puy-en-Velay", length=143.5)
      _ <- roadStage(start="Le Puy-en-Velay", finish="Super Besse", length=177.0)
      _ <- roadStage(start="Besse", finish="Tulle", length=186.5)
      _ <- roadStage(start="Brive-la-Gaillarde", finish="Villenueve-sur-Lot", length=176.0)
      _ <- roadStage(start="Agen", finish="Hautacam", length=199.0)
      _ <- roadStage(start="Argeles-Gazost", finish=pamplona, length=262.0)
      _ <- roadStage(start=pamplona, finish=hendaye, length=154.5)
      _ <- roadStage(start=hendaye, finish="Bordeaux", length=226.5)
      _ <- individualTimeTrial(bordeaux, saintEmilion, 63.5)
      _ <- roadStage(start="Palaiseau", finish="Paris", length=147.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1996,6,29)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1997:StageRaceEdition = {
    val composition = for {
      _ <- prologue(rouen, 7.3)
      _ <- roadStage(start="Rouen", finish="Forges-les-Eaux", length=192.0)
      _ <- roadStage(start="Saint-Valery-en-Caux", finish="Vire", length=262.0)
      _ <- roadStage(start="Vire", finish="Plumelec", length=224.0)
      _ <- roadStage(start="Plumelec", finish="Le Puy du Fou", length=223.0)
      _ <- roadStage(start="Chantonnay", finish="La Chatre", length=261.5)
      _ <- roadStage(start="Le Blanc", finish="Marennes", length=217.5)
      _ <- roadStage(start="Marennes", finish="Bordeaux", length=194.0)
      _ <- roadStage(start="Sauternes", finish=pau, length=161.5)
      _ <- roadStage(start=pau, finish="Loudenvielle", length=182.0)
      _ <- roadStage(start="Luchon", finish=arcalis, length=182.0)
      _ <- roadStage(start=arcalis, finish="Perpignan", length=192.0)
      _ <- restDay(saintEtienne)
      _ <- individualTimeTrial(saintEtienne, 55.0)
      _ <- roadStage(start="Saint-Étienne", finish="Alpe d'Huez", length=203.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Courchevel", length=148.0)
      _ <- roadStage(start="Courchevel", finish=morzine, length=208.5)
      _ <- roadStage(start=morzine, finish=fribourg, length=181.0)
      _ <- roadStage(start=fribourg, finish="Colmar", length=218.5)
      _ <- roadStage(start="Colmar", finish="Montbeliard", length=175.5)
      _ <- roadStage(start="Montbeliard", finish="Dijon", length=172.0)
      _ <- individualTimeTrial(disneylandParis, 63.0)
      _ <- roadStage(start="Disneyland", finish="Paris", length=149.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1997,7,5)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1998:StageRaceEdition = {
    val composition = for {
      _ <- prologue(dublin, 5.6)
      _ <- criterium(dublin, length=180.5)
      _ <- roadStage(start=enniscorthy, finish=cork, length=205.5)
      _ <- roadStage(start="Roscoff", finish="Lorient", length=169.0)
      _ <- roadStage(start="Ploulay", finish="Cholet", length=252.0)
      _ <- roadStage(start="Cholet", finish="Chateauroux", length=228.5)
      _ <- roadStage(start="La Chatre", finish="Brive-la-Gaillarde", length=204.5)
      _ <- individualTimeTrial(meyrignacLEglise, correze, 58.0)
      _ <- roadStage(start="Brive-la-Gaillarde", finish="Montauban", length=190.5)
      _ <- roadStage(start="Montauban", finish=pau, length=210.0)
      _ <- roadStage(start=pau, finish="Luchon", length=196.5)
      _ <- roadStage(start="Luchon", finish="Plateau de Beille", length=170.0)
      _ <- restDay(ariege)
      _ <- roadStage(start="Tarascon-sur-Ariege", finish="Le Cap d'Agde", length=222.0)
      _ <- roadStage(start="Frontignan la Peyrade", finish="Carpentras", length=196.0)
      _ <- roadStage(start="Valreas", finish=grenoble, length=186.5)
      _ <- roadStage(start=grenoble, finish="Les Deux Alpes", length=189.0)
      _ <- roadStage(start="Vizelle", finish="Albertville", length=204.0)
      _ <- roadStage(start="Albertville", finish="Aix-les-Bains", length=149.0)
      _ <- roadStage(start="Aix-les-Bains", finish=neuchatel, length=218.5)
      _ <- roadStage(start=laChauxDeFonds, finish="Autun", length=242.0)
      _ <- individualTimeTrial(montceauLesMines, leCreusot, 52.0)
      _ <- roadStage(start="Melun", finish="Paris", length=147.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1998,7,11)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf1999:StageRaceEdition = {
    val composition = for {
      _ <- prologue(lePuyDuFou, 6.8)
      _ <- roadStage(start="Montaigu", finish="Challans", length=208.0)
      _ <- roadStage(start="Challans", finish="Saint-Nazaire", length=176.0)
      _ <- roadStage(start="Nantes", finish="Laval", length=194.5)
      _ <- roadStage(start="Laval", finish="Blois", length=194.5)
      _ <- roadStage(start="Bonneval", finish="Amiens", length=233.5)
      _ <- roadStage(start="Amiens", finish="Mauberge", length=171.5)
      _ <- roadStage(start="Avesnes-sur-Helpe", finish="Thionville", length=227.0)
      _ <- individualTimeTrial(metz, 56.5)
      _ <- restDay(leGrandBornand)
      _ <- roadStage(start="Le Grand-Bornand", finish=sestriere, length=213.5)
      _ <- roadStage(start=sestriere, finish="Alpe d'Huez", length=220.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Saint-Étienne", length=198.5)
      _ <- roadStage(start="Saint Galmier", finish="Saint-Flour", length=201.5)
      _ <- roadStage(start="Saint-Flour", finish="Albi", length=236.5)
      _ <- roadStage(start="Castres", finish="Saint-Gaudens", length=199.0)
      _ <- restDay(saintGaudens)
      _ <- roadStage(start="Saint-Gaudens", finish="Piau-Engaly", length=173.0)
      _ <- roadStage(start="Lannemezan", finish=pau, length=192.0)
      _ <- roadStage(start="Mourenx", finish="Bordeaux", length=200.0)
      _ <- roadStage(start="Jonzac", finish="Futuroscope", length=187.5)
      _ <- individualTimeTrial(futuroscope, 57.0)
      _ <- roadStage(start="Arpajon", finish="Paris", length=143.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(1999,7,3)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2000:StageRaceEdition = {
    val composition = for {
      _ <- criterium(futuroscope, 16.5)
      _ <- roadStage(start="Futuroscope", finish="Loudon", length=194.0)
      _ <- roadStage(start="Loudon", finish="Nantes", length=161.5)
      _ <- teamTimeTrial(start=nantes, finish=saintNazaire, length=70.0)
      _ <- roadStage(start="Vannes", finish="Vitre", length=202.0)
      _ <- roadStage(start="Vitre", finish="Tours", length=198.5)
      _ <- roadStage(start="Tours", finish=limoges, length=205.5)
      _ <- roadStage(start=limoges, finish="Villeneuve-sur-Lot", length=203.5)
      _ <- roadStage(start="Agen", finish="Dax", length=181.0)
      _ <- roadStage(start="Dax", finish="Hautacam", length=205.0)
      _ <- roadStage(start="Bagnères-de-Bigorre", finish="Revel", length=218.5)
      _ <- restDay(provence)
      _ <- roadStage(start="Carpentras", finish="Mont Ventoux", length=149.0)
      _ <- roadStage(start="Avignon", finish="Draguignan", length=185.5)
      _ <- roadStage(start="Briançon", finish="Courchevel", length=173.5)
      _ <- restDay(courchevel)
      _ <- roadStage(start="Courchevel", finish=morzine, length=196.5)
      _ <- roadStage(start="Evian-les-Bains", finish=lausanne, length=155.0)
      _ <- roadStage(start=lausanne, finish=freiburg, length=246.5)
      _ <- individualTimeTrial(freiburg, mulhouse, 58.5)
      _ <- roadStage(start="Belfort", finish="Troyes", length=254.5)
      _ <- criterium(paris, 138.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2000,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2001:StageRaceEdition = {
    val composition = for {
      _ <- prologue(dunkerque, 8.2)
      _ <- roadStage(start="Saint-Omer", finish="Boulogne-sur-Mer", length=194.5)
      _ <- roadStage(start="Calais", finish=antwerp, length=220.5)
      _ <- roadStage(start=antwerp, finish=seraing, length=198.5)
      _ <- roadStage(start=huy, finish="Verdun", length=215.0)
      _ <- teamTimeTrial(start=verdun, finish=barLeDuc, length=67.0)
      _ <- roadStage(start="Commercy", finish="Strasbourg", length=211.5)
      _ <- roadStage(start="Strasbourg", finish="Colmar", length=162.5)
      _ <- roadStage(start="Colmar", finish="Pontarlier", length=222.5)
      _ <- roadStage(start="Pontarlier", finish="Aix-les-Bains", length=185.0)
      _ <- roadStage(start="Aix-les-Bains", finish="Alpe d'Huez", length=209.0)
      _ <- individualTimeTrial(grenoble, chamrousse, 32.0)
      _ <- restDay(perpignan)
      _ <- roadStage(start="Perpignan", finish="Plateau de Bonascre", length=165.5)
      _ <- roadStage(start="Foix", finish="Saint-Lary-Soulan Pla d'Adet", length=194.0)
      _ <- roadStage(start="Tarbes", finish="Luz Ardiden", length=141.5)
      _ <- restDay(pau)
      _ <- roadStage(start=pau, finish="Lavaur", length=232.5)
      _ <- roadStage(start="Castelsarrasin", finish="Sarran", length=229.5)
      _ <- roadStage(start="Brive-la-Gaillarde", finish="Montlucon", length=194.0)
      _ <- individualTimeTrial(montlucon, saintAmandMontrond, 61.0)
      _ <- roadStage(start="Orleans", finish="Evry", length=149.5)
      _ <- roadStage(start="Corbeil-Essonnes", finish="Paris", length=160.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2001,7,7)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2002:StageRaceEdition = {
    val composition = for {
      _ <- prologue(luxembourgCity, 7)
      _ <- criterium(luxembourgCity, 192.5)
      _ <- roadStage(start=luxembourgCity, finish=saarbrucken, length=181.0)
      _ <- roadStage(start="Metz", finish="Reims", length=174.5)
      _ <- teamTimeTrial(start=epernay, finish=chateauThierry, length=67.5)
      _ <- roadStage(start="Soissons", finish="Rouen", length=195.0)
      _ <- roadStage(start="Forges-les-Eaux", finish="Alencon", length=199.5)
      _ <- roadStage(start="Bagnoles-de-l'Orne", finish="Avranches", length=176.0)
      _ <- roadStage(start="Saint-Martin-de-Landelles", finish="Plouay", length=217.5)
      _ <- individualTimeTrial(lanester, lorient, 52.0)
      _ <- restDay(bordeaux)
      _ <- roadStage(start="Bazas", finish=pau, length=147.0)
      _ <- roadStage(start=pau, finish="La Mongie", length=158.0)
      _ <- roadStage(start="Lannemezan", finish="Plateau de Beille", length=199.5)
      _ <- roadStage(start="Lavelanet", finish="Beziers", length=171.0)
      _ <- roadStage(start="Lodeve", finish="Mont Ventoux", length=221.0)
      _ <- restDay(vaucluse)
      _ <- roadStage(start="Vaison-la-Romaine", finish="Les Deux-Alpes", length=226.5)
      _ <- roadStage(start="Les Deux-Alpes", finish=laPlagne, length=179.5)
      _ <- roadStage(start="Aime", finish="Cluses", length=142.0)
      _ <- roadStage(start="Cluses", finish="Bourg-en-Bresse", length=176.5)
      _ <- individualTimeTrial(regnieDurette, macon, 50.0)
      _ <- roadStage(start="Melun", finish="Paris", length=144.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2002,7,6)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2003:StageRaceEdition = {
    val composition = for {
      _ <- prologue(paris, 6.5)
      _ <- roadStage(start="Saint-Denix", finish="Meaux", length=168.0)
      _ <- roadStage(start="La Ferte-sous-Jouarre", finish="Sedan", length=204.5)
      _ <- roadStage(start="Charleville-Mezieres", finish="Saint-Dizier", length=167.5)
      _ <- teamTimeTrial(start=joinville, finish=saintDizier, length=69.0)
      _ <- roadStage(start="Troyes", finish="Nevers", length=196.5)
      _ <- roadStage(start="Nevers", finish="Lyon", length=230.0)
      _ <- roadStage(start="Lyon", finish=morzine, length=230.5)
      _ <- roadStage(start="Sallanches", finish="Alpe d'Huez", length=219.0)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Gap", length=184.5)
      _ <- roadStage(start="Gap", finish="Marseille", length=219.5)
      _ <- restDay(narbonne)
      _ <- roadStage(start=narbonne, finish="Toulouse", length=153.5)
      _ <- individualTimeTrial(gaillac, capDecouverte, 47.0)
      _ <- roadStage(start="Toulouse", finish="Ax 3 Domaines", length=197.5)
      _ <- roadStage(start="Saint-Girons", finish="Loudenville", length=191.5)
      _ <- roadStage(start="Bagnères-de-Bigorre", finish="Luz Ardiden", length=159.5)
      _ <- restDay(pau)
      _ <- roadStage(start=pau, finish="Bayonne", length=197.5)
      _ <- roadStage(start="Dax", finish="Bordeaux", length=181.0)
      _ <- roadStage(start="Bordeaux", finish="Saint-Maixent-l'Ecole", length=203.5)
      _ <- individualTimeTrial(pornic, nantes, 49.0)
      _ <- roadStage(start="Ville-d'Avray", finish="Paris", length=152.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2003,7,5)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2004:StageRaceEdition = {
    val composition = for {
      _ <- prologue(liege, 6.1)
      _ <- roadStage(start=liege, finish=charleroi, length=202.5)
      _ <- roadStage(start=charleroi, finish=namur, length=197.0)
      _ <- roadStage(start=waterloo, finish="Wasquehal", length=210.0)
      _ <- teamTimeTrial(start=cambrai, finish=arras, length=64.5)
      _ <- roadStage(start="Amiens", finish="Chartres", length=200.5)
      _ <- roadStage(start="Bonneval", finish=angers, length=196.0)
      _ <- roadStage(start="Chateaubriant", finish="Saint-Brieuc", length=204.5)
      _ <- roadStage(start="Lamballe", finish="Quimper", length=168.0)
      _ <- restDay(limoges)
      _ <- roadStage(start="Saint-Leonard-de-Noblat", finish="Gueret", length=160.5)
      _ <- roadStage(start=limoges, finish="Saint-Flour", length=237.0)
      _ <- roadStage(start="Saint-Flour", finish="Figeac", length=164.0)
      _ <- roadStage(start="Castelsarrasin", finish="La Mongie", length=197.5)
      _ <- roadStage(start="Lannemezan", finish="Plateau de Beille", length=205.5)
      _ <- roadStage(start="Carcassonne", finish="Nimes", length=192.5)
      _ <- restDay(nimes)
      _ <- roadStage(start="Valreas", finish="Villard-des-Lans", length=180.5)
      _ <- individualTimeTrial(leBourgDOisans, alpeDHuez, 15.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Le Grand-Bornand", length=204.5)
      _ <- roadStage(start="Annemasse", finish="Lons-le-Saunier", length=166.5)
      _ <- individualTimeTrial(besancon, 55.0)
      _ <- roadStage(start="Montereau-Fault-Yonne", finish="Paris", length=163.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2004,7,3)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2005:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial(fromentine, noirmoutierEnLIle, 19.0)
      _ <- roadStage(start="Challans", finish="Les Essarts", length=181.5)
      _ <- roadStage(start="La Chataigneraie", finish="Tours", length=212.5)
      _ <- teamTimeTrial(start=tours, finish=blois, length=67.5)
      _ <- roadStage(start="Chambord", finish="Montargis", length=183.0)
      _ <- roadStage(start="Troyes", finish=nancy, length=199.0)
      _ <- roadStage(start="Luneville", finish=karlsruhe, length=228.5)
      _ <- roadStage(start=pforzheim, finish="Gerardmer", length=231.5)
      _ <- roadStage(start="Gerardmer", finish="Mulhouse", length=171.0)
      _ <- roadStage(start=grenoble, finish="Courchevel", length=177.0)
      _ <- restDay(grenoble)
      _ <- roadStage(start="Courchevel", finish="Briançon", length=173.0)
      _ <- roadStage(start="Briançon", finish="Digne-les-Bains", length=187.0)
      _ <- roadStage(start="Miramas", finish="Montpellier", length=173.5)
      _ <- roadStage(start="Agde", finish="Ax 3 Domaines", length=220.5)
      _ <- roadStage(start="Lezat-sur-Leze", finish="Saint-Lary-Soulan Pla d'Adet", length=205.5)
      _ <- roadStage(start="Mourenx", finish=pau, length=180.5)
      _ <- restDay(pau)
      _ <- roadStage(start=pau, finish="Revel", length=239.5)
      _ <- roadStage(start="Albi", finish="Mende", length=189.0)
      _ <- roadStage(start="Issoire", finish="Le Puy-en-Velay", length=153.5)
      _ <- individualTimeTrial(saintEtienne, 55.5)
      _ <- roadStage(start="Corbeil-Essonnes", finish="Paris", length=144.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2005,7,2)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2006:StageRaceEdition = {
    val composition = for {
      _ <- prologue(strasbourg, 7.1)
      _ <- criterium(strasbourg, 184.5)
      _ <- roadStage(start="Obernai", finish=eschSurAlzette, length=228.5)
      _ <- roadStage(start=eschSurAlzette, finish=valkenburg, length=216.5)
      _ <- roadStage(start=huy, finish="Saint-Quentin", length=207.0)
      _ <- roadStage(start="Beauvais", finish="Caen", length=225.0)
      _ <- roadStage(start="Lisieux", finish="Vitre", length=189.0)
      _ <- individualTimeTrial(saintGregoire, rennes, 52.0)
      _ <- roadStage(start="Saint-Meen-le-Grand", finish="Lorient", length=181.0)
      _ <- restDay(bordeaux)
      _ <- roadStage(start="Bordeaux", finish="Dax", length=169.5)
      _ <- roadStage(start="Cambo-les-Bains", finish=pau, length=190.5)
      _ <- roadStage(start="Tarbes", finish="Val d'Aran/Pla-de-Beret", length=206.5)
      _ <- roadStage(start="Luchon", finish="Carcassonne", length=211.5)
      _ <- roadStage(start="Beziers", finish="Montelimar", length=230.0)
      _ <- roadStage(start="Montelimar", finish="Gap", length=180.5)
      _ <- restDay(gap)
      _ <- roadStage(start="Gap", finish="Alpe d'Huez", length=187.0)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="La Toussuire", length=182.0)
      _ <- roadStage(start="Saint-Jean-de-Maurienne", finish=morzine, length=200.5)
      _ <- roadStage(start=morzine, finish="Macon", length=197.0)
      _ <- individualTimeTrial(leCreusot, montceauLesMines, 57.0)
      _ <- roadStage(start="Antony/Parc de Sceaux", finish="Paris", length=154.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2006,7,1)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2007:StageRaceEdition = {
    val composition = for {
      _ <- prologue(london, 7.9)
      _ <- roadStage(start=london, finish=canterbury, length=203.0)
      _ <- roadStage(start="Dunkirk", finish=ghent, length=168.5)
      _ <- roadStage(start=waregem, finish="Compiegne", length=236.5)
      _ <- roadStage(start="Villers-Cotterets", finish="Joigny", length=193.0)
      _ <- roadStage(start="Chablis", finish="Autun", length=182.5)
      _ <- roadStage(start="Semur-en-Auxois", finish="Bourg-en-Bresse", length=199.5)
      _ <- roadStage(start="Bourg-en-Bresse", finish="Le Grand-Bornand", length=197.5)
      _ <- roadStage(start="Le Grand-Bornand", finish="Tignes", length=165.0)
      _ <- restDay(tignes)
      _ <- roadStage(start="Val-d'Isere", finish="Briançon", length=159.5)
      _ <- roadStage(start="Tallard", finish="Marseille", length=229.5)
      _ <- roadStage(start="Marseille", finish="Montpellier", length=182.5)
      _ <- roadStage(start="Montpellier", finish="Castres", length=178.5)
      _ <- individualTimeTrial(albi, 54.0)
      _ <- roadStage(start="Mazamet", finish="Plateau-de-Beille", length=197.0)
      _ <- roadStage(start="Foix", finish="Loudenvielle", length=196.0)
      _ <- restDay(pau)
      _ <- roadStage(start="Orthez", finish="Gourette-Col d'Aubisque", length=218.5)
      _ <- roadStage(start=pau, finish="Castelsarrasin", length=188.5)
      _ <- roadStage(start="Cahors", finish="Angouleme", length=211.0)
      _ <- individualTimeTrial(cognac, angouleme, 55.5)
      _ <- roadStage(start="Marcoussis", finish="Paris", length=146.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2007,7,7)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2008:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start=brest, finish="Plumelec", length=197.5)
      _ <- roadStage(start="Aulay", finish="Saint-Brieuc", length=164.5)
      _ <- roadStage(start="Saint-Malo", finish="Nantes", length=208.0)
      _ <- individualTimeTrial(cholet, 29.5)
      _ <- roadStage(start="Cholet", finish="Chateauroux", length=232.0)
      _ <- roadStage(start="Aigurande", finish="Super-Besse Sancy", length=195.0)
      _ <- roadStage(start="Brioude", finish="Aurillac", length=159.0)
      _ <- roadStage(start="Figeac", finish="Toulouse", length=172.5)
      _ <- roadStage(start="Toulouse", finish="Bagnères-de-Bigorre", length=224.0)
      _ <- roadStage(start=pau, finish="Hautacam", length=156.0)
      _ <- restDay(pau)
      _ <- roadStage(start="Lannemezan", finish="Foix", length=167.5)
      _ <- roadStage(start="Lavalanet", finish=narbonne, length=168.5)
      _ <- roadStage(start=narbonne, finish="Nimes", length=182.0)
      _ <- roadStage(start="Nimes", finish="Digne-les-Bains", length=194.5)
      _ <- roadStage(start="Embrun", finish=pratoNevoso, length=183.0)
      _ <- restDay(cuneo)
      _ <- roadStage(start=cuneo, finish="Jausiers", length=157.0)
      _ <- roadStage(start="Embrun", finish="Alpe d'Huez", length=210.5)
      _ <- roadStage(start="Bourg-d'Oisans", finish="Saint-Étienne", length=196.5)
      _ <- roadStage(start="Roanne", finish="Montlucon", length=165.5)
      _ <- individualTimeTrial(cerilly, saintAmandMontrond, 53.0)
      _ <- roadStage(start="Etampes", finish="Paris", length=143.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2008,7,5)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2009:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial(monaco, 15.5)
      _ <- roadStage(start=monaco, finish="Brignoles", length=187.0)
      _ <- roadStage(start="Marseille", finish="La Grande-Motte", length=196.5)
      _ <- teamTimeTrial(montpellier, 39.0)
      _ <- roadStage(start="Cap d'Agde", finish="Perpignan", length=196.5)
      _ <- roadStage(start=girona, finish=barcelona, length=181.5)
      _ <- roadStage(start=barcelona, finish=arcalis, length=224.0)
      _ <- roadStage(start="Andorra la Vella", finish="Saint-Girons", length=176.5)
      _ <- roadStage(start="Saint-Girons", finish="Tarbes", length=160.5)
      _ <- restDay(limoges)
      _ <- roadStage(start=limoges, finish="Issoudun", length=194.5)
      _ <- roadStage(start="Vatan", finish="Saint-Fargeau", length=192.0)
      _ <- roadStage(start="Tonnerre", finish="Vittel", length=211.5)
      _ <- roadStage(start="Vittel", finish="Colmar", length=200.0)
      _ <- roadStage(start="Colmar", finish="Besancon", length=199.0)
      _ <- roadStage(start="Pontarlier", finish=verbier, length=207.5)
      _ <- restDay(verbier)
      _ <- roadStage(start=martigny, finish="Bourg-Saint-Maurice", length=159.0)
      _ <- roadStage(start="Bourg-Saint-Maurice", finish="Le Grand-Bornand", length=169.5)
      _ <- individualTimeTrial(annecy, 40.5)
      _ <- roadStage(start="Bourgoin-Jallieu", finish="Aubenas", length=178.0)
      _ <- roadStage(start="Montelimar", finish="Mont Ventoux", length=167.0)
      _ <- roadStage(start="Montereau-Fault-Yonne", finish="Paris", length=164.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2009,7,4)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2010:StageRaceEdition = {
    val composition = for {
      _ <- prologue(rotterdam, 8.9)
      _ <- roadStage(start=rotterdam, finish=brussels, length=223.5)
      _ <- roadStage(start=brussels, finish=spa, length=201.0)
      _ <- roadStage(start=wanze, finish="Arenberg Porte de Hainaut", length=213.0)
      _ <- roadStage(start="Cambrai", finish="Reims", length=153.5)
      _ <- roadStage(start="Epernay", finish="Montargis", length=187.5)
      _ <- roadStage(start="Montargis", finish="Gueugnon", length=227.5)
      _ <- roadStage(start="Tournus", finish="Station des Rousses", length=165.6)
      _ <- roadStage(start="Station des Rousses", finish="Morzine-Avoriaz", length=189.0)
      _ <- restDay(morzineAvoriaz)
      _ <- roadStage(start="Morzine-Avoriaz", finish="Saint-Jean-de-Maurienne", length=204.5)
      _ <- roadStage(start="Chambery", finish="Gap", length=179.0)
      _ <- roadStage(start="Sisteron", finish="Bourg-les-Valence", length=184.5)
      _ <- roadStage(start="Bourg-de-Peage", finish="Mende", length=210.5)
      _ <- roadStage(start="Rodez", finish="Revel", length=196.0)
      _ <- roadStage(start="Revel", finish="Ax 3 Domaines", length=184.5)
      _ <- roadStage(start="Pamiers", finish="Bagneres-de-Luchon", length=187.5)
      _ <- roadStage(start="Bagneres-de-Luchon", finish=pau, length=199.5)
      _ <- restDay(pau)
      _ <- roadStage(start=pau, finish="Col du Tourmalet", length=174.0)
      _ <- roadStage(start="Salies-de-Bearn", finish="Bordeaux", length=198.0)
      _ <- individualTimeTrial(bordeaux, pauillac, 52.0)
      _ <- roadStage(start="Longjumeau", finish="Paris", length=102.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2010,7,3)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2011:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Passage du Gois", finish="Mont des Alouettes", length=191.5)
      _ <- teamTimeTrial(lesEssarts, 23.0)
      _ <- roadStage(start="Olonne-sur-Mer", finish="Redon", length=198.0)
      _ <- roadStage(start="Lorient", finish="Mur-de-Bretagne", length=172.5)
      _ <- roadStage(start="Carhaix", finish="Cap Frehel", length=164.5)
      _ <- roadStage(start="Dinan", finish="Lisieux", length=226.5)
      _ <- roadStage(start="Le Mans", finish="Chateauroux", length=218.0)
      _ <- roadStage(start="Aigurande", finish="Super Besse", length=189.0)
      _ <- roadStage(start="Issoire", finish="Saint-Flour", length=208.0)
      _ <- restDay(leLioran)
      _ <- roadStage(start="Aurillac", finish="Carmaux", length=158.0)
      _ <- roadStage(start="Blaye-les-Mines", finish="Lavaur", length=167.5)
      _ <- roadStage(start="Cugnaux", finish="Luz Ardiden", length=211.0)
      _ <- roadStage(start=pau, finish="Lourdes", length=152.5)
      _ <- roadStage(start="Saint-Gaudens", finish="Plateau des Beille", length=168.5)
      _ <- roadStage(start="Limoux", finish="Montpellier", length=192.5)
      _ <- restDay(drome)
      _ <- roadStage(start="Saint-Paul-Trois-Chateaux", finish="Gap", length=162.5)
      _ <- roadStage(start="Gap", finish=pinerolo, length=179.0)
      _ <- roadStage(start=pinerolo, finish="Col du Galibier - Serre Chevalier", length=200.5)
      _ <- roadStage(start="Modane", finish="Alpe d'Huez", length=109.5)
      _ <- individualTimeTrial(grenoble, 42.5)
      _ <- roadStage(start="Creteil", finish="Paris", length=95.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2011,7,2)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2012:StageRaceEdition = {
    val composition = for {
      _ <- prologue(liege, 6.4)
      _ <- roadStage(start=liege, finish=seraing, length=198.0)
      _ <- roadStage(start=vise, finish=tournai, length=198.0)
      _ <- roadStage(start="Orchies", finish="Boulogne-sur-Mer", length=197.0)
      _ <- roadStage(start="Abbeville", finish="Rouen", length=214.5)
      _ <- roadStage(start="Rouen", finish="Saint-Quentin", length=196.5)
      _ <- roadStage(start="Epernay", finish="Metz", length=207.5)
      _ <- roadStage(start="Tomblaine", finish="La Planche des Belles Filles", length=199.0)
      _ <- roadStage(start="Belfort", finish="Porrentruy", length=157.5)
      _ <- individualTimeTrial(arcEtSenans, besancon, 41.5)
      _ <- restDay(macon)
      _ <- roadStage(start="Macon", finish="Bellegarde-sue-Valserine", length=194.5)
      _ <- roadStage(start="Albertville", finish="La Toussuire-Les Sybelles", length=148.0)
      _ <- roadStage(start="Saint-Jean-de-Maurienne", finish="Annonay-Davezieux", length=226.0)
      _ <- roadStage(start="Saint-Paul-Trois-Chateaux", finish="Cap d'Agne", length=217.0)
      _ <- roadStage(start="Limoux", finish="Foix", length=191.0)
      _ <- roadStage(start="Samatan", finish=pau, length=158.5)
      _ <- restDay(pau)
      _ <- roadStage(start=pau, finish="Bagneres-du-Luchon", length=197.0)
      _ <- roadStage(start="Bagneres-du-Luchon", finish="Peyragudes", length=143.5)
      _ <- roadStage(start="Blagnac", finish="Brive-la-Gaillarde", length=222.5)
      _ <- individualTimeTrial(bonneval, chartres, 53.5)
      _ <- roadStage(start="Rambouillet", finish="Paris", length=120.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2012,6,30)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2013:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Porto-Vecchio", finish="Bastia", length=213.0)
      _ <- roadStage(start="Bastia", finish="Ajaccio", length=156.0)
      _ <- roadStage(start="Ajaccio", finish="Calvi", length=145.5)
      _ <- teamTimeTrial(nice, 25.0)
      _ <- roadStage(start="Cagnes-sur-Mer", finish="Marseille", length=228.5)
      _ <- roadStage(start="Aix-en-Provence", finish="Montpellier", length=176.5)
      _ <- roadStage(start="Montpellier", finish="Albi", length=205.5)
      _ <- roadStage(start="Castres", finish="Ax 3 Domaines", length=195.0)
      _ <- roadStage(start="Saint-Girons", finish="Bagnères-de-Bigorre", length=168.5)
      _ <- restDay(saintNazaire)
      _ <- roadStage(start="Saint-Gildas-des-Bois", finish="Saint-Malo", length=197.0)
      _ <- individualTimeTrial(avranches, montSaintMichel, 33.0)
      _ <- roadStage(start="Fougeres", finish="Tours", length=218.0)
      _ <- roadStage(start="Tours", finish="Saint-Amand-Montrond", length=173.0)
      _ <- roadStage(start="Saint-Pourcain-sur-Sioule", finish="Lyon", length=191.0)
      _ <- roadStage(start="Givors", finish="Mont Ventoux", length=242.5)
      _ <- restDay(vaucluse)
      _ <- roadStage(start="Vaison-la-Romaine", finish="Gap", length=168.0)
      _ <- individualTimeTrial(embrun, chorges, 32.0)
      _ <- roadStage(start="Gap", finish="Alpe d'Huez", length=172.5)
      _ <- roadStage(start="Le Bourg-d'Oisans", finish="Le Grand-Bornand", length=204.5)
      _ <- roadStage(start=annecy, finish="Semnoz", length=125.0)
      _ <- roadStage(start="Versailles", finish="Paris", length=133.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2013,6,29)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2014:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start=leeds, finish=harrogate, length=190.5)
      _ <- roadStage(start=york, finish=sheffield, length=201.0)
      _ <- roadStage(start=cambridge, finish=london, length=155.0)
      _ <- roadStage(start="Le Touquet-Paris-Plage", finish="Lille Metropole", length=163.5)
      _ <- roadStage(start=ypres, finish="Arenberg Porte du Hainaut", length=152.5)
      _ <- roadStage(start=arras, finish="Reims", length=194.0)
      _ <- roadStage(start="Epernay", finish=nancy, length=234.5)
      _ <- roadStage(start="Tomblaine", finish="Gerardmer las Mauselaine", length=161.0)
      _ <- roadStage(start="Gerardmer", finish="Mulhouse", length=170.0)
      _ <- roadStage(start="Mulhouse", finish="La Planche des Belles Filles", length=161.5)
      _ <- restDay(besancon)
      _ <- roadStage(start="Besancon", finish="Oyonnax", length=187.5)
      _ <- roadStage(start="Bourg-en-Bresse", finish="Saint-Étienne", length=185.5)
      _ <- roadStage(start="Saint-Étienne", finish="Chamrousse", length=197.5)
      _ <- roadStage(start=grenoble, finish="Risoul", length=177.0)
      _ <- roadStage(start="Tallard", finish="Nimes", length=222.0)
      _ <- restDay(carcassonne)
      _ <- roadStage(start="Carcassonne", finish="Bagneres-du-Luchon", length=237.5)
      _ <- roadStage(start="Saint-Gaudens", finish="Saint-Lary Pla d'Adet", length=124.5)
      _ <- roadStage(start=pau, finish="Hautacam", length=145.5)
      _ <- roadStage(start="Maubourguet Pays du Val d'Adour", finish="Bergerac", length=208.5)
      _ <- individualTimeTrial(bergerac, perigueux, 54.0)
      _ <- roadStage(start="Evry", finish="Paris", length=137.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2014,7,5)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2015:StageRaceEdition = {
    val composition = for {
      _ <- individualTimeTrial(utrecht, length=13.8)
      _ <- roadStage(start=utrecht, finish=zeeland, length=166.0)
      _ <- roadStage(start=antwerp, finish=huy, length=159.5)
      _ <- roadStage(start=seraing, finish="Cambrai", length=223.5)
      _ <- roadStage(start=arras, finish="Amiens", length=189.5)
      _ <- roadStage(start="Abbeville", finish="Le Havre", length=191.5)
      _ <- roadStage(start="Livarot", finish="Fougeres", length=190.5)
      _ <- roadStage(start=rennes, finish="Mur-de-Bretagne", length=181.5)
      _ <- teamTimeTrial(start=vannes, finish=plumelec, length=28.0)
      _ <- restDay(pau)
      _ <- roadStage(start="Tarbes", finish="La Pierre Saint-Martin", length=167.0)
      _ <- roadStage(start=pau, finish="Cauterets", length=188.0)
      _ <- roadStage(start="Lannemezan", finish="Plateau de Beille", length=195.0)
      _ <- roadStage(start="Muret", finish="Rodez", length=198.5)
      _ <- roadStage(start="Rodez", finish="Mende", length=178.5)
      _ <- roadStage(start="Mende", finish="Valence", length=183.0)
      _ <- roadStage(start="Bourg-de-Peage", finish="Gap", length=201.0)
      _ <- restDay(gap)
      _ <- roadStage(start="Digne-les-Bains", finish="Pra-Loup", length=161.0)
      _ <- roadStage(start="Gap", finish="Saint-Jean-de-Maurienne", length=186.5)
      _ <- roadStage(start="Saint-Jean-de-Maurienne", finish="La Toussuire - Les Sybelles", length=138.0)
      _ <- roadStage(start="Modane", finish="Alpe d'Huez", length=110.5)
      _ <- roadStage(start="Sevres", finish="Paris", length=109.5)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2015,7,4)))
    StageRaceEdition(TourDeFrance, result.stages)
  }

  def tdf2016:StageRaceEdition = {
    val composition = for {
      _ <- roadStage(start="Mont Saint-Michel", finish="Utah Beach (Sainte-Marie-du-Mont)", length=188.0)
      _ <- roadStage(start="Saint-Lo", finish="Cherbourg-en-Cotentin", length=183.0)
      _ <- roadStage(start="Granville", finish=angers, length=223.5)
      _ <- roadStage(start="Saumur", finish=limoges, length=237.5)
      _ <- roadStage(start=limoges, finish="Le Lioran", length=216.0)
      _ <- roadStage(start="Arpajon-sur-Cere", finish="Montauban", length=190.5)
      _ <- roadStage(start="L'Isle-Jourdain", finish="Lac de Payolle", length=162.5)
      _ <- roadStage(start=pau, finish="Bagneres-du-Luchon", length=184.0)
      _ <- roadStage(start=vielha, finish=arcalis, length=184.5)
      _ <- restDay(arcalis)
      _ <- roadStage(start=escaldes, finish="Revel", length=197.0)
      _ <- roadStage(start="Carcassonne", finish="Montpellier", length=162.5)
      _ <- roadStage(start="Montpellier", finish="Chalet Reynard (Mont Ventoux)", length=178.0)
      _ <- individualTimeTrial(bourgSaintAndeol, laCaverneDuPontDArc, 37.5)
      _ <- roadStage(start="Montelimar", finish="Villar-les-Dombes (Parc des Oiseaux)", length=208.5)
      _ <- roadStage(start="Bourg-en-Bresse", finish="Culoz", length=160.0)
      _ <- roadStage(start="Moirans-en-Montagne", finish=bern, length=209.0)
      _ <- restDay(bern)
      _ <- roadStage(start=bern, finish=finhaut, length=184.5)
      _ <- individualTimeTrial(sallanches, megeve, 17.0)
      _ <- roadStage(start="Abbeville", finish="Saint Gervais-les-Bains", length=146.0)
      _ <- roadStage(start="Megeve", finish=morzine, length=146.5)
      _ <- roadStage(start="Chantilly", finish="Paris", length=113.0)
    } yield()
    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2016,7,2)))
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
      _ <- teamTimeTrial(cholet,35.5)
 
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
      _ <- roadStage(brest, "Mûr-de-Bretagne", 181)
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
      _ <- roadStage(arras, roubaix, 156.5)

      // Rest day 16-07-2018
      _ <- restDay(annecy)

      // Stage 10 17-07-2018
      _ <- roadStage(annecy, "Le Grand-Bornard", 158.5)
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
      _ <- restDay(lourdes)

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
      _ <- roadStage("Trie-sur-Basie", pau, 171) 
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
      _ <- individualTimeTrial(saintPeeSurNivelle, espelette, 31)
 
      // Stage 21 29-07-2018
      _ <- roadStage("Houilles", "Paris", 116)
    } yield()

    val result = composition.exec(ModernTourDeFranceState.init(LocalDate.of(2018,7,7)))
    StageRaceEdition(TourDeFrance, result.stages)
  }
}
