-- file Classics.ParisRoubaix.hs
module Classics.ParisRoubaix
(parisRoubaix2017
,parisRoubaix2018
) where

import Control.Monad.State
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave
import ParcoursDB.State.Classic

parisRoubaix2017 :: Classic
parisRoubaix2017 =
  evalState parisRoubaix2017' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2017 4 9) 257 []))

parisRoubaix2017' :: State ClassicState Classic
parisRoubaix2017' = do
  threeStarPavé "Troisvilles à Inchy" 2.2 97
  threeStarPavé "Viesly à Quiévy" 1.8 103.5
  fourStarPavé  "Quiévy à Saint Python" 3.7 106
  threeStarPavé "Viesly à Biastre" 3 112.5
  twoStarPavé   "Biastre à Solesmes" 0.8 116
  threeStarPavé "Vertain à Saint-Martin-sur-Ecaillon" 2.3 124.5
  threeStarPavé "Verchain-Maugré à Quérénaing" 1.6 134.5
  threeStarPavé "Quérénaing à Maing" 2.5 137.5
  threeStarPavé "Maing à Monchaux-sur-Ecaillon" 1.6 140.5
  fourStarPavé  "Haveluy à Wallers" 2.5 153.5
  fiveStarPavé  "Trouée d'Arenberg" 2.4 161.5
  threeStarPavé "Wallers à Hélesmes" 1.6 168
  fourStarPavé  "Hornaing à Wandignies" 3.7 174.5
  threeStarPavé "Warlaing à Brillion" 2.4 182
  fourStarPavé  "Tilloy à Sars-et-Rosières" 2.4 185.5
  threeStarPavé "Beuvry-la-Forêt à Orchies" 1.4 192
  threeStarPavé "Orchies" 1.7 197
  fourStarPavé  "Auchy-lez-Orchies à Bersée" 2.7 203
  fiveStarPavé  "Mons-en-Pévèle" 3 208.5
  twoStarPavé   "Mérignies à Avelin" 0.7 214.5
  threeStarPavé "Pont-Thibault à Ennevelin" 1.4 218
  twoStarPavé   "Templeuve" 0.5 224
  threeStarPavé "Cysoing à Bourghelles" 1.3 230.5
  threeStarPavé "Bourghelles à Wannehain" 1.1 233
  fourStarPavé  "Camphin-en-Pévèle" 1.8 237.5
  fiveStarPavé  "Carrefour de l'Arbre" 2.1 240
  twoStarPavé   "Grusson" 1.1 242.5
  threeStarPavé "Willems à Hem" 1.4 249
  oneStarPavé   "Roubaix" 0.3 256
  edition <- build
  return edition

parisRoubaix2018 :: Classic
parisRoubaix2018 =
  evalState parisRoubaix2018' (ParcoursDB.State.Classic.init (ParisRoubaix (fromGregorian 2018 4 8) 257 []))

parisRoubaix2018' :: State ClassicState Classic
parisRoubaix2018' = do
  threeStarPavé "Troisvilles"               2.2 93.5
  threeStarPavé "Briastre"                  3.0 100
  threeStarPavé "Saint-Python"              1.5 109
  fourStarPavé  "Quiévy"                    3.7 111.5
  threeStarPavé "Saint-Vaast"               1.5 119
  threeStarPavé "Verchain-Maugré"           1.5 130
  threeStarPavé "Quérénaing"                1.6 134.5
  threeStarPavé "Maing"                     2.5 137.5
  threeStarPavé "Monchaux-sur-Ecaillon"     1.6 140.5
  fourStarPavé  "Haveluy"                   2.5 153.5
  fiveStarPavé  "Trouée d'Arenberg"         2.4 162
  threeStarPavé "Hellesmes, dit Pont-Gibus" 1.6 168
  fourStarPavé  "Wandignies"                3.7 174.5
  threeStarPavé "Brillon"                   2.4 182
  fourStarPavé  "Sars-et-Rosières"          2.4 185.5
  threeStarPavé "Beuvry-la-Forêt"           1.4 192
  threeStarPavé "Orchies"                   1.7 197
  fourStarPavé  "Bersée"                    2.7 203
  fiveStarPavé  "Mons-en-Pévèle"            3.0 208.5
  twoStarPavé    "Mérignies à Avelin"        0.7 214.5
  threeStarPavé "Pont-Thibaut"              1.4 218

  let templeuve1 = Pave "Templeuve-L'Epinette" 0.2 OneStar
  let templeuve2 = Pave "Templeuve, Moulin de Vertain" 0.5 TwoStar
  addMultiplePavé (templeuve1, 223.5) (templeuve2, 224.0)

  threeStarPavé "Cysoing à Bourghelles"              1.3 230.5
  threeStarPavé "Bourghelles à Wannehain"            1.1 233
  fiveStarPavé  "Camphin-en-Pévèle"                  1.8 237.5
  fiveStarPavé  "Carrefour de l'Arbre"               2.1 240
  twoStarPavé   "Grouson"                            1.1 242.5
  threeStarPavé "Hem"                                1.4 249
  oneStarPavé   "Roubaix, espace Charles-Crupelandt" 0.3 256
  edition <- build
  return edition
