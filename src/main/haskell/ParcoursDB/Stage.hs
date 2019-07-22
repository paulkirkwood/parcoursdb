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

data Stage = Prologue            Day Location Location Distance
           | Road                Day (Either Location Col) (Maybe Location) StageID Distance [IndexableCol]
           | TeamTimeTrial       Day Location Location StageID Distance [IndexableCol]
           | IndividualTimeTrial Day Location (Maybe Location) StageID Distance [IndexableCol]
           | RestDay             Day Location
           | TransferDay         Day
  deriving (Eq, Show)

distance :: Stage -> Distance
distance (Prologue _ _ _ d)                = d
distance (Road _ _ _ _ d _)                = d
distance (TeamTimeTrial _ _ _ _ d _)       = d
distance (IndividualTimeTrial _ _ _ _ d _) = d

start :: Stage -> Either Location Col
start (Prologue _ s _ _)                = Left s
start (TeamTimeTrial _ s _ _ _ _)       = Left s
start (IndividualTimeTrial _ s _ _ _ _) = Left s
start (Road _ s _ _ _ _)                = s

finish :: Stage -> Either Location Col
finish (Prologue _ _ f _)                 = Left f
finish (TeamTimeTrial _ _ f _ _ _)        = Left f
finish (Road _ _ f _ _ cs)                = finish' f cs
finish (IndividualTimeTrial _ _ f _ _ cs) = finish' f cs

finish' :: Maybe Location -> [IndexableCol] -> Either Location Col
finish' (Just f) _  = Left f
finish' Nothing (cs) = Right $ col $ last cs

date :: Stage -> Day
date (Prologue d _ _ _)                = d
date (Road d _ _ _ _ _)                = d
date (TeamTimeTrial d _ _ _ _ _)       = d
date (IndividualTimeTrial d _ _ _ _ _) = d
date (RestDay d _)                     = d
date (TransferDay d)                   = d

id :: Stage -> String
id (Prologue _ _ _ _)                = "P"
id (Road _ _ _ i _ _)                = i
id (TeamTimeTrial _ _ _ i _ _)       = i
id (IndividualTimeTrial _ _ _ i _ _) = i

cols :: Stage -> [IndexableCol]
cols (Road _ _ _ _ _ cs)                = cs
cols (TeamTimeTrial _ _ _ _ _ cs)       = cs
cols (IndividualTimeTrial _ _ _ _ _ cs) = cs

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

fromTo :: Stage -> Country -> String
fromTo stage country =
  let s = start stage
      f = finish stage
      from = case s of Left(l)  -> qualifiedLocation l country
                       Right(c) -> ParcoursDB.Col.name c
      to   = case f of Left(l)  -> qualifiedLocation l country
                       Right(c) -> ParcoursDB.Col.name c
  in if from == to then
       from
       else from ++ " to " ++ to
       
--fromTo (Prologue _ s f _) c          = fromTo' s f c
--fromTo (TeamTimeTrial _ s f _ _ _) c = fromTo' s f c
--fromTo (Road _ (Left s) (Just f) _ _ []) c = fromTo' s f c
--fromTo (Road _ (Left s) Nothing _ _ (cs)) c = fromTo''' s col c
--fromTo (Road _ (Right s) (Just f) _ _ []) c = fromTo'' s f c
--fromTo (Road _ (Right s) Nothing _ _ (col:_)) c = fromTo'''' s f c
--fromTo (Road _ s@(ParcoursDB.Location.Location {}) f@(ParcoursDB.Location.Location {}) _ _ _) c = fromTo' s f c
--fromTo (Road _ s@(ParcoursDB.Location.Location {}) f@(ParcoursDB.Col.Col {}) _ _ _) c = fromTo'' s f c
--fromTo (Road _ s@(ParcoursDB.Col.Col {}) f@(ParcoursDB.Location.Location {}) _ _ _) c = fromTo''' s f c
--fromTo (Road _ s@(ParcoursDB.Col.Col {}) f@(ParcoursDB.Col.Col {}) _ _ _) c = fromTo'''' s f c
--fromTo (IndividualTimeTrial _ s@(ParcoursDB.Location.Location {}) f@(ParcoursDB.Location.Location {}) _ _ _) c = fromTo' s f c
--fromTo (IndividualTimeTrial _ s@(ParcoursDB.Location.Location {}) f@(ParcoursDB.Col.Col {}) _ _ _) c = fromTo'' s f c
--fromTo (IndividualTimeTrial _ s@(ParcoursDB.Col.Col {}) f@(ParcoursDB.Location.Location {}) _ _ _) c = fromTo''' s f c
--fromTo (IndividualTimeTrial _ s@(ParcoursDB.Col.Col {}) f@(ParcoursDB.Col.Col {}) _ _ _) c = fromTo'''' s f c

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
route restDay@(RestDay dt l) c =
  let loc = ParcoursDB.Location.qualifiedLocation l c
  in intercalate "," [ "", stageDayAndDate restDay, ParcoursDB.Stage.description restDay, loc ]
route transferDay@(TransferDay dt) c =
  intercalate "," [ "", stageDayAndDate transferDay, ParcoursDB.Stage.description transferDay ]
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
profile' (IndexableCol km col@(ParcoursDB.Col.Col name country category height Nothing Nothing Nothing)) =
  let kms            = printf "%.1f km" km
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, name, show(category), heightInMetres ]
profile' (IndexableCol km col@(ParcoursDB.Col.Col name country category height length averageGradient Nothing)) =
  let kms            = printf "%.1f km" km
      desc           = printf "%s (%.1f km @ %.1f%%)" name (fromJust length) (fromJust averageGradient)
      heightInMetres = printf "%dm" height
  in intercalate "," [ kms, desc, show(category), heightInMetres ]
