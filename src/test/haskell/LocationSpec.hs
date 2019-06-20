-- file LocationSpec.hs
module LocationSpec where

import ParcoursDB.Country
import ParcoursDB.Location
import Test.Hspec

main :: IO ()
main = hspec $ do

  let france = Country "France"
  let usa    = Country "United states of America"

  let parisFrance = Location "Paris" france
  let parisUSA    = Location "Paris" usa

  describe "name" $ do
    it "returns the name of the location" $
      ParcoursDB.Location.name parisFrance `shouldBe` "Paris"

  describe "description" $ do
    it "returns the name and country of the location" $
      description parisFrance `shouldBe` "Paris, France"

  describe "compare [EQ]" $ do
    it "Paris, France == Paris, France" $
      parisFrance == parisFrance `shouldBe` True

  describe "compare [NE]" $ do
    it "Paris, France != Paris, USA" $
      parisFrance == parisUSA `shouldBe` False
