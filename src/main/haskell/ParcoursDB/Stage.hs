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
type Start = Location
type Finish = Location
type Distance = Float

data Stage = Prologue            Day Start Finish Distance
           | Road                Day Start Finish StageID Distance [IndexableCol]
           | TeamTimeTrial       Day Start Finish StageID Distance [IndexableCol]
           | IndividualTimeTrial Day Start Finish StageID Distance [IndexableCol]
           | RestDay             Day Location
           | TransferDay         Day
    deriving (Eq, Show)

distance :: Stage -> Maybe Distance
distance (Prologue _ _ _ d)                = Just d
distance (Road _ _ _ _ d _)                = Just d
distance (TeamTimeTrial _ _ _ _ d _)       = Just d
distance (IndividualTimeTrial _ _ _ _ d _) = Just d
distance _                                 = Nothing

start :: Stage -> Maybe Start
start (Prologue _ s _ _)                = Just s
start (Road _ s _ _ _ _)                = Just s
start (TeamTimeTrial _ s _ _ _ _)       = Just s
start (IndividualTimeTrial _ s _ _ _ _) = Just s
start _                                 = Nothing

finish :: Stage -> Maybe Finish
finish (Prologue _ _ f _)                = Just f
finish (Road _ _ f _ _ _)                = Just f
finish (TeamTimeTrial _ _ f _ _ _)       = Just f
finish (IndividualTimeTrial _ _ f _ _ _) = Just f
finish _                                 = Nothing

date :: Stage -> Day
date (Prologue d _ _ _)                = d
date (Road d _ _ _ _ _)                = d
date (TeamTimeTrial d _ _ _ _ _)       = d
date (IndividualTimeTrial d _ _ _ _ _) = d
date (RestDay d _)                     = d
date (TransferDay d)                   = d

id :: Stage -> Maybe String
id (Prologue _ _ _ _)                = Just "P"
id (Road _ _ _ i _ _)                = Just i
id (TeamTimeTrial _ _ _ i _ _)       = Just i
id (IndividualTimeTrial _ _ _ i _ _) = Just i
id _                                 = Nothing

cols :: Stage -> [IndexableCol]
cols (Road _ _ _ _ _ cs)                = cs
cols (TeamTimeTrial _ _ _ _ _ cs)       = cs
cols (IndividualTimeTrial _ _ _ _ _ cs) = cs
cols _                                  = []

isRacingStage :: Stage -> Bool
isRacingStage (RestDay _ _)   = False
isRacingStage (TransferDay _) = False
isRacingStage _               = True

isNonRestDayOrPrologue :: Stage -> Bool
isNonRestDayOrPrologue (RestDay _ _)      = False
isNonRestDayOrPrologue (TransferDay _)    = False
isNonRestDayOrPrologue (Prologue _ f _ _) = False
isNonRestDayOrPrologue _                  = True

isRoadStage :: Stage -> Bool
isRoadStage (Road _ _ _ _ _ _) = True
isRoadStage _                  = False

isTeamTimeTrial :: Stage -> Bool
isTeamTimeTrial (TeamTimeTrial _ _ _ _ _ _) = True
isTeamTimeTrial _                           = False

isIndividualTimeTrial :: Stage -> Bool
isIndividualTimeTrial (IndividualTimeTrial _ _ _ _ _ _) = True
isIndividualTimeTrial _                                 = False

description :: Stage -> String
description (Road _ _ _ _ _ _)          = "Road stage"
description (TeamTimeTrial _ _ _ _ _ _) = "Team time trial"
description (RestDay _ _)               = "Rest day"
description (TransferDay _)             = "Rest day"
description _                           = "Individual time trial"

fromTo :: Location -> Location -> Country -> String
fromTo from to c =
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
route restDay@(RestDay dt l) c =
  let loc = ParcoursDB.Location.qualifiedLocation l c
  in intercalate "," [ "", stageDayAndDate restDay, ParcoursDB.Stage.description restDay, loc ]
route transferDay@(TransferDay dt) c =
  intercalate "," [ "", stageDayAndDate transferDay, ParcoursDB.Stage.description transferDay ]
route stage c =
  let start' = fromJust $ start stage
      finish' = fromJust $ finish stage
      rte = fromTo start' finish' c
      num = fromJust $ ParcoursDB.Stage.id stage
      kms = printf "%.1f km" $ fromJust $ ParcoursDB.Stage.distance stage
      desc = ParcoursDB.Stage.description stage
  in intercalate "," [ num, stageDayAndDate stage, rte, kms, desc ]

profile :: Stage -> [String]
profile road@(Road _ _ _ _ _ cs) = map profile' cs

profile' :: IndexableCol -> String
profile' (IndexableCol km col@(Col name category height Nothing Nothing Nothing)) =
  let kms      = printf "%.1f km" km
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, name, show(category), heightInMetres ]
profile' (IndexableCol km col@(Col name category height length averageGradient Nothing)) =
  let kms      = printf "%.1f km" km
      desc     = printf "%s (%.1f km @ %.1f%%)" name (fromJust length) (fromJust averageGradient)
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, desc, show(category), heightInMetres ]
