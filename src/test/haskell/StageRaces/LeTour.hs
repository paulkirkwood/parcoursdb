-- file StageRaces.LeTour.hs
module StageRaces.LeTour
(tdf1970
,tdf1971
,tdf2018
,tourDeFranceEditions
)where

import Control.Monad.State
import Countries.Belgium
import Countries.France
import Countries.Switzerland
import Countries.WestGermany
import Data.Time
import Mountains.Alpes
import Mountains.MassifArmorican
import Mountains.MassifCentral
import Mountains.Pyrenees
import ParcoursDB.Country
import ParcoursDB.StageRace
import ParcoursDB.State.StageRace

tourDeFranceEditions :: [StageRace]
tourDeFranceEditions = [ tdf1970
                       , tdf1971
                       , tdf2018
                       ]

tdf1970 :: StageRace
tdf1970 = evalState tdf1970' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1970 6 26))

tdf1970' :: State StageRaceState StageRace
tdf1970' = do
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
  roadStage ciney Countries.WestGermany.felsberg 232.5
  roadStage Countries.WestGermany.saarlouis mulhouse 269.5
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

tdf1971 :: StageRace
tdf1971 = evalState tdf1971' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1971 6 26))

tdf1971' :: State StageRaceState StageRace
tdf1971' = do
  prologue' mulhouse 11.0
  enableSplitStages
  roadStage mulhouse basel 59.5
  roadStage basel Countries.WestGermany.freiburg 90
  roadStage Countries.WestGermany.freiburg mulhouse 74.5
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

tdf2018 :: StageRace
tdf2018 = evalState tdf2018' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2018 7 7))

tdf2018' :: State StageRaceState StageRace
tdf2018' = do
  -- Stage 1
  roadStage noirmoutier fontenayLeComte 201
  c4 173 "Cote de Vix" 30 0.7 4.2

  -- Stage 2
  roadStage mouilleronSaintGermain laRocheSurYon 182.5
  c4 28 "Cote de Pouzauges" 202 1 3.9

  -- Stage 3
  teamTimeTrial' cholet 35.5

  -- Stage 4
  roadStage laBaule sarzeau 195
  c4 135.5 "Cote de Saint-Jean-la-Poterie" 79 0.8 7.8

  -- Stage 5
  roadStage lorient quimper 204.5
  addCol 106 coteDeKaliforn
  addCol 113 coteDeTrimen
  addCol 140.5 coteDeLaRocheDuFeu
  addCol 159.5 coteDeMenezQuelerc'h
  addCol 184.5 coteDeLaMontagneDeLocranan

  -- Stage 6
  roadStage brest Countries.France.murDeBretagne 181
  addCol 44 coteDePloudiry
  addCol 68.5 coteDeRoc'hTrevezel
  addCol 165 Mountains.MassifArmorican.murDeBretagne
  addCol 181 Mountains.MassifArmorican.murDeBretagne

  -- Stage 7
  roadStage fougres chartres 231
  c4 120 "Cote du Buisson de Perseigne" 235 1.5 6.9

  -- Stage 8
  roadStage dreux amiens 181
  c4 35 "Cote de Pacy-sur-Eure" 135 2 4.3
  c4 71.5 "Cote de Feuquerolles" 134 2.3 4.3

  -- Stage 9
  roadStage arras roubaix 156.5

  restDay annecy

  -- Stage 10
  roadStage annecy leGrandBornard 158.5
  addCol 19 colDeBluffy
  addCol 43 colDeLaCroixFry
  addCol 68.5 monteeDuPlateauDesGlieres
  addCol 130 colDeRomme
  addCol 144 colDeLaColombiere

  -- Stage 11
  roadStage albertville Countries.France.laRosiere 108.5
  addCol 26 monteeDuBisanne
  addCol 57.5 colDuPre
  addCol 70 cormetDeRoselend
  addCol 108.5 Mountains.Alpes.laRosiere

  -- Stage 12
  roadStage bourgSaintMaurice alpeDHuez 175.5
  addCol 53.5 colDeLaMadeleine
  addCol 83 lacetsDeMontvernier
  addCol 121 colDeLaCroixDeFer
  addCol 175.5 alpeD'Huez

  -- Stage 13
  roadStage leBourgDOisans valence 169.5
  addCol 32.5 coteDeBrie
  addCol 109.5 coteDeSainteEulalie

  -- Stage 14
  roadStage saintPaulTroisChateaux mende 188
  addCol 81 coteDuGrandChataignier
  addCol 129 colDeLaCroixDeBerthel
  addCol 142 colDuPontSansEau
  addCol 186.5 coteDeLaCroixNeuve

  -- Stage 15
  roadStage millau carcassonne 181.5
  addCol 9 coteDeLuzencon
  addCol 64.5 colDeSie
  addCol 140 picDeNore

  restDay lourdes

  -- Stage 16
  roadStage carcassonne bagneresDeLuchon 218
  addCol 25 coteDeFanjeaux
  addCol 72 coteDePamiers
  addCol 155.5 colDePortet'Aspet
  addCol 171 colDeMente
  addCol 208 colDuPortillon

  -- Stage 17
  roadStage bagneresDeLuchon saintLarySoulan 65
  addCol 15 monteDePeyragudes
  addCol 37 colDeValLouronAzet
  addCol 65 colDuPortet

  -- Stage 18
  roadStage trieSurBasie pau 171
  addCol 53.5 coteDeMadiran
  addCol 152.5 coteD'Anos

  -- Stage 19
  roadStage lourdes laruns 200.5
  addCol 7 coteDeLoucrup
  addCol 40 coteDeCapvernLesBains
  addCol 78.5 colD'Aspin
  addCol 108 colDuTourmalet
  addCol 159.5 colDeBorderes
  addCol 180.5 colD'Aubisque

  individualTimeTrial saintPeeSurNivelle espelette 31
  roadStage houilles paris 116
  race <- build
  return race
