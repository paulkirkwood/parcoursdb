-- file StartFinishSpec.hs
module StartFinishSpec where

import Control.Monad.State (forM_)
import Data.List
import Data.Time
import Classics.AmstelGoldRace (amstelGoldRaceEditions)
import Classics.E3Harelbeke (e3HarelbekeEditions)
import Classics.GentWevelgem (gentWevelgemEditions)
import Classics.GrandPrixDePlouay (grandPrixDePlouayEditions)
import Classics.KuurneBrusselsKuurne (kuurneBrusselsKuurneEditions)
import Classics.LaFlecheWallonne (flecheWallonneEditions)
import Classics.LiegeBastogneLiege (liegeBastogneLiegeEditions)
import Classics.MilanoSanRemo (milanoSanRemoEditions)
import Classics.OmloopHetVolk (omloopHetVolkEditions)
import Classics.ParisRoubaix (parisRoubaixEditions)
import Classics.ParisTours (parisToursEditions)
import Classics.TourOfFlanders (tourOfFlandersEditions)
import Classics.TourOfLombardy (tourOfLombardyEditions)
import ParcoursDB.Classic
import Test.Hspec
import Text.Printf

editions = amstelGoldRaceEditions ++
           e3HarelbekeEditions ++
           gentWevelgemEditions ++
           grandPrixDePlouayEditions ++
           kuurneBrusselsKuurneEditions ++
           flecheWallonneEditions ++
           liegeBastogneLiegeEditions ++
           milanoSanRemoEditions ++
           omloopHetVolkEditions ++
           parisRoubaixEditions ++
           parisToursEditions ++
           tourOfFlandersEditions ++
           tourOfLombardyEditions

inSeason :: Classic -> Integer -> Bool
inSeason edition year = 
  let (yr,_,_) = toGregorian $ ParcoursDB.Classic.date edition
  in if year == yr then True else False

quicksort :: [Classic] -> [Classic]
quicksort [] = []
quicksort (x:xs) =
  let smallerOrEqual = [a | a <- xs, (date a) <= (date x)];
              larger = [a | a <- xs, (date a) > (date x)]
  in quicksort smallerOrEqual ++ [x] ++ quicksort larger

post2003CalendarSpec :: Integer -> Spec
post2003CalendarSpec year = do
  let ctx                  = printf "%d season" year
  let calendar             = quicksort $ filter(\e -> inSeason e year) $ editions
  let omloopHetVolk        = calendar !! 0
  let kuurneBrusselsKuurne = calendar !! 1
  let milanoSanRemo        = calendar !! 2
  let e3Harelbeke          = calendar !! 3
  let gentWevelgem         = calendar !! 4
  let tourOfFlanders       = calendar !! 5
  let parisRoubaix         = calendar !! 6
  let amstelGoldRace       = calendar !! 7
  let flecheWallonne       = calendar !! 8
  let liegeBastogneLiege   = calendar !! 9
  let grandPrixDePlouay    = calendar !! 10
  let parisTours           = calendar !! 11
  let tourOfLombardy       = calendar !! 12
  context ctx $ do
    it "contains 13 races" $
      length calendar `shouldBe` 13
    it "Omloop Het Volk and K-B-K form the opening weekend of the Belgian cycling season" $ do
      addDays 1 (date omloopHetVolk) `shouldBe` date kuurneBrusselsKuurne
    it "E3 Harelbeke is on the Friday before Gent-Wevelgem" $
      addDays 2 (date e3Harelbeke) `shouldBe` date gentWevelgem
    it "Gent-Wevelgem is always a week before Tour of Flanders" $
      addDays 7 (date gentWevelgem) `shouldBe` date tourOfFlanders
    it "Tour of Flanders is always a week before Paris-Roubaix" $
      addDays 7 (date tourOfFlanders) `shouldBe` date parisRoubaix
    it "Paris-Rouabix is always a week before Amstel Gold Race" $
      addDays 7 (date parisRoubaix) `shouldBe` date amstelGoldRace
    it "Amstel Gold Race is a week before Liège-Bastogne-Liège" $
      addDays 7 (date amstelGoldRace) `shouldBe` date liegeBastogneLiege
    it "La Flèche Wallonne is on the Wednesday before Liège-Bastogne-Liège" $
      addDays 4 (date flecheWallonne) `shouldBe` date liegeBastogneLiege
    it "Paris-Tours is always on the Sunday before Il Lombardia" $
      addDays 6 (date parisTours) `shouldBe` date tourOfLombardy

main :: IO ()
main = hspec $ do
  describe "Test the 2014 onwards calendar" $ do
    mapM_ post2003CalendarSpec [2017,2018]
