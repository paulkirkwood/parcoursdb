-- file Editions.ParisRoubaix.hs
module Editions.ParisRoubaix
(parisRoubaix2010
,parisRoubaix2011
,parisRoubaix2012
,parisRoubaix2013
,parisRoubaix2014
,parisRoubaix2015
,parisRoubaix2016
,parisRoubaix2017
,parisRoubaix2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.State.ParisRoubaix

parisRoubaix2010 :: Classic
parisRoubaix2010 = evalState parisRoubaix2010' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2010 4 11) 259)

parisRoubaix2010' = do
  edition <- build
  return edition

parisRoubaix2011 :: Classic
parisRoubaix2011 = evalState parisRoubaix2011' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2010 4 10) 258)

parisRoubaix2011' = do
  edition <- build
  return edition

parisRoubaix2012 :: Classic
parisRoubaix2012 = evalState parisRoubaix2012' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2012 4 8) 257.5)

parisRoubaix2012' = do
  edition <- build
  return edition

parisRoubaix2013 :: Classic
parisRoubaix2013 = evalState parisRoubaix2013' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2013 4 7) 254.5)

parisRoubaix2013' = do
  edition <- build
  return edition

parisRoubaix2014 :: Classic
parisRoubaix2014 = evalState parisRoubaix2014' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2014 4 13) 257)

parisRoubaix2014' = do
  edition <- build
  return edition

parisRoubaix2015 :: Classic
parisRoubaix2015 = evalState parisRoubaix2015' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2015 4 12) 253.5)

parisRoubaix2015' = do
  edition <- build
  return edition

parisRoubaix2016 :: Classic
parisRoubaix2016 = evalState parisRoubaix2016' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2016 4 10) 257.5)

parisRoubaix2016' = do
  edition <- build
  return edition

parisRoubaix2017 :: Classic
parisRoubaix2017 = evalState parisRoubaix2017' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2017 4 9) 257)

parisRoubaix2017' :: State ParisRoubaixState Classic
parisRoubaix2017' = do
  threeStarPave "Troisvilles à Inchy" 2.2 97
  threeStarPave "Viesly à Quiévy" 1.8 103.5
  fourStarPave "Quiévy à Saint Python" 3.7 106
  threeStarPave "Viesly à Biastre" 3 112.5
  twoStarPave "Biastre à Solesmes" 0.8 116
  threeStarPave "Vertain à Saint-Martin-sur-Ecaillon" 2.3 124.5
  threeStarPave "Verchain-Maugré à Quérénaing" 1.6 134.5
  threeStarPave "Quérénaing à Maing" 2.5 137.5
  threeStarPave "Maing à Monchaux-sur-Ecaillon" 1.6 140.4
  fourStarPave "Haveluy à Wallers" 2.5 153.5
  fiveStarPave "Trouée d'Arenberg" 2.4 161.5
  threeStarPave "Wallers à Hélesmes" 1.6 168
  fourStarPave "Hornaing à Wandignies" 3.7 174.5
  threeStarPave "Warlaing à Brillion" 2.4 182
  fourStarPave"Tilloy à Sars-et-Rosières" 2.4 185.5
  threeStarPave "Beuvry-la-Forêt à Orchies" 1.4 192
  threeStarPave "Orchies" 1.7 197
  fourStarPave "Auchy-lez-Orchies à Bersée" 2.7 203
  fiveStarPave "Mons-en-Pévèle" 3 208.5
  twoStarPave "Mérignies à Avelin" 0.7 214.5
  threeStarPave "Pont-Thibault à Ennevelin" 1.4 218
  twoStarPave "Templeuve" 0.5 224
  threeStarPave "Cysoing à Bourghelles" 1.3 230.5
  threeStarPave "Bourghelles à Wannehain" 1.1 233
  fourStarPave "Camphin-en-Pévèle" 1.8 237.5
  fiveStarPave "Carrefour de l'Arbre" 2.1 240
  twoStarPave "Grusson" 1.1 242.4
  threeStarPave "Willems à Hem" 1.4 249
  oneStarPave "Roubaix" 0.3 256
  edition <- build
  return edition

parisRoubaix2018 :: Classic
parisRoubaix2018 = evalState parisRoubaix2018' (ParcoursDB.State.ParisRoubaix.init (fromGregorian 2018 4 9) 257)

parisRoubaix2018' :: State ParisRoubaixState Classic
parisRoubaix2018' = do
  threeStarPave "Troisvilles" 2.2 93.5
  threeStarPave "Briastre" 3 100
  threeStarPave "Saint-Python" 1.5 109
  fourStarPave "Quiévy" 3.7 111.5
  threeStarPave "Saint-Vaast" 1.5 119
  threeStarPave "Verchain-Maugré" 1.5 130
  threeStarPave "Quérénaing" 1.6 134.5
  threeStarPave "Maing" 2.5 137.5
  threeStarPave "Monchaux-sur-Ecaillon" 1.6 140.5
  fourStarPave "Haveluy" 2.5 153.5
  fiveStarPave "Trouée d'Arenberg" 2.4 162
  threeStarPave "Hellesmes, dit Pont-Gibus" 1.6 168
  fourStarPave "Wandignies" 3.7 174.5
  threeStarPave "Brillon" 2.4 182
  fourStarPave "Sars-et-Rosières" 2.4 185.5
  threeStarPave "Beuvry-la-Forêt" 1.4 192
  threeStarPave "Orchies" 1.7 197
  fourStarPave "Bersée" 2.7 203
  fiveStarPave "Mons-en-Pévèle" 3 208.5
  twoStarPave "Mérignies à Avelin" 0.7 214.5
  threeStarPave "Pont-Thibaut" 1.4 218
  enableMultiplePavePerSector
  oneStarPave "Templeuve-L'Epinette" 0.2 223.5
  disableMultiplePavePerSector
  twoStarPave "Templeuve, Moulin de Vertain" 0.5 224
  threeStarPave "Cysoing à Bourghelles" 1.3 230.5
  threeStarPave "Bourghelles à Wannehain" 1.1 233
  fiveStarPave "Camphin-en-Pévèle" 1.8 237.5
  fiveStarPave "Carrefour de l'Arbre" 2.1 240
  twoStarPave "Grouson" 1.1 242.5
  threeStarPave "Hem" 1.4 249
  oneStarPave "Roubaix, espace Charles-Crupelandt" 0.3 256
  edition <- build
  return edition
