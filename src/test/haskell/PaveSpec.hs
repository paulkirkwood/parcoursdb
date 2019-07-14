-- file PaveSpec.hs
module PaveSpec where

import Classics.OmloopHetVolk
import Classics.ParisRoubaix
import Classics.TourOfFlanders
import Control.Monad.State (forM_)
import Data.List
import Data.Maybe
import Data.Time
import ParcoursDB.Classic
import ParcoursDB.Pave
import Test.Hspec
import Text.Printf

-- The classic ***** Paris-Roubaix secteurs
wallers      = Pave "Trouée d'Arenberg" 2.4 FiveStar
carrefour    = Pave "Carrefour de l'Arbre" 2.1 FiveStar
monsEnPevele = Pave "Mons-en-Pévèle" 3 FiveStar

orchies = Pave "Orchies" 1.7 ThreeStar
grouson = Pave "Grouson" 1.1 TwoStar
roubaix = Pave "Roubaix" 0.3 OneStar

secteurs = [ roubaix, wallers, monsEnPevele, orchies, carrefour, grouson ]

cobbledClassics = [ omloopHetVolk2018
                  , parisRoubaix2017
                  , parisRoubaix2018
                  , tourOfFlanders2018
                  ]

testPavéSectors :: [Classic] -> Spec
testPavéSectors editions = do
  forM_ editions $ \(edition) -> do
    let raceName   = ParcoursDB.Classic.name edition
    let (year,_,_) = toGregorian $ ParcoursDB.Classic.date edition
    let ctx        = printf "%s [%d]" raceName year
    let fileName   = printf "../resources/%s/%d/pave.csv" raceName year
    context ctx $ do
      it "pave sectors as expected" $ do
      contents <- readFile fileName
      let expectedPave = lines contents
      ParcoursDB.Classic.pave edition `shouldBe` expectedPave

testPavéEquality :: Spec
testPavéEquality = do
  context "Rating trumps distance" $ do
    it "Trouée d'Arenberg LT Mons-en-Pévèle" $ do
      wallers < monsEnPevele `shouldBe` True
    it "Mons-en-Pévèle GT Carrefour de l'Arbre" $ do
      monsEnPevele > carrefour `shouldBe` True

testPavéSorting :: Spec
testPavéSorting = do
  it "Rating then distance" $ do
    Data.List.sort secteurs `shouldBe` [ roubaix, grouson, orchies, carrefour, wallers, monsEnPevele ]

main :: IO ()
main = hspec $ do
  describe "Test equality" $ do
    testPavéEquality
  describe "Test sorting" $ do
    testPavéSorting
  describe "Pavé sectors in Paris-Roubaix and the Tour of Flanders" $ do
    testPavéSectors cobbledClassics
