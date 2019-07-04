-- file ColSpec.hs
module ColSpec where

import ParcoursDB.Col
import Test.Hspec
import Data.Maybe
import Data.Time

main :: IO ()
main = hspec $ do

  let hc = Col "Alpe d'Huez" HC 1850 13.8
  let c1 = Col "Col d'Aspin" C1 1490 12

  describe "name [HC]" $ do
    it "returns the name of the col" $
      name hc `shouldBe` "Alpe d'Huez"

  describe "name [C1]" $ do
    it "returns the name of the col" $
      name c1 `shouldBe` "Col d'Aspin"

  describe "height [HC]" $ do
    it "returns the name of the col" $
      height hc `shouldBe` 1850

  describe "height [C1]" $ do
    it "returns the name of the col" $
      height c1 `shouldBe` 1490

  describe "length [HC]" $ do
    it "returns the name of the col" $
      ParcoursDB.Col.length hc `shouldBe` 13.8

  describe "length [C1]" $ do
    it "returns the name of the col" $
      ParcoursDB.Col.length c1 `shouldBe` 12

  describe "category [HC]" $ do
    it "returns the name of the col" $
      category hc `shouldBe` HC

  describe "category [C1]" $ do
    it "returns the name of the col" $
      category c1 `shouldBe` C1
