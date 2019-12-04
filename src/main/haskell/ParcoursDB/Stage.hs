module ParcoursDB.Stage where

import qualified Data.Map as Map
import Data.List
import Data.Maybe
import Data.Time
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import Text.Printf

type StageID = String
type Distance = Float

data Stage = Prologue                    Day Location Location Distance
           | PrologueTeamTimeTrial       Day Location Location Distance
           | PrologueTwoManTeamTimeTrial Day Location Location Distance
           | Road                        Day (Either Location Col) (Maybe Location) StageID Distance [IndexableCol]
           | TeamTimeTrial               Day Location Location StageID Distance [IndexableCol]
           | ThreeManTeamTimeTrial       Day Location Location StageID Distance [IndexableCol]
           | IndividualTimeTrial         Day (Either Location Col) (Maybe Location) StageID Distance [IndexableCol]
           | RestDay                     Day (Maybe( Either Location Col))
  deriving (Eq, Show)

-- | The length of the stage in kilometres
distance :: Stage -> Distance
distance (Prologue _ _ _ d)                    = d
distance (PrologueTeamTimeTrial _ _ _ d)       = d
distance (PrologueTwoManTeamTimeTrial _ _ _ d) = d
distance (Road _ _ _ _ d _)                    = d
distance (TeamTimeTrial _ _ _ _ d _)           = d
distance (ThreeManTeamTimeTrial _ _ _ _ d _)   = d
distance (IndividualTimeTrial _ _ _ _ d _)     = d

-- | Stage start: either a location or on top of a Mountain such as Tdf 1979 stage 19: Alpe d'Huez to Alpe d'Huez
start :: Stage -> Either Location Col
start (Prologue _ s _ _)                    = Left s
start (PrologueTeamTimeTrial _ s _ _)       = Left s
start (PrologueTwoManTeamTimeTrial _ s _ _) = Left s
start (TeamTimeTrial _ s _ _ _ _)           = Left s
start (ThreeManTeamTimeTrial _ s _ _ _ _)   = Left s
start (IndividualTimeTrial _ s _ _ _ _)     = s
start (Road _ s _ _ _ _)                    = s

-- | Stage finish: either a location or on top of a mountain
finish :: Stage -> Either Location Col
finish (Prologue _ _ f _)                    = Left f
finish (PrologueTeamTimeTrial _ _ f _)       = Left f
finish (PrologueTwoManTeamTimeTrial _ _ f _) = Left f
finish (TeamTimeTrial _ _ f _ _ _)           = Left f
finish (ThreeManTeamTimeTrial _ _ f _ _ _)   = Left f
finish (Road _ _ f _ _ cs)                   = finish' f cs
finish (IndividualTimeTrial _ _ f _ _ cs)    = finish' f cs

-- | If there is a location, that's the finish otherwise if there is no location and some cols, the last climb is the finish
finish' :: Maybe Location -> [IndexableCol] -> Either Location Col
finish' (Just f) _  = Left f
finish' Nothing (cs) = Right $ col $ last cs

date :: Stage -> Day
date (Prologue d _ _ _)                    = d
date (PrologueTeamTimeTrial d _ _ _)       = d
date (PrologueTwoManTeamTimeTrial d _ _ _) = d
date (Road d _ _ _ _ _)                    = d
date (TeamTimeTrial d _ _ _ _ _)           = d
date (ThreeManTeamTimeTrial d _ _ _ _ _)   = d
date (IndividualTimeTrial d _ _ _ _ _)     = d
date (RestDay d _)                         = d

-- | Prologues are always have a id of "P"
id :: Stage -> String
id (Road _ _ _ i _ _)                  = i
id (TeamTimeTrial _ _ _ i _ _)         = i
id (ThreeManTeamTimeTrial _ _ _ i _ _) = i
id (IndividualTimeTrial _ _ _ i _ _)   = i
id _                                   = "P"

-- | Prologues are always flat
cols :: Stage -> [IndexableCol]
cols (Road _ _ _ _ _ cs)                  = cs
cols (TeamTimeTrial _ _ _ _ _ cs)         = cs
cols (ThreeManTeamTimeTrial _ _ _ _ _ cs) = cs
cols (IndividualTimeTrial _ _ _ _ _ cs)   = cs

isRacingStage :: Stage -> Bool
isRacingStage (RestDay _ _) = False
isRacingStage _             = True

isRoadStage :: Stage -> Bool
isRoadStage (Road _ _ _ _ _ _) = True
isRoadStage _                  = False

isTeamTimeTrial :: Stage -> Bool
isTeamTimeTrial (TeamTimeTrial _ _ _ _ _ _)           = True
isTeamTimeTrial (ThreeManTeamTimeTrial _ _ _ _ _ _)   = True
isTeamTimeTrial _                                     = False

isIndividualTimeTrial :: Stage -> Bool
isIndividualTimeTrial (IndividualTimeTrial _ _ _ _ _ _) = True
isIndividualTimeTrial _                                 = False

description :: Stage -> String
description (Road _ _ _ _ _ _)                    = "Road stage"
description (TeamTimeTrial _ _ _ _ _ _)           = "Team time trial"
description (PrologueTeamTimeTrial _ _ _ _)       = "Team time trial"
description (PrologueTwoManTeamTimeTrial _ _ _ _) = "Two man team time trial"
description (ThreeManTeamTimeTrial _ _ _ _ _ _)   = "Three man team time trial"
description (RestDay _ _)                         = "Rest day"
description _                                     = "Individual time trial"

fromTo :: Stage -> Country -> String
fromTo stage country =
  let s = start stage
      f = finish stage
      from = case s of Left(l)  -> qualifiedLocation l country
                       Right(c) -> qualifiedCol c country
      to   = case f of Left(l)  -> qualifiedLocation l country
                       Right(c) -> qualifiedCol c country
  in if from == to then
       from
       else from ++ " to " ++ to
       
fromTo' :: Location -> Location -> Country -> String
fromTo' from to c =
  let f = qualifiedLocation from c
      t = qualifiedLocation to c
  in if from == to
       then f
       else f ++ " to " ++ t

stageKms :: Float -> String
stageKms dist = printf "%.1f km" dist

stageDayAndDate :: Stage -> String
stageDayAndDate stage =
  let dt = date stage
  in formatTime defaultTimeLocale "%-e %B" dt

route :: Stage -> Country -> String
route restDay@(RestDay dt colOrLocation) country =
  case colOrLocation of
    Just (Left(l))  ->
      intercalate "," [ "", stageDayAndDate restDay, ParcoursDB.Stage.description restDay, qualifiedLocation l country ]
    Just (Right(c)) ->
      intercalate "," [ "", stageDayAndDate restDay, ParcoursDB.Stage.description restDay, qualifiedCol c country ]
    Nothing ->
      intercalate "," [ "", stageDayAndDate restDay, ParcoursDB.Stage.description restDay ]
route stage c =
 let rte = fromTo stage c
     num = ParcoursDB.Stage.id stage
     kms = printf "%.1f km" (ParcoursDB.Stage.distance stage)
     desc = ParcoursDB.Stage.description stage
  in intercalate "," [ num, stageDayAndDate stage, rte, kms, desc ]

profile :: Stage -> [String]
profile (Road _ _ _ _ _ cs)                = map profile' cs
profile (TeamTimeTrial _ _ _ _ _ cs)       = map profile' cs
profile (IndividualTimeTrial _ _ _ _ _ cs) = map profile' cs

profile' :: IndexableCol -> String
profile' (IndexableCol km col@(ParcoursDB.Col.Col name country height Nothing Nothing Nothing) category) =
  let kms            = printf "%.1f km" km
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, name, show(category), heightInMetres ]
profile' (IndexableCol km col@(ParcoursDB.Col.Col name country height length averageGradient _) category) =
  let kms            = printf "%.1f km" km
      desc           = printf "%s (%.1f km @ %.1f%%)" name (fromJust length) (fromJust averageGradient)
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, desc, show(category), heightInMetres ]

isSummitFinish :: Stage -> Bool
isSummitFinish (Road _ _ f _ _ cs)                = isSummitFinish' f cs
isSummitFinish (IndividualTimeTrial _ _ f _ _ cs) = isSummitFinish' f cs
isSummitFinish _                                  = False

isSummitFinish' :: Maybe Location -> [IndexableCol] -> Bool
isSummitFinish' (Just f) _  = False
isSummitFinish' Nothing [] = False
isSummitFinish' Nothing (cs) = True
