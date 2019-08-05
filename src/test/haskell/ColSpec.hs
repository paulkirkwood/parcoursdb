-- file ColSpec.hs
module ColSpec where

import Mountains.Alps (alpeD'Huez)
import Mountains.Pyrenees (colD'Aspin)
import ParcoursDB.Col
import Test.Hspec
import Data.Maybe
import Data.Time

main :: IO ()
main = hspec $ do

  describe "Col name" $ do
    context "name() should return the name of the Col" $ do
      it "returns Alpe d'Huez" $ do
        name alpeD'Huez `shouldBe` "Alpe d'Huez"
      it "returns Col d'Aspin" $ do
        name colD'Aspin `shouldBe` "Col d'Aspin"

  describe "Col height" $ do
    context "height() should return the height in metres of the Col" $ do
      it "returns 1850" $ do
        height alpeD'Huez `shouldBe` 1850
      it "returns 1490" $ do
        height colD'Aspin `shouldBe` 1490

  describe "Col length" $ do
    context "length() returns the length in kilometres of the col" $ do
      it "Alpe d'Huez is 13.8km" $ do
        ParcoursDB.Col.length alpeD'Huez `shouldBe` (Just 13.8)
      it "Col d'Aspin is 12km" $ do
        ParcoursDB.Col.length colD'Aspin `shouldBe` (Just 12)
