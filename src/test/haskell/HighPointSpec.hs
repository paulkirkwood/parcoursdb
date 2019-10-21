-- file HighPointSpec.hs
module HighPointSpec where

import Data.Time (toGregorian)
import Mountains.Pyrenees
import StageRaces.LeTour (tdf2018)
import ParcoursDB.Col (clone)
import ParcoursDB.StageRace (StageRace(..), highPoint)
import Test.Hspec (Spec, hspec, describe, context, it, shouldBe, shouldSatisfy)
import Text.Printf (printf)

-- | Required for auto-discovery.
spec :: Spec
spec = highestColSpec tdf2018

highestColSpec :: StageRace -> Spec
highestColSpec edition =
  it "highest Col is as expected" $
    highPoint edition `shouldBe` (clone colDePortet "Saint-Lary-Soulan")

-- | Just for our convenience to manually run just this module's tests.
main :: IO ()
main = hspec spec
