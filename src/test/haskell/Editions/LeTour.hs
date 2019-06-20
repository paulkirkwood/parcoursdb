-- file Editions.LeTour.hs
module Editions.LeTour where

import Control.Monad.State
import Belgium
import France
import Switzerland
import WestGermany
import ParcoursDB.StageRace
import ParcoursDB.StageRaceState

tdf1970 :: State StageRaceState StageRace
tdf1970 = do
  prologue' limoges 7.4
  roadStage limoges laRochelle 224
  roadStage laRochelle angers 200
  enableSplitStages
  teamTimeTrial' angers 10.7
  roadStage angers rennes 140
  disableSplitStages
  roadStage rennes lisieux 229
  enableSplitStages
  roadStage lisieux rouen 94.5
  roadStage rouen amiens 223
  disableSplitStages
  roadStage amiens valanciennes 135.5
  enableSplitStages
  roadStage valanciennes forest 120
  individualTimeTrial' forest 7.2
  disableSplitStages
  roadStage ciney WestGermany.felsberg 232.5
  roadStage WestGermany.saarlouis mulhouse 269.5
  roadStage belfort divonneLesBains 241
  enableSplitStages
  individualTimeTrial' divonneLesBains 8.8
  roadStage divonneLesBains thononLesBains 139.5
  disableSplitStages
  roadStage divonneLesBains grenoble 194
  roadStage grenoble gap 194.5
  roadStage gap montVentoux 170
  roadStage carpentras montpellier 140.5
  roadStage montpellier toulouse 160
  roadStage toulouse saintGaudens 190
  roadStage saintGaudens laMongie 135.5
  roadStage bagneresDeBigorre mourenx 185.5
  enableSplitStages
  roadStage mourenx bordeaux 223.5
  individualTimeTrial' bordeaux 8.2
  disableSplitStages
  roadStage ruffex tours 191.5
  roadStage tours versailles 238.5
  individualTimeTrial versailles paris 54
  race <- build
  return race

tdf1971 :: State StageRaceState StageRace
tdf1971 = do
  prologue' mulhouse 11.0
  enableSplitStages
  roadStage mulhouse basel 59.5
  roadStage basel WestGermany.freiburg 90
  roadStage WestGermany.freiburg mulhouse 74.5
  disableSplitStages
  roadStage mulhouse strasbourg 144
  roadStage strasbourg nancy 165.6
  roadStage nancy marcheEnFamenne 242
  roadStage dinant roubaix 208.5
  enableSplitStages
  roadStage roubaix amiens 127.5
  roadStage amiens leTouquet 133.5
  disableSplitStages
  restDay leTouquet
  roadStage rungis nevers 257.5
  roadStage nevers puyDeDome 221
  roadStage clermontFerrand saintEtienne 153.0
  roadStage saintEtienne grenoble 188.5
  roadStage grenoble orcieres 134
  restDay orcieres
  roadStage orcieres marseille 251.0
  criterium albi 16.3
  roadStage revel luchon 214.5
  roadStage luchon superbagneres 19.6
  enableSplitStages
  roadStage luchon gourette 145
  roadStage gourette pau 57.5
  disableSplitStages
  roadStage montDeMarsan bordeaux 188
  roadStage bordeaux poitiers 244
  roadStage blois versailles 244
  individualTimeTrial versailles paris 53.8
  race <- build
  return race

tdf2018 :: State StageRaceState StageRace
tdf2018 = do
  roadStage noirmoutier fontenayLeComte 201
  roadStage mouilleronSaintGermain laRocheSurYon 182.5
  teamTimeTrial' cholet 35.5
  roadStage laBaule sarzeau 195
  roadStage lorient quimper 204.5
  roadStage brest murDeBretagne 181
  roadStage fougres chartres 231
  roadStage dreux amiens 181
  roadStage arras roubaix 156.5
  restDay annecy
  roadStage annecy leGrandBornard 158.5
  roadStage albertville laRosiere 108.5
  roadStage bourgSaintMaurice alpeDHuez 175.5
  roadStage leBourgDOisans valence 169.5
  roadStage saintPaulTroisChateaux mende 188
  roadStage millau carcassonne 181.5
  restDay lourdes
  roadStage carcassonne bagneresDeLuchon 218
  roadStage bagneresDeLuchon saintLarySoulan 65
  roadStage trieSurBasie pau 171
  roadStage lourdes laruns 200.5
  individualTimeTrial saintPeeSurNivelle espelette 31
  roadStage houilles paris 116
  race <- build
  return race
