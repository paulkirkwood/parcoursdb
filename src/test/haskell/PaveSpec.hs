-- file PaveSpec.hs
module PaveSpec where

import Data.List
import Data.Maybe
import Data.Time
import ParcoursDB.Pave
import Test.Hspec

main :: IO ()
main = hspec $ do

  -- The classic ***** Paris-Roubaix secteurs
  let wallers      = Pave "Trouée d'Arenberg" 2.4 FiveStar
  let carrefour    = Pave "Carrefour de l'Arbre" 2.1 FiveStar
  let monsEnPevele = Pave "Mons-en-Pévèle" 3 FiveStar

  let orchies = Pave "Orchies" 1.7 ThreeStar
  let grouson = Pave "Grouson" 1.1 TwoStar
  let roubaix = Pave "Roubaix" 0.3 OneStar

  let secteurs = [ roubaix, wallers, monsEnPevele, orchies, carrefour, grouson ]

  describe "Test equality" $ do
    context "Rating trumps distance" $ do
      it "Trouée d'Arenberg LT Mons-en-Pévèle" $ do
        wallers < monsEnPevele `shouldBe` True
      it "Mons-en-Pévèle GT Carrefour de l'Arbre" $ do
        monsEnPevele > carrefour `shouldBe` True

  describe "Test sorting" $ do
    it "Rating then distance" $ do
      Data.List.sort secteurs `shouldBe` [ roubaix, grouson, orchies, carrefour, wallers, monsEnPevele ]
