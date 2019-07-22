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
import ParcoursDB.Col
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
  flatStage limoges laRochelle 224
  flatStage laRochelle angers 200
  enableSplitStages
  teamTimeTrial' angers 10.7
  flatStage angers rennes 140
  disableSplitStages
  flatStage rennes lisieux 229
  enableSplitStages
  flatStage lisieux rouen 94.5
  flatStage rouen amiens 223
  disableSplitStages
  flatStage amiens valanciennes 135.5
  enableSplitStages
  flatStage valanciennes forest 120
  individualTimeTrial' forest 7.2
  disableSplitStages
  flatStage ciney Countries.WestGermany.felsberg 232.5
  flatStage Countries.WestGermany.saarlouis mulhouse 269.5
  flatStage belfort divonneLesBains 241
  enableSplitStages
  individualTimeTrial' divonneLesBains 8.8
  flatStage divonneLesBains thononLesBains 139.5
  disableSplitStages
  flatStage divonneLesBains grenoble 194
  flatStage grenoble gap 194.5
  summitFinishStage gap 170
  addCol 170 montVentoux
  flatStage carpentras montpellier 140.5
  flatStage montpellier toulouse 160
  flatStage toulouse saintGaudens 190
  flatStage saintGaudens laMongie 135.5
  flatStage bagneresDeBigorre mourenx 185.5
  enableSplitStages
  flatStage mourenx bordeaux 223.5
  individualTimeTrial' bordeaux 8.2
  disableSplitStages
  flatStage ruffex tours 191.5
  flatStage tours versailles 238.5
  individualTimeTrial versailles (Just paris) 54
  race <- build
  return race

tdf1971 :: StageRace
tdf1971 = evalState tdf1971' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 1971 6 26))

tdf1971' :: State StageRaceState StageRace
tdf1971' = do
  prologue' mulhouse 11.0
  enableSplitStages
  flatStage mulhouse basel 59.5
  flatStage basel Countries.WestGermany.freiburg 90
  flatStage Countries.WestGermany.freiburg mulhouse 74.5
  disableSplitStages
  flatStage mulhouse strasbourg 144
  flatStage strasbourg nancy 165.6
  flatStage nancy marcheEnFamenne 242
  flatStage dinant roubaix 208.5
  enableSplitStages
  flatStage roubaix amiens 127.5
  flatStage amiens leTouquet 133.5
  disableSplitStages
  restDay leTouquet
  flatStage rungis nevers 257.5
  flatStage nevers puyDeDome 221
  flatStage clermontFerrand saintEtienne 153.0
  flatStage saintEtienne grenoble 188.5
  flatStage grenoble orcieres 134
  restDay orcieres
  flatStage orcieres marseille 251.0
  criterium albi 16.3
  flatStage revel luchon 214.5
  flatStage luchon superbagneres 19.6
  enableSplitStages
  flatStage luchon gourette 145
  flatStage gourette pau 57.5
  disableSplitStages
  flatStage montDeMarsan bordeaux 188
  flatStage bordeaux poitiers 244
  flatStage blois versailles 244
  individualTimeTrial versailles (Just paris) 53.8
  race <- build
  return race

tdf2018 :: StageRace
tdf2018 = evalState tdf2018' (ParcoursDB.State.StageRace.init (TourDeFrance []) (fromGregorian 2018 7 7))

tdf2018' :: State StageRaceState StageRace
tdf2018' = do
  -- Stage 1
  flatStage noirmoutier fontenayLeComte 201
  c4 173 "Cote de Vix" France 30 0.7 4.2

  -- Stage 2
  flatStage mouilleronSaintGermain laRocheSurYon 182.5
  c4 28 "Cote de Pouzauges" France 202 1 3.9

  -- Stage 3
  teamTimeTrial' cholet 35.5

  -- Stage 4
  flatStage laBaule sarzeau 195
  c4 135.5 "Cote de Saint-Jean-la-Poterie" France 79 0.8 7.8

  -- Stage 5
  flatStage lorient quimper 204.5
  addCol 106 coteDeKaliforn
  addCol 113 coteDeTrimen
  addCol 140.5 coteDeLaRocheDuFeu
  addCol 159.5 coteDeMenezQuelerc'h
  addCol 184.5 coteDeLaMontagneDeLocranan

  -- Stage 6
  summitFinishStage brest 181
  addCol 44 coteDePloudiry
  addCol 68.5 coteDeRoc'hTrevezel
  addCol 165 murDeBretagne
  addCol 181 murDeBretagne

  -- Stage 7
  flatStage fougres chartres 231
  c4 120 "Cote du Buisson de Perseigne" France 235 1.5 6.9

  -- Stage 8
  flatStage dreux amiens 181
  c4 35 "Cote de Pacy-sur-Eure" France 135 2 4.3
  c4 71.5 "Cote de Feuquerolles" France 134 2.3 4.3

  -- Stage 9
  flatStage arras roubaix 156.5

  restDay annecy

  -- Stage 10
  mountainStage annecy leGrandBornard 158.5
  addCol 19 colDeBluffy
  addCol 43 colDeLaCroixFry
  addCol 68.5 monteeDuPlateauDesGlieres
  addCol 130 colDeRomme
  addCol 144 colDeLaColombiere

  -- Stage 11
  summitFinishStage albertville 108.5
  addCol 26 monteeDuBisanne
  addCol 57.5 colDuPre
  addCol 70 cormetDeRoselend
  addCol 108.5 laRosiere

  -- Stage 12
  summitFinishStage bourgSaintMaurice 175.5
  addCol 53.5 colDeLaMadeleine
  addCol 83 lacetsDeMontvernier
  addCol 121 colDeLaCroixDeFer
  addCol 175.5 alpeD'Huez

  -- Stage 13
  flatStage leBourgDOisans valence 169.5
  addCol 32.5 coteDeBrie
  addCol 109.5 coteDeSainteEulalie

  -- Stage 14
  flatStage saintPaulTroisChateaux mende 188
  addCol 81 coteDuGrandChataignier
  addCol 129 colDeLaCroixDeBerthel
  addCol 142 colDuPontSansEau
  addCol 186.5 coteDeLaCroixNeuve

  -- Stage 15
  flatStage millau carcassonne 181.5
  addCol 9 coteDeLuzencon
  addCol 64.5 colDeSie
  addCol 140 picDeNore

  restDay lourdes

  -- Stage 16
  mountainStage carcassonne bagneresDeLuchon 218
  addCol 25 coteDeFanjeaux
  addCol 72 coteDePamiers
  addCol 155.5 colDePortet'Aspet
  addCol 171 colDeMente
  addCol 208 colDuPortillon

  -- Stage 17
  let colDePortet' = clone colDePortet "Saint-Lary-Soulan"
  summitFinishStage bagneresDeLuchon 65
  addCol 15 monteDePeyragudes
  addCol 37 colDeValLouronAzet
  addCol 65 colDePortet'

  -- Stage 18
  mountainStage trieSurBasie pau 171
  addCol 53.5 coteDeMadiran
  addCol 152.5 coteD'Anos

  -- Stage 19
  mountainStage lourdes laruns 200.5
  addCol 7 coteDeLoucrup
  addCol 40 coteDeCapvernLesBains
  addCol 78.5 colD'Aspin
  addCol 108 colDuTourmalet
  addCol 159.5 colDeBorderes
  addCol 180.5 colD'Aubisque

  individualTimeTrial saintPeeSurNivelle (Just espelette) 31
  flatStage houilles paris 116
  race <- build
  return race
