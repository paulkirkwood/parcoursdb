-- file CountrySpec.hs
module CountrySpec where

import ParcoursDB.Country
import Test.Hspec
import Data.Maybe
import Data.Time

main :: IO ()
main = hspec $ do

  let uk = Country "United Kingdom"

  describe "name" $ do
    it "returns the name of the country" $
      name uk `shouldBe` "United Kingdom"
