-- file StageRaces.Vuelta.hs
module StageRaces.Vuelta
(vueltaEditions
)where

import Control.Monad.State
import Countries.Andorra
import Countries.Belgium
import Countries.France
import Countries.Netherlands
import Countries.Portugal
import Countries.Spain
import Data.Time
import Mountains.Asturias
import Mountains.Cantabrian
import Mountains.Galicia
import Mountains.Prebaetic
import Mountains.Pyrenees
import Mountains.SierraDeGuadarrama
import Mountains.SierraDeLaDemanda
import Mountains.SierraDeLosFilabres
import Mountains.SierraMorena
import Mountains.SierraNevada
import Mountains.SierraSurDeJaen
import Mountains.SistemaCentral
import ParcoursDB.Col
import ParcoursDB.Country
import ParcoursDB.Location
import ParcoursDB.StageRace hiding (distance)
import ParcoursDB.State.StageRace

vueltaEditions :: [StageRace]
vueltaEditions = [ vuelta1935 
                 , vuelta1936 
                 , vuelta1941 
                 , vuelta1942 
                 , vuelta1945 
                 , vuelta1946 
                 , vuelta1947 
                 , vuelta1948 
                 , vuelta1950 
                 , vuelta1955 
                 , vuelta1956 
                 , vuelta1957 
                 , vuelta1958 
                 , vuelta1959 
                 , vuelta1960 
                 , vuelta1961 
                 , vuelta1962 
                 , vuelta1963 
                 , vuelta1964 
                 , vuelta1965 
                 , vuelta1966 
                 , vuelta1967 
                 , vuelta1968 
                 , vuelta1969 
                 , vuelta1970 
                 , vuelta1971 
                 , vuelta1972 
                 , vuelta1973 
                 , vuelta1974 
                 , vuelta1975 
                 , vuelta1976 
                 , vuelta1977 
                 , vuelta1978 
                 , vuelta1979 
                 , vuelta1980 
                 , vuelta1981 
                 , vuelta1982 
                 , vuelta1983 
                 , vuelta1984 
                 , vuelta1985 
                 , vuelta1986 
                 , vuelta1987 
                 , vuelta1988 
                 , vuelta1989 
                 , vuelta1990 
                 , vuelta1991 
                 , vuelta1992 
                 , vuelta1993 
                 , vuelta1994 
                 , vuelta1995 
                 , vuelta1996 
                 , vuelta1997 
                 , vuelta1998 
                 , vuelta1999 
                 , vuelta2000 
                 , vuelta2001 
                 , vuelta2002 
                 , vuelta2003 
                 , vuelta2004 
                 , vuelta2005 
                 , vuelta2006 
                 , vuelta2007 
                 , vuelta2008 
                 , vuelta2009 
                 , vuelta2010 
                 , vuelta2011 
                 , vuelta2012 
                 , vuelta2013 
                 , vuelta2014 
                 , vuelta2015 
                 , vuelta2016 
                 , vuelta2017
                 , vuelta2018
                 ]

vuelta1935 :: StageRace
vuelta1935 = evalState vuelta1935' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1935 4 29))

vuelta1935' :: State StageRaceState StageRace
vuelta1935' = do
  -- Stage 1
  plainStage madrid valladolid 185.0

  -- Stage 2
  plainStage valladolid santander 251.0

  transferDay

  -- Stage 3
  plainStage santander bilbao 199.0

  -- Stage 4
  plainStage bilbao sanSebastian 235.0

  -- Stage 5
  plainStage sanSebastian zaragoza 264.0

  -- Stage 6
  plainStage zaragoza barcelona 310.0

  transferDay

  -- Stage 7
  plainStage barcelona tortosa 188.0

  -- Stage 8
  plainStage tortosa valencia 188.0

  -- Stage 9
  plainStage valencia murcia 265.0

  -- Stage 10
  plainStage murcia granada 285.0

  -- Stage 11
  plainStage granada seville 260.0

  transferDay

  -- Stage 12
  plainStage seville caceres 270.0

  -- Stage 13
  plainStage caceres zamora 275.0

  -- Stage 14
  plainStage zamora madrid 250.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1936 :: StageRace
vuelta1936 = evalState vuelta1936' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1936 5 5))

vuelta1936' :: State StageRaceState StageRace
vuelta1936' = do
  -- Stage 1
  plainStage madrid salamanca 210.0

  -- Stage 2
  plainStage salamanca caceres 214.0

  -- Stage 3
  plainStage caceres seville 270.0

  transferDay

  -- Stage 4
  plainStage seville malaga 212.0

  -- Stage 5
  plainStage malaga granada 132.0

  -- Stage 6
  plainStage granada almeria 185.0

  transferDay

  -- Stage 7
  plainStage almeria alicante 306.0

  -- Stage 8
  plainStage alicante valencia 184.0

  -- Stage 9
  plainStage valencia tarragona 279.0

  transferDay

  -- Stage 10
  plainStage tarragona barcelona 129.0

  -- Stage 11
  plainStage barcelona zaragoza 293.0

  -- Stage 12
  plainStage zaragoza sanSebastian 265.0

  transferDay

  -- Stage 13
  plainStage sanSebastian bilbao 160.0

  -- Stage 14
  plainStage bilbao santander 199.0

  transferDay

  -- Stage 15
  plainStage santander gijon 194.0

  -- Stage 16
  plainStage gijon ribadeo 155.0

  -- Stage 17
  plainStage ribadeo aCoruna 157.0

  -- Stage 18
  plainStage aCoruna vigo 175.0

  transferDay

  -- Stage 19
  plainStage vigo verin 178.0

  -- Stage 20
  plainStage verin zamora 207.0

  -- Stage 21
  plainStage zamora madrid 250.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1941 :: StageRace
vuelta1941 = evalState vuelta1941' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1941 6 12))

vuelta1941' :: State StageRaceState StageRace
vuelta1941' = do
  -- Stage 1
  plainStage madrid salamanca 210.0

  -- Stage 2
  plainStage salamanca caceres 214.0

  -- Stage 3
  plainStage caceres seville 270.0

  transferDay

  -- Stage 4
  plainStage seville malaga 212.0

  -- Stage 5
  plainStage malaga almeria 220.0

  -- Stage 6
  plainStage almeria murcia 223.0

  -- Stage 7
  plainStage murcia valencia 248.0

  transferDay

  -- Stage 8
  plainStage valencia tarragona 279.0

  -- Stage 9
  plainStage tarragona barcelona 112.0

  -- Stage 10
  plainStage barcelona zaragoza 294.0

  -- Stage 11
  plainStage zaragoza logrono 172.0

  -- Stage 12
  plainStage logrono sanSebastian 213.0

  -- Stage 13
  plainStage sanSebastian bilbao 160.0

  transferDay

  -- Stage 14
  plainStage bilbao santander 165.0

  -- Stage 15
  plainStage santander gijon 192.0

  -- Stages 16a & 16b
  enableSplitStages
  individualTimeTrial gijon oviedo 53.0
  plainStage oviedo luarca 101.0
  disableSplitStages

  -- Stage 17
  plainStage luarca aCoruna 219.0

  -- Stage 18
  plainStage aCoruna vigo 175.0

  transferDay

  -- Stage 19
  plainStage vigo verin 178.0

  -- Stage 20
  plainStage verin valladolid 301.0

  -- Stage 21
  plainStage valladolid madrid 198.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1942 :: StageRace
vuelta1942 = evalState vuelta1942' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1942 6 30))

vuelta1942' :: State StageRaceState StageRace
vuelta1942' = do
  -- Stage 1
  plainStage madrid albacete 245.0

  -- Stage 2
  plainStage albacete murcia 160.0

  -- Stage 3
  plainStage murcia valencia 248.0

  transferDay

  -- Stage 4
  plainStage valencia tarragona 278.0

  -- Stage 5
  plainStage tarragona barcelona 120.0

  -- Stage 6
  plainStage barcelona huesca 279.0

  -- Stage 7
  plainStage huesca sanSebastian 305.0

  -- Stage 8
  plainStage sanSebastian bilbao 160.0

  -- Stage 9
  individualTimeTrial bilbao castroUrdiales 53.0

  -- Stage 10
  plainStage castroUrdiales santander 151.0

  -- Stage 11
  plainStage santander reinosa 120.0

  -- Stage 12
  plainStage reinosa gijon 199.0

  -- Stage 13
  plainStage gijon oviedo 75.0

  -- Stage 14
  plainStage oviedo luarca 129.0

  -- Stage 15
  plainStage luarca aCoruna 219.0

  -- Stages 16a & 16b
  enableSplitStages
  individualTimeTrial aCoruna santiagoDeCompostela 63.0
  plainStage santiagoDeCompostela vigo 110.0
  disableSplitStages

  -- Stage 17
  plainStage vigo ponferrada 270.0

  -- Stage 18
  plainStage ponferrada salamanca 251.0

  -- Stage 19
  plainStage salamanca madrid 248.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1945 :: StageRace
vuelta1945 = evalState vuelta1945' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1945 5 10))

vuelta1945' :: State StageRaceState StageRace
vuelta1945' = do
  -- Stage 1
  plainStage madrid salamanca 212.0

  -- Stage 2
  plainStage salamanca caceres 214.0

  -- Stage 3
  plainStage caceres badajoz 132.0

  -- Stages 4a & 4b
  enableSplitStages
  individualTimeTrial badajoz almendralejo 57.0
  plainStage almendralejo seville 171.0
  disableSplitStages

  transferDay

  -- Stage 5
  plainStage seville granada 251.0

  -- Stage 6
  plainStage granada murcia 285.0

  -- Stage 7
  plainStage murcia valencia 244.0

  transferDay

  -- Stage 8
  plainStage valencia tortosa 188.0

  -- Stage 9
  plainStage tortosa barcelona 288.0

  -- Stage 10
  plainStage barcelona zaragoza 306.0

  -- Stage 11
  plainStage zaragoza sanSebastian 276.0

  transferDay

  -- Stage 12
  plainStage sanSebastian bilbao 207.0

  -- Stage 13
  plainStage bilbao santander 188.0

  -- Stage 14
  plainStage santander reinosa 110.0

  -- Stage 15
  plainStage reinosa gijon 200.0

  transferDay

  -- Stage 16
  plainStage gijon leon 172.0

  -- Stage 17
  plainStage leon valladolid 132.0

  -- Stage 18
  plainStage valladolid madrid 185.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1946 :: StageRace
vuelta1946 = evalState vuelta1946' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1946 5 7))

vuelta1946' :: State StageRaceState StageRace
vuelta1946' = do
  -- Stage 1
  plainStage madrid salamanca 212.0

  -- Stages 2a & 2b
  enableSplitStages
  individualTimeTrial salamanca bejar 73.0
  plainStage bejar caceres 141.0
  disableSplitStages

  -- Stage 3
  plainStage caceres badajoz 132.0

  -- Stage 4
  plainStage badajoz seville 218.0

  transferDay

  -- Stage 5
  plainStage seville granada 251.0

  -- Stage 6
  plainStage granada baza 107.0

  -- Stage 7
  plainStage baza murcia 178.0

  -- Stage 8
  plainStage murcia valencia 264.0

  transferDay

  -- Stages 9a & 9b
  enableSplitStages
  teamTimeTrial valencia castellon 67.0
  plainStage castellon tortosa 123.0
  disableSplitStages

  -- Stage 10
  plainStage tortosa barcelona 215.0

  -- Stage 11
  plainStage barcelona lleida 162.0

  -- Stage 12
  plainStage lleida zaragoza 144.0

  -- Stage 13
  plainStage zaragoza sanSebastian 276.0

  transferDay

  -- Stage 14
  plainStage sanSebastian bilbao 207.0

  -- Stage 15
  plainStage bilbao santander 226.0

  -- Stage 16
  plainStage santander reinosa 110.0

  -- Stage 17
  plainStage reinosa gijon 204.0

  transferDay

  -- Stages 18a & 18b
  enableSplitStages
  individualTimeTrial gijon oviedo 53.0
  plainStage oviedo leon 119.0
  disableSplitStages

  -- Stage 19
  plainStage leon valladolid 134.0

  -- Stage 20
  plainStage valladolid madrid 200.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1947 :: StageRace
vuelta1947 = evalState vuelta1947' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1947 5 12))

vuelta1947' :: State StageRaceState StageRace
vuelta1947' = do
  -- Stage 1
  plainStage madrid albacete 243.0

  -- Stage 2
  plainStage albacete murcia 146.0

  -- Stage 3
  plainStage murcia alcoy 135.0

  -- Stage 4
  plainStage alcoy castellon 175.0

  -- Stage 5
  plainStage castellon tarragona 222.0

  transferDay

  -- Stage 6
  plainStage tarragona barcelona 119.0

  -- Stage 7
  plainStage barcelona lleida 162.0

  -- Stage 8
  plainStage lleida zaragoza 144.0

  -- Stage 9
  plainStage zaragoza pamplona 176.0

  -- Stage 10
  plainStage pamplona sanSebastian 107.0

  -- Stage 11
  plainStage sanSebastian bilbao 229.0

  -- Stage 12
  plainStage bilbao santander 212.0

  -- Stage 13
  plainStage santander reinosa 201.0

  -- Stage 14
  plainStage reinosa gijon 204.0

  -- Stage 15
  plainStage gijon oviedo 105.0

  -- Stages 16a & 16b
  enableSplitStages
  plainStage oviedo luarca 101.0
  individualTimeTrial luarca ribadeo 70.0
  disableSplitStages

  -- Stage 17
  plainStage ribadeo ferrol 159.0

  -- Stage 18
  plainStage ferrol aCoruna 70.0

  -- Stage 19
  plainStage aCoruna vigo 180.0

  -- Stage 20
  plainStage vigo ourense 105.0

  -- Stage 21
  plainStage ourense astorga 228.0

  -- Stage 22
  individualTimeTrial astorga leon 47.0

  -- Stage 23
  plainStage leon valladolid 133.0

  -- Stage 24
  plainStage valladolid madrid 220.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1948 :: StageRace
vuelta1948 = evalState vuelta1948' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1948 6 13))

vuelta1948' :: State StageRaceState StageRace
vuelta1948' = do
  -- Stages 1a & 1b
  enableSplitStages
  individualTimeTrial madrid madrid 14.0
  plainStage madrid valdepenas 198.0
  disableSplitStages

  -- Stage 2
  plainStage valdepenas granada 232.0

  -- Stage 3
  plainStage granada murcia 285.0

  -- Stage 4
  plainStage murcia alicante 230.0

  -- Stage 5
  plainStage alicante valencia 163.0

  transferDay

  -- Stage 6
  plainStage valencia tortosa 201.0

  -- Stage 7
  plainStage tortosa barcelona 209.0

  -- Stage 8
  plainStage barcelona lleida 203.0

  -- Stage 9
  plainStage lleida zaragoza 144.0

  -- Stage 10
  plainStage zaragoza sanSebastian 276.0

  transferDay

  -- Stage 11
  plainStage sanSebastian bilbao 259.0

  -- Stage 12
  plainStage bilbao santander 212.0

  -- Stage 13
  plainStage santander gijon 225.0

  -- Stage 14
  plainStage gijon ribadeo 200.0

  -- Stage 15
  plainStage ribadeo aCoruna 156.0

  transferDay

  -- Stage 16
  plainStage aCoruna ourense 156.0

  -- Stage 17
  plainStage ourense leon 276.0

  -- Stage 18
  plainStage leon segovia 269.0

  -- Stage 19
  plainStage segovia madrid 100.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1950 :: StageRace
vuelta1950 = evalState vuelta1950' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1950 8 17))

vuelta1950' :: State StageRaceState StageRace
vuelta1950' = do
  -- Stage 1
  plainStage madrid valladolid 190.0

  -- Stage 2
  plainStage valladolid leon 133.0

  -- Stage 3
  plainStage leon gijon 148.0

  -- Stages 4a & 4b
  enableSplitStages
  plainStage gijon torrelavega 167.0
  plainStage torrelavega santander 78.0
  disableSplitStages

  -- Stage 5
  plainStage santander bilbao 177.0

  -- Stage 6
  plainStage bilbao irun 240.0

  transferDay

  -- Stage 7
  plainStage irun pamplona 109.0

  -- Stages 8a & 8b
  enableSplitStages
  individualTimeTrial pamplona tudela 90.0
  plainStage tudela zaragoza 176.0
  disableSplitStages

  -- Stage 9
  plainStage zaragoza lleida 144.0

  -- Stage 10
  plainStage lleida barcelona 167.0

  transferDay

  -- Stage 11
  plainStage barcelona tarragona 150.0

  -- Stage 12
  plainStage tarragona castellon 194.0

  -- Stage 13
  individualTimeTrial castellon valencia 65.0

  -- Stage 14
  plainStage valencia murcia 265.0

  -- Stage 15
  plainStage murica lorca 117.0

  -- Stage 16
  plainStage lorca granada 22.0

  -- Stage 17
  plainStage granada malaga 183.0

  transferDay

  -- Stage 18
  plainStage malaga cadiz 268.0

  -- Stages 19a & 19b
  enableSplitStages
  individualTimeTrial cadiz jerezDeLaFrontera 56.0
  plainStage jerezDeLaFrontera seville 100.0
  disableSplitStages

  -- Stage 20
  plainStage seville merida 200.0

  -- Stage 21
  plainStage merida talaveraDeLaReina 228.0

  -- Stage 22
  plainStage talaveraDeLaReina madrid 117.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1955 :: StageRace
vuelta1955 = evalState vuelta1955' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1955 4 23))

vuelta1955' :: State StageRaceState StageRace
vuelta1955' = do
  -- Stage 1
  plainStage bilbao sanSebastian 240.0

  -- Stage 2
  plainStage sanSebastian bayonne 211.0

  -- Stage 3
  plainStage bayonne pamplona 157.0

  -- Stage 4
  plainStage pamplona zaragoza 229.0

  -- Stage 5
  plainStage zaragoza lleida 195.0

  -- Stage 6
  plainStage lleida barcelona 230.0

  transferDay

  -- Stage 7
  outAndBackIndividualTimeTrial barcelona 29.0

  -- Stage 8
  plainStage barcelona tortosa 213.0

  -- Stage 9
  plainStage tortosa valencia 190.0

  -- Stage 10
  plainStage valencia cuenca 222.0

  -- Stage 11
  plainStage cuenca madrid 168.0

  -- Stage 12
  outAndBackTeamTimeTrial madrid 15.0

  -- Stage 13
  plainStage madrid valladolid 222.0

  -- Stage 14
  plainStage valladolid bilbao 308.0

  -- Stage 15
  criterium bilbao 147.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1956 :: StageRace
vuelta1956 = evalState vuelta1956' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1956 4 26))

vuelta1956' :: State StageRaceState StageRace
vuelta1956' = do
  -- Stage 1
  plainStage bilbao santander 203.0

  -- Stage 2
  plainStage santander oviedo 248.0

  -- Stage 3
  plainStage oviedo valladolid 175.0

  -- Stage 4
  plainStage valladolid madrid 212.0

  -- Stage 5
  plainStage madrid albacete 241.0

  -- Stage 6
  plainStage albacete alicante 227.0

  -- Stage 7
  plainStage alicante valencia 182.0

  -- Stage 8
  plainStage valencia tarragona 249.0

  transferDay

  -- Stage 9
  plainStage tarragona barcelona 163.0

  -- Stages 10a & 10b
  enableSplitStages
  outAndBackTeamTimeTrial barcelona 21.0
  plainStage barcelona tarrega 112.0
  disableSplitStages

  -- Stage 11
  plainStage tarrega zaragoza 238.0

  -- Stage 12
  plainStage zaragoza bayonne 274.0

  -- Stages 13a & 13b
  enableSplitStages
  individualTimeTrial bayonne irun 43.0
  plainStage irun pamplona 111.0
  disableSplitStages

  -- Stage 14
  plainStage pamplona sanSebastian 195.0

  -- Stage 15
  plainStage sanSebastian bilbao 225.0

  -- Stage 16
  plainStage bilbao vitoria 207.0

  -- Stage 17
  plainStage vitoria bilbao 190.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1957 :: StageRace
vuelta1957 = evalState vuelta1957' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1957 4 26))

vuelta1957' :: State StageRaceState StageRace
vuelta1957' = do
  -- Stage 1
  plainStage bilbao vitoria 158.0

  -- Stage 2
  plainStage vitoria santander 220.0

  -- Stage 3
  plainStage santander mieres 259.0

  -- Stage 4
  plainStage mieres leon 0.0

  -- Stage 5
  plainStage leon valladolid 172.0

  -- Stage 6
  plainStage valladolid madrid 212.0

  -- Stage 7
  criterium madrid 200.0

  -- Stage 8
  plainStage madrid cuenca 159.0

  transferDay

  -- Stage 9
  plainStage cuenca valencia 249.0

  -- Stage 10
  plainStage valencia tortosa 192.0

  -- Stage 11
  plainStage tortosa barcelona 199.0

  -- Stage 12
  plainStage igualada zaragoza 229.0

  -- Stage 13
  individualTimeTrial zaragoza huesca 85.0

  -- Stage 14
  plainStage huesca bayonne 249.0

  -- Stage 15
  plainStage bayonne sanSebastian 199.0

  -- Stage 16
  plainStage sanSebastian bilbao 193.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1958 :: StageRace
vuelta1958 = evalState vuelta1958' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1958 4 30))

vuelta1958' :: State StageRaceState StageRace
vuelta1958' = do
  -- Stage 1
  plainStage bilbao sanSebastian 164.0

  -- Stage 2
  plainStage sanSebastian pamplona 150.0

  -- Stage 3
  plainStage pamplona zaragoza 245.0

  -- Stage 4
  plainStage zaragoza barcelona 229.0

  -- Stages 5a & 5b
  enableSplitStages
  outAndBackTeamTimeTrial barcelona 4.0
  plainStage barcelona tarragona 119.0
  disableSplitStages

  -- Stage 6
  plainStage tarragona valencia 263.0

  -- Stage 7
  plainStage valencia cuenca 216.0

  -- Stage 8
  plainStage cuenca toledo 206.0

  -- Stage 9
  plainStage toledo madrid 241.0

  -- Stage 10
  plainStage madrid soria 225.0

  -- Stage 11
  plainStage soria vitoria 167.0

  -- Stage 12
  plainStage vitoria bilbao 169.0

  -- Stages 13a & 13b
  enableSplitStages
  individualTimeTrial bilbao castroUrdiales 35.0
  plainStage castroUrdiales santander 105.0
  disableSplitStages

  -- Stage 14
  plainStage santander gijon 221.0

  -- Stage 15
  plainStage oviedo palencia 246.0

  -- Stage 16
  plainStage palencia madrid 241.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1959 :: StageRace
vuelta1959 = evalState vuelta1959' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1959 4 29))

vuelta1959' :: State StageRaceState StageRace
vuelta1959' = do
  -- Stages 1a & 1b
  enableSplitStages
  outAndBackTeamTimeTrial madrid 9.0
  plainStage madrid toledo 114.0
  disableSplitStages

  -- Stage 2
  plainStage manzanares cordoba 228.0

  -- Stage 3
  plainStage cordoba seville 140.0

  -- Stage 4
  plainStage seville granada 240.0

  -- Stage 5
  plainStage guadix murcia 225.0

  -- Stage 6
  plainStage murcia alicante 173.0

  -- Stage 7
  plainStage alicante castellon 233.0

  -- Stage 8
  plainStage castellon tortosa 130.0

  -- Stage 9
  plainStage tortosa barcelona 196.0

  -- Stage 10
  plainStage granollers lleida 183.0

  -- Stage 11
  plainStage lleida pamplona 242.0

  -- Stage 12
  plainStage pamplona sanSebastian 210.0

  -- Stage 13
  outAndBackTeamTimeTrial sanSebastian 9.0

  -- Stage 14
  individualTimeTrial eibar vitoria 62.0

  -- Stage 15
  plainStage vitoria santander 230.0

  -- Stage 16
  plainStage santander bilbao 187.0

  -- Stage 17
  criterium bilbao 222.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1960 :: StageRace
vuelta1960 = evalState vuelta1960' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1960 4 29))

vuelta1960' :: State StageRaceState StageRace
vuelta1960' = do
  -- Stage 1
  outAndBackTeamTimeTrial gijon 8.0

  -- Stage 2
  plainStage gijon aCoruna 235.0

  -- Stage 3
  plainStage aCoruna vigo 187.0

  -- Stage 4
  plainStage vigo ourense 105.0

  -- Stage 5
  plainStage ourense zamora 287.0

  -- Stage 6
  plainStage zamora madrid 250.0

  -- Stage 7
  criterium madrid 209.0

  -- Stage 8
  plainStage guadalajara zaragoza 264.0

  -- Stage 9
  plainStage zaragoza barcelona 269.0

  -- Stage 10
  plainStage barcelona barbastro 240.0

  -- Stage 11
  plainStage barbastro pamplona 267.0

  -- Stage 12
  plainStage pamplona logrono 179.0

  -- Stage 13
  plainStage logrono sanSebastian 211.0

  -- Stage 14
  plainStage sanSebastian vitoria 263.0

  -- Stage 15
  plainStage vitoria santander 232.0

  -- Stage 16
  plainStage santander bilbao 192.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage bilbao guernica 116.0
  individualTimeTrial guernica bilbao 53.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1961 :: StageRace
vuelta1961 = evalState vuelta1961' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1961 4 26))

vuelta1961' :: State StageRaceState StageRace
vuelta1961' = do
  -- Stages 1a & 1b
  enableSplitStages
  outAndBackTeamTimeTrial sanSebastian 10.5
  plainStage sanSebastian pamplona 91.0
  disableSplitStages

  -- Stage 2
  criterium pamplona 174.0

  -- Stage 3
  plainStage pamplona huesca 174.0

  -- Stage 4
  plainStage binefar barcelona 199.0

  -- Stage 5
  plainStage barcelona tortosa 185.0

  -- Stage 6
  plainStage tortosa valencia 188.0

  -- Stage 7
  plainStage valencia benidorm 141.0

  -- Stage 8
  plainStage benidorm albacete 211.0

  -- Stage 9
  plainStage albacete madrid 198.0

  -- Stage 10
  criterium madrid 195.0

  -- Stage 11
  plainStage madrid valladolid 189.0

  -- Stage 12
  individualTimeTrial valladolid palencia 48.0

  -- Stage 13
  plainStage palencia santander 220.0

  -- Stage 14
  plainStage santander vitoria 235.0

  -- Stage 15
  plainStage vitoria bilbao 179.0

  -- Stage 16
  criterium bilbao 159.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1962 :: StageRace
vuelta1962 = evalState vuelta1962' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1962 4 27))

vuelta1962' :: State StageRaceState StageRace
vuelta1962' = do
  -- Stage 1
  criterium barcelona 90.0

  -- Stage 2
  plainStage barcelona tortosa 185.0

  -- Stage 3
  plainStage tortosa valencia 188.0

  -- Stage 4
  plainStage valencia benidorm 141.0

  -- Stage 5
  outAndBackTeamTimeTrial benidorm 21.0

  -- Stage 6
  plainStage benidorm cartagena 152.0

  -- Stage 7
  plainStage murcia almeria 223.0

  -- Stage 8
  plainStage almeria malaga 220.0

  -- Stage 9
  plainStage malaga cordoba 193.0

  -- Stage 10
  plainStage valapenas madrid 210.0

  -- Stage 11
  plainStage madrid valladolid 189.0

  -- Stage 12
  plainStage valladolid logrono 232.0

  -- Stage 13
  plainStage logrono pamplona 191.0

  -- Stage 14
  plainStage pamplona bayonne 149.0

  -- Stage 15
  individualTimeTrial bayonne sanSebastian 82.0

  -- Stage 16
  plainStage sanSebastian vitoria 177.0

  -- Stage 17
  plainStage vitoria bilbao 171.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1963 :: StageRace
vuelta1963 = evalState vuelta1963' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1963 5 1))

vuelta1963' :: State StageRaceState StageRace
vuelta1963' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage gijon mieres 45.0
  individualTimeTrial mieres gijon 52.0
  disableSplitStages

  -- Stage 2
  plainStage gijon torrelavega 175.0

  -- Stage 3
  plainStage torrelavega vitoria 249.0

  -- Stage 4
  plainStage vitoria bilbao 104.0

  -- Stage 5
  criterium bilbao 191.0

  -- Stage 6
  plainStage bilbao eibar 165.0

  -- Stage 7
  plainStage eibar tolosa 138.0

  -- Stage 8
  plainStage tolosa pamplona 169.0

  -- Stage 9
  plainStage pamplona zaragoza 180.0

  -- Stage 10
  plainStage zaragoza lleida 144.0

  -- Stage 11
  plainStage lleida barcelona 182.0

  -- Stages 12a & 12b
  enableSplitStages
  criterium barcelona 80.0
  individualTimeTrial sitges tarragona 52.0
  disableSplitStages

  -- Stage 13
  plainStage tarragona valencia 252.0

  -- Stage 14
  plainStage cuenca madrid 177.0

  -- Stage 15
  criterium madrid 87.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1964 :: StageRace
vuelta1964 = evalState vuelta1964' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1964 4 30))

vuelta1964' :: State StageRaceState StageRace
vuelta1964' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage benidorm barcelona 42.0
  outAndBackIndividualTimeTrial benidorm 11.0
  disableSplitStages

  -- Stage 2
  plainStage benidorm nules 199.0

  -- Stage 3
  plainStage nules salou 212.0

  -- Stages 4a & 4b
  enableSplitStages
  plainStage salou barcelona 115.0
  criterium barcelona 49.0
  disableSplitStages

  -- Stage 5
  plainStage barcelona puigcerda 174.0

  -- Stage 6
  plainStage puigcerda lleida 187.0

  -- Stage 7
  plainStage lleida jaca 201.0

  -- Stage 8
  plainStage jaca pamplona 205.0

  -- Stage 9
  plainStage pamplona sanSebastian 205.0

  -- Stage 10
  plainStage sanSebastian bilbao 197.0

  -- Stage 11
  plainStage bilbao vitoria 107.0

  -- Stage 12
  plainStage vitoria santander 211.0

  -- Stage 13
  plainStage santander aviles 230.0

  -- Stage 14
  plainStage aviles leon 163.0

  -- Stage 15
  individualTimeTrial becilla valladolid 65.0

  -- Stage 16
  plainStage valladolid madrid 209.0

  -- Stage 17
  criterium madrid 87.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1965 :: StageRace
vuelta1965 = evalState vuelta1965' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1965 4 29))

vuelta1965' :: State StageRaceState StageRace
vuelta1965' = do
  -- Stage 1
  criterium vigo 168.0

  -- Stage 2
  plainStage pontevedra lugo 150.0

  -- Stage 3
  plainStage lugo gijon 247.0

  -- Stages 4a & 4b
  enableSplitStages
  individualTimeTrial mieres pajares 41.0
  plainStage pajares palencia 189.0
  disableSplitStages

  -- Stage 5
  plainStage palencia madrid 238.0

  -- Stage 6
  plainStage madrid cuenca 161.0

  -- Stage 7
  plainStage albacete benidorm 212.0

  -- Stage 8
  plainStage benidorm sagunto 174.0

  -- Stage 9
  plainStage sagunto salou 237.0

  -- Stages 10a & 10b
  enableSplitStages
  plainStage salou barcelona 115.0
  criterium barcelona 50.0
  disableSplitStages

  -- Stage 11
  plainStage barcelona andorra 241.0

  -- Stage 12
  plainStage andorra lleida 158.0

  -- Stage 13
  plainStage lleida zaragoza 190.0

  -- Stage 14
  plainStage zaragoza pamplona 193.0

  -- Stage 15
  plainStage pamplona bayonne 149.0

  -- Stage 16
  individualTimeTrial saintPeeSurNivelle sanSebastian 61.0

  -- Stage 17
  plainStage sanSebastian vitoria 214.0

  -- Stage 18
  plainStage vitoria bilbao 222.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1966 :: StageRace
vuelta1966 = evalState vuelta1966' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1966 4 28))

vuelta1966' :: State StageRaceState StageRace
vuelta1966' = do
  -- Stages 1a & 1b
  enableSplitStages
  criterium murcia 111.0
  outAndBackIndividualTimeTrial murcia 3.5
  disableSplitStages

  -- Stages 2a & 2b
  enableSplitStages
  plainStage murcia laManga 81.0
  plainStage laManga benidorm 153.0
  disableSplitStages

  -- Stage 3
  plainStage benidorm valencia 148.0

  -- Stage 4
  plainStage cuenca madrid 177.0

  -- Stage 5
  criterium madrid 181.0

  -- Stage 6
  plainStage madrid calatayud 225.0

  -- Stage 7
  plainStage calatayud zaragoza 105.0

  -- Stage 8
  plainStage zaragoza lleida 144.0

  -- Stage 9
  plainStage lleida lasColinas 128.0

  -- Stages 10a & 10b
  enableSplitStages
  plainStage sitges barcelona 40.0
  criterium barcelona 49.0
  disableSplitStages

  -- Stage 11
  plainStage barcelona huesca 266.0

  -- Stage 12
  plainStage huesca pamplona 221.0

  -- Stage 13
  plainStage pamplona sanSebastian 178.0

  -- Stage 14
  plainStage sanSebastian vitoria 178.0

  -- Stages 15a & 15b
  enableSplitStages
  individualTimeTrial vitoria haro 61.0
  plainStage haro logrono 52.0
  disableSplitStages

  -- Stage 16
  plainStage logrono burgos 116.0

  -- Stage 17
  plainStage burgos santander 226.0

  -- Stage 18
  plainStage santander bilbao 154.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1967 :: StageRace
vuelta1967 = evalState vuelta1967' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1967 4 27))

vuelta1967' :: State StageRaceState StageRace
vuelta1967' = do
  -- Stages 1a & 1b
  enableSplitStages
  plainStage vigo oBaixoMino 110.0
  outAndBackIndividualTimeTrial vigo 4.1
  disableSplitStages

  -- Stage 2
  plainStage pontevedra ourense 186.0

  -- Stage 3
  plainStage ourense astorga 230.0

  -- Stage 4
  plainStage astorga salamanca 201.0

  -- Stage 5
  plainStage salamanca madrid 201.0

  -- Stage 6
  plainStage albacete benidorm 212.0

  -- Stage 7
  plainStage benidorm valencia 148.0

  -- Stage 8
  plainStage valencia vinaros 145.0

  -- Stage 9
  plainStage vinaros sitges 172.0

  -- Stages 10a & 10b
  enableSplitStages
  plainStage sitges barcelona 39.0
  criterium barcelona 45.4
  disableSplitStages

  -- Stage 11
  plainStage barcelona andorraLaVella 241.0

  -- Stage 12
  plainStage andorraLaVella lleida 158.0

  -- Stage 13
  plainStage lleida zaragoza 182.0

  -- Stage 14
  plainStage zaragoza pamplona 193.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage pamplona logrono 92.0
  individualTimeTrial laguardia vitoria 44.0
  disableSplitStages

  -- Stage 16
  plainStage vitoria sanSebastian 139.0

  -- Stage 17
  individualTimeTrial villabona zarautz 28.0

  -- Stage 18
  plainStage zarautz bilbao 175.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1968 :: StageRace
vuelta1968 = evalState vuelta1968' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1968 4 25))

vuelta1968' :: State StageRaceState StageRace
vuelta1968' = do
  -- Stages 1a & 1b
  enableSplitStages
  criterium zaragoza 130.0
  outAndBackIndividualTimeTrial zaragoza 4.0
  disableSplitStages

  -- Stage 2
  plainStage zaragoza lleida 195.0

  -- Stages 3a & 3b
  enableSplitStages
  plainStage lleida barcelona 165.0
  criterium barcelona 38.0
  disableSplitStages

  -- Stage 4
  plainStage barcelona salou 108.0

  -- Stage 5
  plainStage salou vinaros 106.0

  -- Stage 6
  plainStage vinaros valencia 148.0

  -- Stage 7
  plainStage valencia benidorm 144.0

  -- Stage 8
  plainStage benidorm almansa 167.0

  -- Stage 9
  plainStage almansa alcazarDeSanJuan 230.0

  -- Stage 10
  plainStage alcazarDeSanJuan madrid 173.0

  -- Stage 11
  plainStage madrid palencia 242.0

  -- Stage 12
  plainStage villalonDeCampos gijon 236.0

  -- Stage 13
  plainStage gijon santander 203.0

  -- Stage 14
  plainStage santander vitoria 244.0

  -- Stage 15
  plainStage vitoria pamplona 0.0

  -- Stage 16
  plainStage pamplona sanSebastian 204.0

  -- Stage 17
  individualTimeTrial sanSebastian tolosa 67.0

  -- Stage 18
  plainStage tolosa bilbao 206.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1969 :: StageRace
vuelta1969 = evalState vuelta1969' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1969 4 23))

vuelta1969' :: State StageRaceState StageRace
vuelta1969' = do

  -- Stage 1A & 1B
  enableABStages
  outAndBackIndividualTimeTrial badajoz 6.5
  criterium badajoz 246.0
  disableABStages

  -- Stage 2
  plainStage badajoz caceres 135.0

  -- Stage 3
  plainStage caceres talaveraDeLaReina 190.0

  -- Stage 4
  plainStage talaveraDeLaReina madrid 124.0

  -- Stage 5
  plainStage madrid alcazarDeSanJuan 162.0

  -- Stage 6
  plainStage alcazarDeSanJuan almansa 231.0

  -- Stage 7
  plainStage almansa nules 233.0

  -- Stage 8
  plainStage nules benicassim 199.0

  -- Stage 9
  plainStage benicassim reus 169.0

  -- Stage 10
  plainStage reus barcelona 146.0

  -- Stage 11
  plainStage barcelona santFeliuDeGuixols 118.0

  -- Stage 12
  plainStage santFeliuDeGuixols moia 151.0

  -- Stage 13
  plainStage moia barbastro 229.0

  -- Stages 14a & 14b
  enableSplitStages
  plainStage barbastro zaragoza 125.0
  outAndBackIndividualTimeTrial zaragoza 4.0
  disableSplitStages

  -- Stage 15
  plainStage zaragoza pamplona 176.0

  -- Stage 16
  individualTimeTrial irun sanSebastian 25.0

  -- Stage 17
  plainStage sanSebastian vitoria 129.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage vitoria llodio 76.0
  individualTimeTrial llodio bilbao 29.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1970 :: StageRace
vuelta1970 = evalState vuelta1970' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1970 4 23))

vuelta1970' :: State StageRaceState StageRace
vuelta1970' = do
  -- Prologue
  outAndBackPrologue cadiz 6.0

  -- Stage 1
  plainStage cadiz jerezDeLaFrontera 170.0

  -- Stage 2
  plainStage jerezDeLaFrontera fuengirola 217.0

  -- Stage 3
  plainStage fuengirola almeria 249.0

  -- Stage 4
  plainStage almeria lorca 161.0

  -- Stage 5
  plainStage lorca calp 209.0

  -- Stage 6
  plainStage calp borriana 198.0

  -- Stage 7
  plainStage borriana tarragona 201.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage tarragona barcelona 100.0
  criterium barcelona 48.0
  disableSplitStages

  -- Stage 9
  plainStage barcelona igualada 189.0

  -- Stage 10
  plainStage igualada zaragoza 237.0

  -- Stage 11
  plainStage zaragoza calatayud 118.0

  -- Stage 12
  plainStage calatayud madrid 204.0

  -- Stage 13
  plainStage madrid soria 221.0

  -- Stage 14
  plainStage soria valladolid 238.0

  -- Stage 15
  plainStage valladolid burgos 134.0

  -- Stage 16
  plainStage burgos santander 179.0

  -- Stage 17
  plainStage santander vitoria 191.0

  -- Stage 18
  plainStage vitoria sanSebastian 157.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage sanSebastian llodio 104.0
  individualTimeTrial llodio bilbao 29.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1971 :: StageRace
vuelta1971 = evalState vuelta1971' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1971 4 29))

vuelta1971' :: State StageRaceState StageRace
vuelta1971' = do
  -- Prologue
  outAndBackPrologue almeria 4.2

  -- Stage 1
  criterium almeria 126.0

  -- Stage 2
  plainStage aguilas calp 245.0

  -- Stage 3
  plainStage calp laPoblaDeFarnals 164.0

  -- Stage 4
  plainStage laPoblaDeFarnals benicassim 175

  -- Stage 5
  plainStage benicassim salou 172.0

  -- Stage 6
  plainStage salou barcelona 149.0

  -- Stage 7
  plainStage barcelona manresa 179.0

  -- Stage 8
  plainStage balaguer jaca 211.0

  -- Stage 9
  plainStage jaca pamplona 175.0

  -- Stage 10
  plainStage pamplona sanSebastian 120.0

  -- Stages 11a & 11b
  enableSplitStages
  plainStage sanSebastian bilbao 140.0
  outAndBackIndividualTimeTrial bilbao 2.6
  disableSplitStages

  -- Stage 12
  plainStage bilbao vitoria 185.0

  -- Stage 13
  plainStage vitoria torrelavega 208.0

  -- Stage 14
  plainStage torrelavega burgos 192.0

  -- Stage 15
  plainStage burgos segovia 188.0

  -- Stage 16
  plainStage segovia avila 114.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage avila madrid 138.0
  outAndBackIndividualTimeTrial madrid 5.3
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1972 :: StageRace
vuelta1972 = evalState vuelta1972' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1972 4 27))

vuelta1972' :: State StageRaceState StageRace
vuelta1972' = do
  -- Prologue
  outAndBackPrologue fuengirola 6.0

  -- Stage 1
  plainStage fuengirola cabra 167.0

  -- Stage 2
  plainStage cabra granada 206.0

  -- Stage 3
  plainStage granada almeria 181.0

  -- Stage 4
  plainStage almeria dehesaDeCampoamor 251.0

  -- Stage 5
  plainStage dehesaDeCampoamor gandia 183.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage gandia elSaler 120.0
  outAndBackTeamTimeTrial elSaler 6.5
  disableSplitStages

  -- Stage 7
  plainStage valencia vinaros 181.0

  -- Stage 8
  plainStage vinaros tarragona 189.0

  -- Stages 9a & 9b
  enableSplitStages
  plainStage tarragona barcelona 118.0
  outAndBackIndividualTimeTrial barcelona 10.0
  disableSplitStages

  -- Stage 10
  plainStage barcelona banyoles 192.0

  -- Stage 11
  plainStage manresa zaragoza 259.0

  -- Stage 12
  mountainStage (Left zaragoza) 169
  addCol 169 Mountains.Pyrenees.formigal C1

  -- Stage 13
  plainStage sanguesa arrate 201.0

  -- Stage 14
  plainStage eibar bilbao 145.0

  -- Stage 15
  plainStage bilbao torrelavega 148.0

  -- Stage 16
  plainStage torrelavega vitoria 219.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage vitoria sanSebastian 138.0
  outAndBackIndividualTimeTrial sanSebastian 20.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1973 :: StageRace
vuelta1973 = evalState vuelta1973' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1973 4 26))

vuelta1973' :: State StageRaceState StageRace
vuelta1973' = do
  -- Prologue
  outAndBackPrologue calp 5.0

  -- Stage 1
  plainStage calp murcia 187.0

  -- Stage 2
  plainStage murcia albacete 156.0

  -- Stage 3
  plainStage albacete alcazarDeSanJuan 146.0

  -- Stage 4
  plainStage alcazarDeSanJuan cuenca 169.0

  -- Stage 5
  plainStage cuenca teruel 191.0

  -- Stages 6a & 6b
  enableSplitStages
  plainStage teruel laPoblaDeFarnals 150.0
  outAndBackTeamTimeTrial laPoblaDeFarnals 5.0
  disableSplitStages

  -- Stage 7
  plainStage laPoblaDeFarnals castellonDeLaPlana 165.0

  -- Stage 8
  plainStage castellonDeLaPlana calafell 245.0

  -- Stages 9a & 9b
  enableSplitStages
  plainStage calafell barcelona 80.0
  outAndBackIndividualTimeTrial barcelona 37.9
  disableSplitStages

  -- Stage 10
  plainStage barcelona empuriabrava 171.0

  -- Stage 11
  plainStage empuriabrava manresa 225.0

  -- Stage 12
  plainStage manresa zaragoza 259.0

  -- Stage 13
  plainStage mallen irache 175.0

  -- Stage 14
  plainStage irache bilbao 182.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage bilbao torrelavega 154.0
  outAndBackIndividualTimeTrial torrelavega 17.4
  disableSplitStages

  -- Stage 16
  plainStage torrelavega mirandaDeEbro 203.0

  -- Stages 17a & 17b
  enableSplitStages
  plainStage mirandaDeEbro tortosa 127.0
  individualTimeTrial hernani sanSebastian 10.5
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1974 :: StageRace
vuelta1974 = evalState vuelta1974' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1974 4 23))

vuelta1974' :: State StageRaceState StageRace
vuelta1974' = do
  -- Prologue
  outAndBackPrologue almeria 5.0

  -- Stage 1
  criterium almeria 98.0

  -- Stage 2
  plainStage almeria granada 187.0

  -- Stage 3
  plainStage granada fuengirola 161.0

  -- Stage 4
  plainStage marbella seville 206.0

  -- Stage 5
  plainStage seville cordoba 139.0

  -- Stage 6
  plainStage cordoba ciudadReal 211.0

  -- Stage 7
  plainStage ciudadReal toledo 126.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage toledo madrid 167.0
  outAndBackTeamTimeTrial circuitoDelJarama 4.0
  disableSplitStages

  -- Stage 9
  plainStage madrid losAngelesDeSanRafael 158.0

  -- Stages 10a & 10b
  enableSplitStages
  outAndBackIndividualTimeTrial losAngelesDeSanRafael 5.0
  plainStage losAngelesDeSanRafael avila 125.0
  disableSplitStages

  -- Stage 11
  plainStage avila valladolid 168.0

  -- Stage 12
  plainStage valladolid leon 203.0

  -- Stage 13
  plainStage leon monteNaranco 128.0

  -- Stage 14
  plainStage oviedo cangasDeOnis 134.0

  -- Stage 15
  plainStage cangasDeOnis laredo 210.0

  -- Stage 16
  plainStage laredo bilbao 133.0

  -- Stage 17
  plainStage bilbao mirandaDeEbro 157.0

  -- Stage 18
  plainStage mirandaDeEbro eibar 152.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage eibar sanSebastian 79.0
  outAndBackIndividualTimeTrial sanSebastian 35.9
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1975 :: StageRace
vuelta1975 = evalState vuelta1975' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1975 4 22))

vuelta1975' :: State StageRaceState StageRace
vuelta1975' = do
  -- Prologue
  outAndBackPrologue fuengirola 4.4

  -- Stage 1
  criterium marbella 78.0

  -- Stage 2
  plainStage malaga granada 143.0

  -- Stage 3
  criterium granada 179.0

  -- Stage 4
  plainStage almeria aguilas 178.0

  -- Stage 5
  plainStage aguilas murcia 176.0

  -- Stage 6
  plainStage murcia benidorm 217.0

  -- Stage 7
  outAndBackIndividualTimeTrial benidorm 8.3

  -- Stage 8
  plainStage benidorm laPoblaDeFarnals 217.0

  -- Stage 9
  plainStage laPoblaDeFarnals vinaros 157.0

  -- Stage 10
  plainStage vinaros cambrils 173.0

  -- Stage 11
  plainStage cambrils barcelona 151.0

  -- Stage 12
  criterium palmaDeMallorca 181.0

  -- Stage 13
  plainStage barcelona tremp 189.0

  -- Stage 14
  mountainStage (Left tremp) 233
  addCol 233 Mountains.Pyrenees.formigal C1

  -- Stage 15
  plainStage jaca irache 160.0

  -- Stage 16
  plainStage irache urkiola 150.0

  -- Stage 17
  plainStage durango bilbao 123.0

  -- Stage 18
  plainStage bilbao mirandaDeEbro 186.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage mirandaDeEbro beasain 110.0
  outAndBackIndividualTimeTrial sanSebastian 31.7
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1976 :: StageRace
vuelta1976 = evalState vuelta1976' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1976 4 27))

vuelta1976' :: State StageRaceState StageRace
vuelta1976' = do
  -- Prologue
  outAndBackPrologue estepona 3.2

  -- Stage 1
  criterium estepona 135.0

  -- Stage 2
  plainStage estepona priegoDeCordoba 224.0

  -- Stage 3
  plainStage priegoDeCordoba jaen 177.0

  -- Stage 4
  plainStage jaen baza 166.0

  -- Stage 5
  plainStage baza cartagena 201.0

  -- Stage 6
  outAndBackIndividualTimeTrial cartagena 14.0

  -- Stage 7
  plainStage cartagena murcia 136.0

  -- Stage 8
  plainStage murcia almansa 219.0

  -- Stage 9
  plainStage almansa nules 208.0

  -- Stage 10
  plainStage castellon cambrils 226.0

  -- Stage 11
  plainStage cambrils barcelona 151.0

  -- Stage 12
  plainStage pamplona logrono 168.0

  -- Stage 13
  plainStage logrono palencia 209.0

  -- Stage 14
  plainStage paradesDeNava gijon 249.0

  -- Stage 15
  plainStage gijon cangasDeOnis 141.0

  -- Stage 16
  plainStage cangasDeOnis reinosa 156.0

  -- Stage 17
  plainStage reinosa bilbao 183.0

  -- Stage 18
  plainStage galdacano sanctuarioDeOro 204.0

  -- Stage 19
  plainStage murgia sanSebastian 139.0

  -- Stages 20a & 20b
  enableSplitStages
  plainStage murgia sanSebastian 139.0
  outAndBackIndividualTimeTrial sanSebastian 31.7
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1977 :: StageRace
vuelta1977 = evalState vuelta1977' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1977 4 26))

vuelta1977' :: State StageRaceState StageRace
vuelta1977' = do
  -- Prologue
  outAndBackPrologue dehesaDeCampoamor 8.0

  -- Stage 1
  plainStage dehesaDeCampoamor laManga 115.0

  -- Stage 2
  plainStage laManaga murcia 161.0

  -- Stage 3
  plainStage murcia benidorm 200.0

  -- Stage 4
  outAndBackIndividualTimeTrial benidorm 8.3

  -- Stage 5
  plainStage benidorm elSaler 159.0

  -- Stage 6
  plainStage valencia teruel 170.0

  -- Stage 7
  plainStage teruel alcalaDeXivert 204.0

  -- Stage 8
  plainStage alcalaDeXivert tortosa 141.0

  -- Stage 9
  plainStage tortosa salou 144.0

  -- Stage 10
  plainStage salou barcelona 144.0

  -- Stages 11a & 11b
  enableSplitStages
  outAndBackIndividualTimeTrial barcelona 3.8
  criterium barcelona 45.0
  disableSplitStages

  -- Stage 12
  plainStage barcelona laTossaDeMontbui 198.0

  -- Stage 13
  plainStage igualada laSeuD'Urgell 135.0

  -- Stage 14
  plainStage laSeuD'Urgell monzon 200.0

  -- Stage 15
  mountainStage (Left monzon) 166
  addCol 166 Mountains.Pyrenees.formigal C1

  -- Stage 16
  plainStage Countries.Spain.formigal cordovilla 170.0

  -- Stage 17
  plainStage cordovilla bilbao 183.0

  -- Stage 18
  plainStage bilbao urkiola 126.0

  -- Stage 19
  plainStage durango mirandaDeEbro 104.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1978 :: StageRace
vuelta1978 = evalState vuelta1978' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1978 4 25))

vuelta1978' :: State StageRaceState StageRace
vuelta1978' = do
  -- Prologue
  outAndBackPrologue gijon 8.6

  -- Stage 1
  criterium gijon 144.0

  -- Stage 2
  plainStage gijon cangasDeOnis 94.0

  -- Stage 3
  plainStage cangasDeOnis leon 187.0

  -- Stage 4
  plainStage leon valladolid 171.0

  -- Stage 5
  plainStage valladolid avila 136.0

  -- Stage 6
  plainStage torrelaguna torrejonDeArdoz 46.0

  -- Stage 7
  plainStage torrejonDeArdoz cuenca 160.0

  -- Stage 8
  plainStage cuenca benicassim 249.0

  -- Stage 9
  plainStage benicassim tortosa 156.0

  -- Stage 10
  plainStage tortosa calafell 201.0

  -- Stages 11a & 11b
  enableSplitStages
  plainStage calafell barcelona 67.0
  outAndBackIndividualTimeTrial barcelona 3.8
  disableSplitStages

  -- Stage 12
  let bellaterra' = ParcoursDB.Location.vicinity bellaterra "Cerdanyola del Vallès"
  let laTossaDeMontbui' = ParcoursDB.Location.vicinity laTossaDeMontbui "Santa Margarida de Montbui"
  plainStage bellaterra' laTossaDeMontbui' 205.0

  -- Stage 13
  plainStage igualada jaca 243.0

  -- Stage 14
  plainStage jaca logrono 219.0

  -- Stage 15
  plainStage logrono mirandaDeEbro 131.0

  -- Stage 16
  plainStage mirandaDeEbro bienAparecidaSanctuary 208.0

  -- Stage 17
  plainStage ampuero bilbao 123.0

  -- Stage 18
  plainStage bilbao amurrio 154.0

  -- Stages 19a & 19b
  enableSplitStages
  plainStage amurrio sanSebastian 84.0
  outAndBackIndividualTimeTrial sanSebastian 0.0
  disableSplitStages

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1979 :: StageRace
vuelta1979 = evalState vuelta1979' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1979 4 24))

vuelta1979' :: State StageRaceState StageRace
vuelta1979' = do
  -- Prologue
  outAndBackPrologue jerezDeLaFrontera 6.3

  -- Stage 1
  plainStage jerezDeLaFrontera seville 156.0

  -- Stage 2
  plainStage seville cordoba 188.0

  -- Stage 3
  mountainStage (Left cordoba) 190
  addCol 190 Mountains.SierraNevada.sierraNevada C1

  -- Stage 4
  plainStage granada puertoLumbreras 222.0

  -- Stage 5
  plainStage puertoLumbreras murcia 139.0

  -- Stage 6
  plainStage murcia alcoy 171.0

  -- Stage 7
  plainStage alcoy sedavi 173.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage sedavi benicassim 145.0
  outAndBackIndividualTimeTrial benicassim 11.3
  disableSplitStages

  -- Stage 9
  plainStage benicassim reus 193.0

  -- Stage 10
  plainStage reus zaragoza 230.0

  -- Stage 11
  plainStage zaragoza pamplona 183.0

  -- Stage 12
  plainStage pamplona logrono 149.0

  -- Stage 13
  plainStage haro penaCabarga 180.0

  -- Stage 14
  plainStage torrelavega gijon 178.0

  -- Stage 15
  plainStage gijon leon 156.0

  -- Stages 16a & 16b
  enableSplitStages
  plainStage leon valladolid 134.0
  outAndBackIndividualTimeTrial valladolid 22.0
  disableSplitStages

  -- Stage 17
  plainStage valladolid avila 204.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage avila colmenarViejo 155.0
  plainStage colmenarViejo azuquecaDeHenares 104.0
  disableSplitStages

  -- Stage 19
  criterium madrid 84.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1980 :: StageRace
vuelta1980 = evalState vuelta1980' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1980 4 22))

vuelta1980' :: State StageRaceState StageRace
vuelta1980' = do
  -- Prologue
  outAndBackPrologue laManga 10.0

  -- Stage 1
  plainStage laManga benidorm 155.0

  -- Stage 2
  plainStage benidorm cuenca 170.0

  -- Stage 3
  plainStage cullera vinaros 207.0

  -- Stage 4
  plainStage vinaros santQuirzeDelValles 214.0

  -- Stage 5
  plainStage santQuirzeDelValles laSeuD'Urgell 200.0

  -- Stage 6
  plainStage laSeuD'Urgell viella 131.0

  -- Stage 7
  plainStage viella jaca 216.0

  -- Stage 8
  plainStage monasteryOfLeyre logrono 160.0

  -- Stage 9
  plainStage logrono burgos 138.0

  -- Stage 10
  plainStage burgos santander 178.0

  -- Stage 11
  plainStage santander gijon 219.0

  -- Stage 12
  plainStage santiagoDeCompostela pontevedra 133.0

  -- Stage 13
  plainStage pontevedra vigo 195.0

  -- Stage 14
  plainStage vigo ourense 156.0

  -- Stage 15
  plainStage ourense ponferrada 164.0

  -- Stages 16a & 16b
  enableSplitStages
  plainStage ponferrada leon 131.0
  outAndBackIndividualTimeTrial leon 22.8
  disableSplitStages

  -- Stage 17
  plainStage leon valladolid 138.0

  -- Stage 18
  plainStage valladolid losAngelesDeSanRafael 197.0

  -- Stage 19
  criterium madrid 84.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1981 :: StageRace
vuelta1981 = evalState vuelta1981' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1981 4 21))

vuelta1981' :: State StageRaceState StageRace
vuelta1981' = do
  -- Prologue
  outAndBackPrologue santander 6.3

  -- Stage 1
  plainStage santander aviles 221.0

  -- Stage 2
  plainStage aviles leon 159.0

  -- Stage 3
  plainStage leon salamanca 195.0

  -- Stage 4
  plainStage salamanca caceres 206.0

  -- Stage 5
  plainStage caceres merida 152.0

  -- Stage 6
  plainStage merida seville 199.0

  -- Stage 7
  plainStage ecija jaen 181.0

  -- Stages 8a & 8b
  enableSplitStages
  plainStage jaen granada 100.0
  mountainTimeTrial (Left granada) 30.5
  addCol 30.5 Mountains.SierraNevada.sierraNevada C1
  disableSplitStages

  -- Stage 9
  plainStage baza murcia 204.0

  -- Stage 10
  plainStage murcia almussafes 223.0

  -- Stage 11
  plainStage almussafes peniscola 193.0

  -- Stage 12
  plainStage peniscola esparreguera 217.0

  -- Stage 13
  plainStage esparreguera rasosDePeguera 187.0

  -- Stage 14
  plainStage gironella balaguer 197.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage balaguer alfajarin 146.0
  outAndBackIndividualTimeTrial zaragoza 11.3
  disableSplitStages

  -- Stage 16
  plainStage calatayud torrejonDeArdoz 209.0

  -- Stage 17
  plainStage torrejonDeArdoz segovia 150.0

  -- Stage 18
  plainStage segovia losAngelesDeSanRafael 175.0

  -- Stage 19
  criterium madrid 84.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1982 :: StageRace
vuelta1982 = evalState vuelta1982' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1982 4 20))

vuelta1982' :: State StageRaceState StageRace
vuelta1982' = do
  -- Prologue
  outAndBackPrologue santiagoDeCompostela 6.7

  -- Stages 1a & 1b
  enableSplitStages
  plainStage santiagoDeCompostela aCoruna 97.0
  plainStage aCoruna lugo 97.0
  disableSplitStages

  -- Stage 2
  plainStage lugo gijon 240.0

  -- Stage 3
  plainStage gijon santander 208.0

  -- Stage 4
  plainStage santander reinosa 196.0

  -- Stage 5
  plainStage reinosa logrono 230.0

  -- Stage 6
  plainStage logrono zaragoza 190.0

  -- Stage 7
  plainStage zaragoza sabinanigo 146.0

  -- Stage 8
  plainStage zaragoza lleida 216.0

  -- Stage 9
  plainStage artesaDeSegre puigcerda 182.0

  -- Stage 10
  plainStage puigcerda santQuirzeDelValles 181.0

  -- Stage 11
  plainStage santQuirzeDelValles barcelona 143.0

  -- Stage 12
  plainStage salou nules 200.0

  -- Stage 13
  plainStage nules antella 195.0

  -- Stage 14
  plainStage antella albacete 153.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage albacete tomelloso 119.0
  individualTimeTrial tomelloso campoDeCriptana 35.0
  disableSplitStages

  -- Stage 16
  plainStage campoDeCriptana sanFernandoDeHenares 176.0

  -- Stage 17
  mountainStage (Left sanFernandoDeHenares) 178
  addCol 178 puertoDeNavacerrada C1

  -- Stage 18
  criterium palazuelosDeEresmaDestileriasDYC 184.0

  -- Stage 19
  criterium madrid 84.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1983 :: StageRace
vuelta1983 = evalState vuelta1983' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1983 4 19))

vuelta1983' :: State StageRaceState StageRace
vuelta1983' = do
  -- Prologue
  outAndBackPrologue almussafes 6.8

  -- Stage 1
  plainStage almussafes cuenca 235.0

  -- Stage 2
  plainStage cuenca teruel 152.0

  -- Stage 3
  plainStage teruel santCarlesDeLaRapita 241.0

  -- Stage 4
  plainStage santCarlesDeLaRapita santQuirzeDelValles 192.0

  -- Stage 5
  plainStage santQuirzeDelValles castellarDeN'Hug 195.0

  -- Stage 6
  plainStage laPoblaDeLillet viella 235.0

  -- Stage 7
  plainStage les sabinanigo 137.0

  -- Stage 8
  individualTimeTrial sabinanigo balnearioDePanticosa 38.0

  -- Stage 9
  plainStage panticosa alfajarin 183.0

  -- Stage 10
  plainStage zaragoza soria 174.0

  -- Stage 11
  plainStage soria logrono 185.0

  -- Stage 12
  plainStage logrono burgos 147.0

  -- Stage 13
  mountainStage (Left aguilarDeCampoo) 188
  addCol 188 lagosDeCovadonga C1

  -- Stage 14
  plainStage cangasDeOnis leon 195.0

  -- Stages 15a & 15b
  enableSplitStages
  plainStage leon valladolid 134.0
  outAndBackIndividualTimeTrial valladolid 22.0
  disableSplitStages

  -- Stage 16
  plainStage valladolid salamanca 162.0

  -- Stage 17
  plainStage salamanca avila 216.0

  -- Stage 18
  plainStage avila palazuelosDeEresmaDestileriasDYC 204.0

  -- Stage 19
  plainStage palazuelosDeEresmaDestileriasDYC madrid 135.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1984 :: StageRace
vuelta1984 = evalState vuelta1984' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1984 4 17))

vuelta1984' :: State StageRaceState StageRace
vuelta1984' = do
  -- Prologue
  outAndBackPrologue jerezDeLaFrontera 6.6

  -- Stage 1
  plainStage jerezDeLaFrontera malaga 272.0

  -- Stage 2
  plainStage malaga almeria 202.0

  -- Stage 3
  plainStage mojacar elche 204.0

  -- Stage 4
  plainStage elche valencia 197.0

  -- Stage 5
  plainStage valencia salou 245.0

  -- Stage 6
  plainStage salou santQuirzeDelValles 113.0

  -- Stage 7
  plainStage santQuirzeDelValles rasosDePeguera 184.0

  -- Stage 8
  plainStage cardona zaragoza 269.0

  -- Stage 9
  plainStage zaragoza soria 159.0

  -- Stage 10
  plainStage soria burgos 148.0

  -- Stage 11
  plainStage burgos santander 182.0

  -- Stage 12
  mountainStage (Left santander) 199
  addCol 199 lagosDeCovadonga C1

  -- Stage 13
  plainStage cangasDeOnis oviedo 170.0

  -- Stage 14
  individualTimeTrial lugones monteNaranco 12.0

  -- Stage 15
  plainStage oviedo leon 121.0

  -- Stage 16
  plainStage leon valladolid 138.0

  -- Stage 17
  plainStage valladolid segovia 258.0

  -- Stages 18a & 18b
  enableSplitStages
  plainStage segovia torrejonDeArdoz 145.0
  outAndBackIndividualTimeTrial torrejonDeArdoz 33.0
  disableSplitStages

  -- Stage 19
  plainStage torrejonDeArdoz madrid 139.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1985 :: StageRace
vuelta1985 = evalState vuelta1985' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1985 4 23))

vuelta1985' :: State StageRaceState StageRace
vuelta1985' = do
  -- Prologue
  outAndBackPrologue valladolid 5.6

  -- Stage 1
  plainStage valladolid zamora 177.0

  -- Stage 2
  plainStage zamora ourense 262.0

  -- Stage 3
  plainStage ourense santiagoDeCompostela 197.0

  -- Stage 4
  plainStage santiagoDeCompostela lugo 162.0

  -- Stage 5
  plainStage lugo oviedo 238.0

  -- Stage 6
  mountainStage (Left oviedo) 145
  addCol 145 lagosDeCovadonga C1

  -- Stage 7
  mountainStage (Left cangasDeOnis) 190
  addCol 190 Mountains.Cantabrian.altoCampoo HC

  -- Stage 8
  plainStage aguilarDeCampoo logrono 224.0

  -- Stage 9
  plainStage logrono balnearioDePanticosa 253.0

  -- Stage 10
  plainStage sabinanigo tremp 209.0

  -- Stage 11
  plainStage tremp andorra 124.0

  -- Stage 12
  individualTimeTrial andorra pal 16.0

  -- Stage 13
  plainStage andorra santQuirzeDelValles 193.0

  -- Stage 14
  plainStage valencia benidorm 201.0

  -- Stage 15
  plainStage benidorm albacete 208.0

  -- Stage 16
  plainStage albacete alcalaDeHenares 252.0

  -- Stage 17
  outAndBackIndividualTimeTrial alcalaDeHenares 43.0

  -- Stage 18
  plainStage alcalaDeHenares palazuelosDeEresmaDestileriasDYC 200.0

  -- Stage 19
  plainStage palazuelosDeEresmaDestileriasDYC salamanca 175.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1986 :: StageRace
vuelta1986 = evalState vuelta1986' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1986 4 22))

vuelta1986' :: State StageRaceState StageRace
vuelta1986' = do
  -- Prologue
  outAndBackPrologue palmaDeMallorca 5.7

  -- Stage 1
  criterium palmaDeMallorca 190.0

  -- Stage 2
  criterium barcelona 182.0

  -- Stage 3
  plainStage lleida zaragoza 212.0

  -- Stage 4
  plainStage zaragoza logrono 192.0

  -- Stage 5
  plainStage haro santander 202.0

  -- Stage 6
  mountainStage (Left santander) 191
  addCol 191 lagosDeCovadonga C1

  -- Stage 7
  plainStage cangasDeOnis oviedo 180.0

  -- Stage 8
  mountainTimeTrial (Left oviedo) 9.7
  addCol 9.7 altoDelNaranco C1

  -- Stage 9
  plainStage oviedo sanIsidro 180.0

  -- Stage 10
  plainStage sanIsidro palencia 193.0

  -- Stage 11
  outAndBackIndividualTimeTrial valladolid 29.1

  -- Stage 12
  plainStage valladolid segovia 258.0

  -- Stage 13
  plainStage segovia villalba 148.0

  -- Stage 14
  plainStage casinoGranMadrid leganes 165.0

  -- Stage 15
  plainStage aranjuez albacete 207.0

  -- Stage 16
  plainStage albacete jaen 264.0

  -- Stage 17
  mountainStage (Left jaen) 172
  addCol 172 Mountains.SierraNevada.sierraNevada C1

  -- Stage 18
  plainStage granada benalmadena 191.0

  -- Stage 19
  plainStage benalmadena puertoReal 234.0

  -- Stage 20
  plainStage puertoReal jerezDeLaFrontera 239.0

  -- Stage 21
  outAndBackIndividualTimeTrial jerezDeLaFrontera 22.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1987 :: StageRace
vuelta1987 = evalState vuelta1987' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1987 4 23))

vuelta1987' :: State StageRaceState StageRace
vuelta1987' = do
  -- Prologue
  outAndBackPrologue benidorm 6.6

  -- Stage 1
  plainStage benidorm albacete 219.0

  -- Stage 2
  plainStage albacete valencia 217.0

  -- Stage 3
  outAndBackIndividualTimeTrial valencia 34.8

  -- Stage 4
  plainStage valencia villareal 169.0

  -- Stage 5
  plainStage salou barcelona 165.0

  -- Stage 6
  mountainStage (Left barcelona) 220
  addCol 220 grauRoig C1

  -- Stage 7
  mountainStage (Left laSeuD'Urgell) 186
  addCol 186 (Mountains.Pyrenees.cerler) C1

  -- Stage 8
  plainStage benasque zaragoza 219.0

  -- Stage 9
  plainStage zaragoza pamplona 180.0

  -- Stage 10
  mountainStage (Left mirandaDeEbro) 213
  addCol 213 Mountains.Cantabrian.altoCampoo HC

  -- Stage 11
  mountainStage (Left santander) 179
  addCol 179 lagosDeCovadonga C1

  -- Stage 12
  plainStage cangasDeOnis oviedo 142.0

  -- Stage 13
  plainStage luarca ferrol 223.0

  -- Stage 14
  plainStage ferrol aCoruna 220.0

  -- Stage 15
  plainStage aCoruna vigo 185.0

  -- Stage 16
  plainStage ponteareas ponferrada 237.0

  -- Stage 17
  plainStage ponferrada valladolid 221.0

  -- Stage 18
  outAndBackIndividualTimeTrial valladolid 24.0

  -- Stage 19
  plainStage elBarcoDeAvila avila 213.0

  -- Stage 20
  plainStage avila palazuelosDeEresmaDestileriasDYC 183.0

  -- Stage 21
  plainStage palazuelosDeEresmaDestileriasDYC colladoVillalba 160.0

  -- Stage 22
  plainStage alcalaDeHenares madrid 173.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1988 :: StageRace
vuelta1988 = evalState vuelta1988' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1988 4 25))

vuelta1988' :: State StageRaceState StageRace
vuelta1988' = do
  -- Stage 1
  outAndBackIndividualTimeTrial santaCruzDeTenerife 17.4

  -- Stage 2
  plainStage sanCristobalDeLaLaguna santaCruzDeTenerife 210.0

  -- Stage 3
  outAndBackTeamTimeTrial lasPalmas 34.0

  -- Stage 4
  plainStage alcalaDelRio badajoz 210.0

  -- Stage 5
  plainStage badajoz bejar 234.0

  -- Stage 6
  plainStage bejar valladolid 202.0

  -- Stage 7
  plainStage valladolid leon 160.0

  -- Stage 8
  plainStage leon branillin 176.7

  -- Stage 9
  individualTimeTrial oviedo monteNaranco 6.8

  -- Stage 10
  plainStage oviedo santander 197.3

  -- Stage 11
  plainStage santander valdezcaray 217.2

  -- Stage 12
  plainStage logrono jaca 197.5

  -- Stage 13
  mountainStage (Left jaca) 178.2
  addCol 178.2 (Mountains.Pyrenees.cerler) C1

  -- Stage 14
  plainStage benasque andorraLaVella 190.3

  -- Stage 15
  plainStage laSeuD'Urgell santQuirzeDelValles 166.0

  -- Stage 16
  plainStage valencia albacete 192.0

  -- Stage 17
  plainStage albacete toledo 244.4

  -- Stage 18
  plainStage toledo avila 212.5

  -- Stage 19
  plainStage avila segovia 150.0

  -- Stage 20
  individualTimeTrial lasRozas villalba 30.0

  -- Stage 21
  plainStage villalba madrid 202.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1989 :: StageRace
vuelta1989 = evalState vuelta1989' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1989 4 24))

vuelta1989' :: State StageRaceState StageRace
vuelta1989' = do
  -- Stage 1
  criterium aCoruna 21.0

  -- Stage 2
  plainStage aCoruna santiagoDeCompostela 222.0

  -- Stages 3a & 3b
  enableSplitStages
  outAndBackTeamTimeTrial vigo 35.0
  plainStage vigo ourense 105.0
  disableSplitStages

  -- Stage 4
  plainStage ourense pontevedra 163.0

  -- Stage 5
  plainStage laBaneza bejar 260.0

  -- Stage 6
  plainStage bejar avila 195.0

  -- Stage 7
  plainStage avila toledo 165.0

  -- Stage 8
  plainStage toledo albacete 226.0

  -- Stage 9
  plainStage albacete gandia 194.0

  -- Stage 10
  plainStage gandia benicassim 219.0

  -- Stage 11
  plainStage vinaros lleida 182.0

  -- Stage 12
  mountainStage (Left lleida) 190
  addCol 190 (Mountains.Pyrenees.cerler) C1

  -- Stage 13
  plainStage benasque jaca 190.0

  -- Stage 14
  plainStage jaca zaragoza 166.0

  -- Stage 15
  individualTimeTrial ezcaray valdezcaray 23.0

  -- Stage 16
  plainStage haro santona 193.0

  -- Stage 17
  plainStage santona lagosDeEnol 225.0

  -- Stage 18
  plainStage cangasDeOnis branillin 152.0

  -- Stage 19
  plainStage leon valladolid 157.0

  -- Stage 20
  individualTimeTrial valladolid medinaDelCampo 42.0

  -- Stage 21
  plainStage colladoVillalba palazuelosDeEresmaDestileriasDYC 187.0

  -- Stage 22
  plainStage palazuelosDeEresmaDestileriasDYC madrid 179.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1990 :: StageRace
vuelta1990 = evalState vuelta1990' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1990 4 24))

vuelta1990' :: State StageRaceState StageRace
vuelta1990' = do
  -- Stage 1
  outAndBackIndividualTimeTrial benicassim 10.3

  -- Stages 2a & 2b
  enableSplitStages
  plainStage oropesa castellon 108.0
  teamTimeTrial benicassim borriana 36.3
  disableSplitStages

  -- Stage 3
  plainStage denia murcia 196.3

  -- Stage 4
  plainStage murcia almeria 226.2

  -- Stage 5
  mountainStage (Left almeria) 198
  addCol 198 Mountains.SierraNevada.sierraNevada C1

  -- Stage 6
  plainStage loja ubrique 195.2

  -- Stage 7
  plainStage jerez seville 190.3

  -- Stage 8
  plainStage seville merida 187.6

  -- Stage 9
  plainStage caceres guijuelo 192.7

  -- Stage 10
  plainStage penarandaDeBracamonte leon 226.8

  -- Stage 11
  plainStage leon sanIsidro 203.0

  -- Stage 12
  plainStage sanIsidro naranco 156.0

  -- Stage 13
  plainStage oviedo santander 193.3

  -- Stage 14
  plainStage santander najera 207.5

  -- Stage 15
  individualTimeTrial ezcaray valdezcaray 24.1

  -- Stage 16
  plainStage logrono pamplona 165.5

  -- Stage 17
  plainStage pamplona jaca 155.3

  -- Stage 18
  mountainStage (Left jaca) 178.5
  addCol 178.5 (Mountains.Pyrenees.cerler) C1

  -- Stage 19
  plainStage benasque zaragoza 223.6

  -- Stage 20
  outAndBackIndividualTimeTrial zaragoza 40.0

  -- Stage 21
  plainStage colladoVillalba palazuelosDeEresma 188.6

  -- Stage 22
  plainStage segovia madrid 177.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1991 :: StageRace
vuelta1991 = evalState vuelta1991' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1991 4 29))

vuelta1991' :: State StageRaceState StageRace
vuelta1991' = do
  -- Stage 1
  threeManTeamTimeTrial merida 8.8

  -- Stages 2a & 2b
  enableSplitStages
  plainStage merida caceres 134.5
  teamTimeTrial montigo badajoz 40.4
  disableSplitStages

  -- Stage 3
  plainStage badajoz seville 233.2

  -- Stage 4
  plainStage seville jaen 292.0

  -- Stage 5
  plainStage linares albacete 227.8

  -- Stage 6
  plainStage albacete valencia 236.5

  -- Stage 7
  criterium palmaDeMallorca 188.0

  -- Stage 8
  outAndBackIndividualTimeTrial calaD'Or 47.0

  -- Stage 9
  plainStage santCugatDelValles lloretDeMar 140.0

  -- Stage 10
  plainStage lloretDeMar andorraLaVella 229.0

  -- Stage 11
  plainStage andorraLaVella plaDeBeret 0.0

  -- Stage 12
  mountainStage (Left bossost) 111
  addCol 111 (Mountains.Pyrenees.cerler) C1

  -- Stage 13
  plainStage benasque zaragoza 219.0

  -- Stage 14
  individualTimeTrial ezcaray valdezcaray 24.1

  -- Stage 15
  plainStage santoDomingoDeLaCalzada santander 219.5

  -- Stage 16
  mountainStage (Left santander) 186.6
  addCol 186.6 lagosDeCovadonga C1

  -- Stage 17
  mountainStage(Left cangasDeOnis) 152
  addCol 152 altoDelNaranco C1

  -- Stage 18
  plainStage leon valladolid 137.5

  -- Stage 19
  outAndBackIndividualTimeTrial valladolid 53.2

  -- Stage 20
  criterium palazuelosDeEresmaDestileriasDYC 212.7

  -- Stage 21
  plainStage colladoVillalba madrid 169.6

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1992 :: StageRace
vuelta1992 = evalState vuelta1992' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1992 4 27))

vuelta1992' :: State StageRaceState StageRace
vuelta1992' = do
  -- Stage 1
  outAndBackIndividualTimeTrial jerezDeLaFrontera 9.2

  -- Stages 2a & 2b
  enableSplitStages
  plainStage sanFernando jerezDeLaFrontera 135.5
  teamTimeTrial arcosDeLaFrontera jerezDeLaFrontera 32.6
  disableSplitStages

  -- Stage 3
  plainStage jerezDeLaFrontera cordoba 205.0

  -- Stage 4
  plainStage linares albacete 229.0

  -- Stage 5
  plainStage albacete gandia 213.5

  -- Stage 6
  plainStage gandia benicassim 202.8

  -- Stage 7
  individualTimeTrial alqueriasDelNinoPerdido oropesa 49.5

  -- Stage 8
  plainStage lleida plaDeBeret 240.5

  -- Stage 9
  mountainStage (Left vielha) 144
  addCol 144 Mountains.Pyrenees.luzArdiden C1

  -- Stage 10
  plainStage luzSaintSauveur sabinanigo 196.0

  -- Stage 11
  plainStage sabinanigo pamplona 162.9

  -- Stage 12
  plainStage pamplona burgos 200.1

  -- Stage 13
  plainStage burgos santander 178.3

  -- Stage 14
  mountainStage (Left santander) 213.4
  addCol 213.4 lagosDeCovadonga C1

  -- Stage 15
  mountainStage (Left cangasDeOnis) 163
  addCol 163 altoDelNaranco C1

  -- Stage 16
  plainStage oviedo leon 162.0

  -- Stage 17
  plainStage leon salamanca 200.6

  -- Stage 18
  plainStage salamanca avila 218.9

  -- Stage 19
  outAndBackIndividualTimeTrial fuenlabrada 37.9

  -- Stage 20
  plainStage colladoVillalba palazuelosDeEresmaDestileriasDYC 188.3

  -- Stage 21
  plainStage palazuelosDeEresmaDestileriasDYC madrid 175.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1993 :: StageRace
vuelta1993 = evalState vuelta1993' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1993 4 26))

vuelta1993' :: State StageRaceState StageRace
vuelta1993' = do
  -- Stage 1
  outAndBackIndividualTimeTrial aCoruna 10.0

  -- Stage 2
  plainStage aCoruna vigo 251.1

  -- Stage 3
  plainStage vigo ourense 171.4

  -- Stage 4
  plainStage aGudina salamanca 233.4

  -- Stage 5
  plainStage salamanca avila 219.8

  -- Stage 6
  mountainTimeTrial (Left palazuelosDeEresmaDestileriasDYC) 24.1
  addCol 24.1 puertoDeNavacerrada C1

  -- Stage 7
  plainStage palazuelosDeEresmaDestileriasDYC madrid 184.0

  -- Stage 8
  plainStage aranjuez albacete 225.1

  -- Stage 9
  plainStage albacete valencia 224.0

  -- Stage 10
  plainStage valencia laSenia 206.0

  -- Stage 11
  mountainStage (Left lleida) 221
  addCol 221 (Mountains.Pyrenees.cerler) C1

  -- Stage 12
  plainStage benasque zaragoza 220.7

  -- Stage 13
  outAndBackIndividualTimeTrial zaragoza 37.1

  -- Stage 14
  let altoDeLaCruzDeLaDemanda' = ParcoursDB.Col.vicinity altoDeLaCruzDeLaDemanda "Ezcaray"
  mountainStage (Left tudela) 197.2
  addCol 197.2 altoDeLaCruzDeLaDemanda' C1

  -- Stage 15
  plainStage santoDomingoDeLaCalzada santander 226.2

  -- Stage 16
  mountainStage (Left santander) 160
  addCol 160 Mountains.Cantabrian.altoCampoo HC

  -- Stage 17
  mountainStage (Left santander) 179.5
  addCol 179.5 lagosDeCovadonga C1

  -- Stage 18
  plainStage cangasDeOnis gijon 170.0

  -- Stage 19
  mountainStage (Left gijon) 153
  addCol 153 altoDelNaranco C1

  -- Stage 20
  plainStage salas ferol 247.0

  -- Stage 21
  individualTimeTrial padron santiagoDeCompostela 44.6

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1994 :: StageRace
vuelta1994 = evalState vuelta1994' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1994 4 25))

vuelta1994' :: State StageRaceState StageRace
vuelta1994' = do
  -- Stage 1
  outAndBackIndividualTimeTrial valladolid 9.0

  -- Stage 2
  plainStage valladolid salamanca 178.4

  -- Stage 3
  plainStage salamanca caceres 239.0

  -- Stage 4
  plainStage almendralejo cordoba 235.6

  -- Stage 5
  plainStage cordoba granada 166.9

  -- Stage 6
  mountainStage (Left granada) 151.7
  addCol 151.7 Mountains.SierraNevada.sierraNevada C1

  -- Stage 7
  plainStage baza alicante 256.5

  -- Stage 8
  outAndBackIndividualTimeTrial benidorm 39.5

  -- Stage 9
  plainStage benidorm valencia 166.0

  -- Stage 10
  mountainStage (Left igualada) 205
  addCol 205 arcalis C1

  -- Stage 11
  mountainStage (Left andorraLaVella) 195.3
  addCol 195.3 (Mountains.Pyrenees.cerler) C1

  -- Stage 12
  plainStage benasque zaragoza 226.7

  -- Stage 13
  plainStage zaragoza pamplona 201.6

  -- Stage 14
  plainStage pamplona sierraDeLaDemanda 174.0

  -- Stage 15
  plainStage santoDomingoDeLaCalzada santander 209.3

  -- Stage 16
  mountainStage (Left santander) 147.7
  addCol 147.7 lagosDeCovadonga C1

  -- Stage 17
  plainStage cangasDeOnis monteNaranco 150.4

  -- Stage 18
  criterium avila 189.0

  -- Stage 19
  plainStage avila palazuelosDeEresma 171.0

  -- Stage 20
  individualTimeTrial segovia palazuelosDeEresma 53.0

  -- Stage 21
  plainStage palazuelosDeEresma madrid 165.7

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1995 :: StageRace
vuelta1995 = evalState vuelta1995' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1995 9 2))

vuelta1995' :: State StageRaceState StageRace
vuelta1995' = do
  -- Prologue
  outAndBackPrologue zaragoza 7.0

  -- Stage 1
  plainStage zaragoza logrono 186.6

  -- Stage 2
  plainStage sanAsensio santander 223.5

  -- Stage 3
  mountainStage (Left santander) 206
  addCol 206 altoDelNaranco C1

  -- Stage 4
  plainStage tapiaDeCasariego aCoruna 82.6

  -- Stage 5
  plainStage aCoruna ourense 179.8

  -- Stage 6
  plainStage ourense zamora 264.0

  -- Stage 7
  outAndBackIndividualTimeTrial salamanca 41.0

  -- Stage 8
  plainStage salamanca avila 219.8

  -- Stage 9
  plainStage avila palazuelosDeEresma 122.5

  -- Stage 10
  plainStage cordoba seville 208.5

  -- Stage 11
  plainStage seville marbella 162.5

  -- Stage 12
  mountainStage (Left marbella) 238.5
  addCol 238.5 Mountains.SierraNevada.sierraNevada C1

  -- Stage 13
  plainStage olulaDelRio murcia 181.0

  -- Stage 14
  plainStage elche valencia 207.0

  -- Stage 15
  plainStage barcelona estadiOlimpicLluisCompanys 154.0

  transferDay

  -- Stage 16
  plainStage tarrega plaDeBeret 197.3

  -- Stage 17
  let salardu' = ParcoursDB.Location.vicinity salardu "Naut Aran"
  mountainStage (Left salardu') 179.2
  addCol 179.2 Mountains.Pyrenees.luzArdiden C1

  -- Stage 18
  plainStage luzSaintSauveur sabinanigo 157.8

  -- Stage 19
  plainStage sabinanigo calatayud 227.7

  -- Stage 20
  outAndBackIndividualTimeTrial alcalaDeHenares 41.6

  -- Stage 21
  plainStage alcalaDeHenares madrid 147.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1996 :: StageRace
vuelta1996 = evalState vuelta1996' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1996 9 7))

vuelta1996' :: State StageRaceState StageRace
vuelta1996' = do
  -- Stage 1
  criterium valencia 162.0

  -- Stage 2
  plainStage valencia cuenca 210.0

  -- Stage 3
  plainStage cuenca albacete 167.2

  -- Stage 4
  plainStage albacete murcia 166.5

  -- Stage 5
  plainStage murcia almeria 208.4

  -- Stage 6
  plainStage almeria malaga 196.5

  -- Stage 7
  plainStage malaga marbella 171.1

  -- Stage 8
  plainStage marbella jerezDeLaFrontera 220.7

  -- Stage 9
  plainStage jerezDeLaFrontera cordoba 203.5

  transferDay

  -- Stage 10
  individualTimeTrial elTiemblo avila 46.5

  -- Stage 11
  plainStage avila salamanca 188.0

  -- Stage 12
  mountainStage (Left benavente) 188
  addCol 188 altoDelNaranco C1

  -- Stage 13
  mountainStage (Left oviedo) 159
  addCol 159 lagosDeCovadonga C1

  -- Stage 14
  plainStage cangasDeOnis cabarcenoNaturalPark 202.6

  -- Stage 15
  let altoDeLaCruzDeLaDemanda' = ParcoursDB.Col.vicinity altoDeLaCruzDeLaDemanda "Ezcaray"
  mountainStage (Left cabarceno) 220
  addCol 220 altoDeLaCruzDeLaDemanda' C1

  -- Stage 16
  plainStage logrono sabinanigo 220.9

  -- Stage 17
  mountainStage (Left sabinanigo) 165.7
  addCol 165.7 (Mountains.Pyrenees.cerler) C1

  -- Stage 18
  plainStage benasque zaragoza 219.5

  -- Stage 19
  plainStage getafe avila 217.1

  -- Stage 20
  plainStage avila palazuelosDeEresmaDestileriasDYC 209.5

  -- Stage 21
  individualTimeTrial segovia palazuelosDeEresmaDestileriasDYC 43.0

  -- Stage 22
  criterium madrid 157.6

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1997 :: StageRace
vuelta1997 = evalState vuelta1997' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1997 9 6))

vuelta1997' :: State StageRaceState StageRace
vuelta1997' = do
  -- Stage 1
  plainStage lisbon estoril 155.0

  -- Stage 2
  plainStage evora vilamoura 225.0

  -- Stage 3
  plainStage loule huelva 173.0

  -- Stage 4
  plainStage huelva jerezDeLaFrontera 192.0

  -- Stage 5
  plainStage jerezDeLaFrontera malaga 230.0

  -- Stage 6
  plainStage malaga granada 147.0

  -- Stage 7
  mountainStage (Left guadix) 219
  addCol 219 Mountains.SierraNevada.sierraNevada C1

  -- Stage 8
  plainStage granada cordoba 176.0

  -- Stage 9
  outAndBackIndividualTimeTrial cordoba 35.0

  -- Stage 10
  plainStage cordoba almendralejo 224.0

  -- Stage 11
  plainStage almendralejo plasencia 194.0

  -- Stage 12
  mountainStage (Left leon) 147
  addCol 147 altoDeMorredero C1

  -- Stage 13
  plainStage ponferrada estacionValgrandePajares 196.0

  -- Stage 14
  mountainStage (Left oviedo) 169
  addCol 169 altoDelNaranco C1

  -- Stage 15
  mountainStage (Left oviedo) 160
  addCol 160 lagosDeCovadonga C1

  -- Stage 16
  plainStage cangasDeOnis santander 170.0

  -- Stage 17
  plainStage santander burgos 183.0

  -- Stage 18
  plainStage burgos valladolid 184.0

  -- Stage 19
  plainStage valladolid losAngelesDeSanRafael 193.0

  -- Stage 20
  plainStage losAngelesDeSanRafael avila 199.0

  -- Stage 21
  outAndBackIndividualTimeTrial alcobendas 43.0

  -- Stage 22
  criterium madrid 154.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1998 :: StageRace
vuelta1998 = evalState vuelta1998' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1998 9 5))

vuelta1998' :: State StageRaceState StageRace
vuelta1998' = do
  -- Stage 1
  criterium cordoba 161.7

  -- Stage 2
  plainStage cordoba cadiz 234.6

  -- Stage 3
  plainStage cadiz estepona 192.6

  -- Stage 4
  plainStage malaga granada 173.5

  -- Stage 5
  plainStage olulaDelRio murcia 165.5

  -- Stage 6
  plainStage murcia xorretDeCati 201.5

  -- Stage 7
  plainStage alicante valencia 185.0

  -- Stage 8
  criterium palmaDeMallorca 181.5

  -- Stage 9
  outAndBackIndividualTimeTrial alcudia 39.5

  transferDay

  -- Stage 10
  plainStage vic estacioDePal 199.3

  -- Stage 11
  mountainStage (Left andorraLaVella) 186
  addCol 186 (Mountains.Pyrenees.cerler) C1

  -- Stage 12
  let jaca' = ParcoursDB.Location.vicinity jaca "Canfranc International Station"
  plainStage benasque jaca' 187.0

  -- Stage 13
  criterium sabinanigo 208.5

  -- Stage 14
  plainStage biescas zaragoza 145.5

  -- Stage 15
  plainStage zaragoza soria 178.7

  -- Stage 16
  plainStage soria lagunaNegraDeNeila 143.7

  -- Stage 17
  plainStage burgos leon 188.5

  -- Stage 18
  plainStage leon salamanca 223.0

  -- Stage 19
  plainStage avila segovia 170.4

  -- Stage 20
  mountainStage (Left segovia) 206
  addCol 206 puertoDeNavacerrada C1

  -- Stage 21
  outAndBackIndividualTimeTrial fuenlabrada 39.0

  -- Stage 22
  criterium madrid 163.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta1999 :: StageRace
vuelta1999 = evalState vuelta1999' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 1999 9 4))

vuelta1999' :: State StageRaceState StageRace
vuelta1999' = do
  -- Prologue
  outAndBackPrologue murcia 6.1

  -- Stage 1
  plainStage murcia benidorm 179.0

  -- Stage 2
  plainStage alicante albacete 206.0

  -- Stage 3
  plainStage laRoda fuenlabrada 229.5

  -- Stage 4
  plainStage laRozas salamanca 185.6

  -- Stage 5
  plainStage bejar ciudadRodrigo 160.0

  -- Stage 6
  outAndBackIndividualTimeTrial salamanca 46.4

  -- Stage 7
  plainStage salamanca leon 217.0

  -- Stage 8
  mountainStage (Left leon) 175.6
  addCol 175.6 altoDeL'Angliru HC

  -- Stage 9
  plainStage gijon losCorralesDeBuelna 185.8

  transferDay

  -- Stage 10
  criterium zaragoza 183.2

  -- Stage 11
  mountainStage (Left huesca) 201
  addCol 201 valD'AranPlaDeBeret C1

  -- Stage 12
  mountainStage (Left sort) 147.4
  addCol 147.4 arcalis C1

  -- Stage 13
  let castellarDelRiu' = ParcoursDB.Location.vicinity castellarDelRiu "Rasos de Peguera"
  plainStage andorraLaVella castellarDelRiu' 149.0

  -- Stage 14
  criterium barcelona 94.4

  -- Stage 15
  plainStage laSenia valencia 193.4

  -- Stage 16
  plainStage valencia teruel 200.4

  -- Stage 17
  plainStage bronchales guadalajara 225.0

  -- Stage 18
  mountainStage (Left guadalajara) 166.3
  addCol 166.3 altoDeAbantos C1

  -- Stage 19
  plainStage sanLorenzoDeElEscorial avila 184.6

  -- Stage 20
  individualTimeTrial elTiemblo avila 46.5

  -- Stage 21
  criterium madrid 163.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2000 :: StageRace
vuelta2000 = evalState vuelta2000' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2000 8 26))

vuelta2000' :: State StageRaceState StageRace
vuelta2000' = do
  -- Stage 1
  outAndBackIndividualTimeTrial malaga 13.3

  -- Stage 2
  plainStage malaga cordoba 167.5

  -- Stage 3
  plainStage montoro valdepenas 198.4

  -- Stage 4
  plainStage valdepenas albacete 159.0

  -- Stage 5
  plainStage albacete xorretDeCati 152.3

  -- Stage 6
  plainStage benidorm valencia 155.5

  -- Stage 7
  plainStage valencia morella 175.0

  -- Stage 8
  plainStage vinaros portAventura 168.5

  -- Stage 9
  outAndBackIndividualTimeTrial tarragona 37.6

  -- Stage 10
  plainStage sabadell supermolina 165.8

  -- Stage 11
  mountainStage (Left alp) 136.5
  addCol 136.5 arcalis C1

  transferDay

  -- Stage 12
  criterium zaragoza 131.5

  transferDay

  -- Stage 13
  criterium santander 143.3

  -- Stage 14
  mountainStage (Left santander) 146.5
  addCol 146.5 lagosDeCovadonga C1

  -- Stage 15
  plainStage cangasDeOnis gijon 164.2

  -- Stage 16
  mountainStage (Left oviedo) 168
  addCol 168 altoDeL'Angliru HC

  -- Stage 17
  plainStage benavente salamanca 155.5

  -- Stage 18
  plainStage bejar ciudadRodrigo 159.0

  -- Stage 19
  plainStage salamanca avila 130.0

  -- Stage 20
  mountainStage (Left avila) 128.2
  addCol 128.2 altoDeAbantos C1

  -- Stage 21
  outAndBackIndividualTimeTrial madrid 38.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2001 :: StageRace
vuelta2001 = evalState vuelta2001' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2001 9 8))

vuelta2001' :: State StageRaceState StageRace
vuelta2001' = do
  -- Stage 1
  outAndBackIndividualTimeTrial salamanca 12.0

  -- Stage 2
  plainStage salamanca valladolid 147.2

  -- Stage 3
  plainStage valladolid leon 140.5

  -- Stage 4
  plainStage leon gijon 175.0

  -- Stage 5
  mountainStage (Left gijon) 160.8
  addCol 160.8 lagosDeCovadonga C1

  -- Stage 6
  plainStage cangasDeOnis torrelavega 180.6

  -- Stage 7
  outAndBackIndividualTimeTrial torrelavega 44.2

  -- Stage 8
  let altoDeLaCruzDeLaDemanda' = ParcoursDB.Col.vicinity altoDeLaCruzDeLaDemanda "Valdezcaray"
  mountainStage (Left reinosa) 195
  addCol 195 altoDeLaCruzDeLaDemanda' C1

  -- Stage 9
  plainStage logrono barcelona 179.2

  transferDay

  -- Stage 10
  plainStage sabadell laMolina 168.4

  -- Stage 11
  plainStage alp estacioDePal 154.2

  -- Stage 12
  individualTimeTrial ordino estacioD'EsquiD'OrdinoArcalis 17.1

  -- Stage 13
  plainStage andorra universalStudiosPortAventura 206.0

  -- Stage 14
  plainStage tarragona vinaros 170.5

  -- Stage 15
  mountainStage (Left valencia) 207.2
  addCol 207.2 altoDeAitana HC

  transferDay

  -- Stage 16
  plainStage alcoy murcia 153.3

  -- Stage 17
  plainStage murcia albacete 159.5

  -- Stage 18
  plainStage albacete cuenca 154.2

  -- Stage 19
  plainStage cuenca guadalajara 168.0

  -- Stage 20
  mountainStage (Left guadalajara) 176.3
  addCol 176.3 altoDeAbantos C1

  -- Stage 21
  outAndBackIndividualTimeTrial madrid 38.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2002 :: StageRace
vuelta2002 = evalState vuelta2002' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2002 9 7))

vuelta2002' :: State StageRaceState StageRace
vuelta2002' = do
  -- Stage 1
  outAndBackTeamTimeTrial valencia 24.6

  -- Stage 2
  plainStage valencia alcoy 144.7

  -- Stage 3
  plainStage sanVicenteDelRaspeig murcia 134.2

  -- Stage 4
  plainStage aguilas roquetasDeMar 149.5

  -- Stage 5
  mountainStage (Left elEjido) 198
  addCol 198 Mountains.SierraNevada.sierraNevada C1

  -- Stage 6
  mountainStage (Left granada) 153.1
  addCol 153.1 sierraDeLaPandera C1

  -- Stage 7
  plainStage jaen malaga 196.8

  -- Stage 8
  plainStage malaga ubrique 173.6

  -- Stage 9
  criterium cordoba 130.2

  -- Stage 10
  outAndBackIndividualTimeTrial cordoba 36.5

  transferDay

  -- Stage 11
  plainStage alcobendas colladoVillalba 166.1

  -- Stage 12
  plainStage segovia burgos 210.5

  -- Stage 13
  plainStage burgos santander 189.8

  -- Stage 14
  plainStage santander gijon 190.2

  -- Stage 15
  mountainStage (Left gijon) 176.7
  addCol 176.7 altoDeL'Angliru HC

  transferDay

  -- Stage 16
  plainStage aviles leon 154.7

  -- Stage 17
  plainStage benavente salamanca 146.6

  -- Stage 18
  mountainStage (Left salamanca) 193.7
  addCol 193.7 Mountains.SistemaCentral.laCovatilla C1

  -- Stage 19
  plainStage bejar avila 177.8

  -- Stage 20
  plainStage avila parqueWarnerMadrid 141.2

  -- Stage 21
  let santiagoBernabeuStadium' = ParcoursDB.Location.vicinity santiagoBernabeuStadium "Madrid"
  individualTimeTrial parqueWarnerMadrid santiagoBernabeuStadium' 41.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2003 :: StageRace
vuelta2003 = evalState vuelta2003' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2003 9 6))

vuelta2003' :: State StageRaceState StageRace
vuelta2003' = do
  -- Stage 1
  outAndBackTeamTimeTrial gijon 28.0

  -- Stage 2
  plainStage gijon cangasDeOnis 148.0

  -- Stage 3
  plainStage cangasDeOnis santander 154.3

  -- Stage 4
  plainStage santander burgos 151.0

  -- Stage 5
  plainStage soria zaragoza 166.7

  -- Stage 6
  outAndBackIndividualTimeTrial zaragoza 43.8

  -- Stage 7
  mountainStage (Left huesca) 190
  addCol 190 Mountains.Pyrenees.cauterets C1

  -- Stage 8
  plainStage Countries.France.cauterets plaDeBeretValD'Aran 166.0

  -- Stage 9
  plainStage vielha envalira 174.8

  -- Stage 10
  plainStage andorraLaVella sabadell 194.0

  transferDay

  -- Stage 11
  plainStage utiel cuenca 162.0

  -- Stage 12
  plainStage cuenca albacete 168.8

  -- Stage 13
  outAndBackIndividualTimeTrial albacete 53.3

  -- Stage 14
  plainStage albacete valdepenas 167.4

  -- Stage 15
  plainStage valdepenas laPandera 172.1

  transferDay

  -- Stage 16
  mountainStage (Left jaen) 162
  addCol 162 Mountains.SierraNevada.sierraNevada C1

  -- Stage 17
  plainStage granada cordoba 188.4

  -- Stage 18
  criterium lasRozas 143.8

  -- Stage 19
  plainStage alcobendas colladoVillalba 164.0

  -- Stage 20
  mountainTimeTrial (Left sanLorenzoDeElEscorial) 11.2
  addCol 11.2 altoDeAbantos C1

  -- Stage 21
  criterium madrid 148.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2004 :: StageRace
vuelta2004 = evalState vuelta2004' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2004 9 4))

vuelta2004' :: State StageRaceState StageRace
vuelta2004' = do
  -- Stage 1
  outAndBackTeamTimeTrial leon 28.0

  -- Stage 2
  plainStage leon burgos 207.0

  -- Stage 3
  plainStage burgos soria 156.0

  -- Stage 4
  plainStage soria zaragoza 167.0

  -- Stage 5
  plainStage zaragoza morella 186.5

  -- Stage 6
  plainStage benicarlo castellonDeLaPlana 157.0

  -- Stage 7
  plainStage castellonDeLaPlana valencia 170.0

  -- Stage 8
  outAndBackIndividualTimeTrial almussafes 40.1

  -- Stage 9
  mountainStage (Left xativa) 162
  addCol 162 altoDeAitana HC

  -- Stage 10
  plainStage alcoy xorretDeCati 174.2

  -- Stage 11
  plainStage sanVicenteDelRaspeig caravacaDeLaCruz 165.0

  transferDay

  -- Stage 12
  mountainStage (Left almeria) 145
  addCol 145 Mountains.SierraDeLosFilabres.calarAltoObservatory C1

  -- Stage 13
  plainStage elEjido malaga 172.0

  -- Stage 14
  plainStage malaga granada 167.0

  -- Stage 15
  mountainTimeTrial (Left granada) 29.6
  addCol 29.6 Mountains.SierraNevada.sierraNevada C1

  transferDay

  -- Stage 16
  plainStage olivenza caceres 190.1

  -- Stage 17
  mountainStage (Left plasencia) 170
  addCol 170 Mountains.SistemaCentral.laCovatilla C1

  -- Stage 18
  plainStage bejar avila 196.0

  -- Stage 19
  plainStage avila colladoVillalba 142.0

  -- Stage 20
  mountainStage (Left alcobendas) 178
  addCol 178 puertoDeNavacerrada C1

  -- Stage 21
  outAndBackIndividualTimeTrial madrid 28.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2005 :: StageRace
vuelta2005 = evalState vuelta2005' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2005 8 27))

vuelta2005' :: State StageRaceState StageRace
vuelta2005' = do
  -- Stage 1
  outAndBackIndividualTimeTrial granada 7.0

  -- Stage 2
  plainStage granada cordoba 189.3

  -- Stage 3
  plainStage cordoba puertollano 153.3

  -- Stage 4
  plainStage ciudadReal argamasillaDeAlba 232.3

  -- Stage 5
  plainStage alcazarDeSanJuan cuenca 176.0

  -- Stage 6
  plainStage cuenca valdelinares 217.0

  -- Stage 7
  plainStage teruel vinaros 212.5

  -- Stage 8
  plainStage tarragona lloretDeMar 189.0

  -- Stage 9
  outAndBackIndividualTimeTrial lloretDeMar 48.0

  -- Stage 10
  plainStage laVallD'EnBas estacioD'EsquiD'OrdinoArcalis 206.3

  -- Stage 11
  mountainStage (Left andorraLaVella) 186.6
  addCol 186.6 (Mountains.Pyrenees.cerler) C1

  transferDay

  -- Stage 12
  plainStage logrono burgos 133.0

  -- Stage 13
  let santuarioDeLaBienAparecida' = ParcoursDB.Location.vicinity santuarioDeLaBienAparecida "Ampuero"
  plainStage burgos santuarioDeLaBienAparecida' 196.0

  -- Stage 14
  mountainStage (Left laPenilla) 172.3
  addCol 172.3 lagosDeCovadonga C1

  -- Stage 15
  plainStage cangasDeOnis valgrandePajares 191.0

  transferDay

  -- Stage 16
  plainStage leon valladolid 162.5

  -- Stage 17
  plainStage elEspinar laGranjaDeSanIldefonso 165.6

  -- Stage 18
  criterium avila 197.5

  -- Stage 19
  plainStage sanMartinDeValdeiglesias alcobendas 142.9

  -- Stage 20
  individualTimeTrial guadalajara alcalaDeHenares 38.9

  -- Stage 21
  criterium madrid 136.5

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2006 :: StageRace
vuelta2006 = evalState vuelta2006' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2006 8 26))

vuelta2006' :: State StageRaceState StageRace
vuelta2006' = do
  -- Stage 1
  outAndBackTeamTimeTrial malaga 7.2

  -- Stage 2
  plainStage malaga cordoba 167.0

  -- Stage 3
  plainStage cordoba almendralejo 220.0

  -- Stage 4
  plainStage almendralejo caceres 142.0

  -- Stage 5
  let laCovatilla' = ParcoursDB.Location.vicinity Countries.Spain.laCovatilla "Estacion de Esqui"
  mountainStage (Left plasencia) 178
  addCol 178 (colFromLocation laCovatilla') C1

  -- Stage 6
  plainStage zamora leon 155.0

  -- Stage 7
  let altoDeMorredero' = ParcoursDB.Col.vicinity altoDeMorredero "Ponferrada"
  mountainStage (Left leon) 148
  addCol 148 altoDeMorredero' C1

  -- Stage 8
  plainStage ponferrada lugo 173.0

  -- Stage 9
  mountainStage (Left aFonsagrada) 206
  addCol 206 altoDeLaCobertoria HC

  transferDay

  -- Stage 10
  let santillanaDelMar' = ParcoursDB.Location.vicinity santillanaDelMar "Museo de Altamira"
  plainStage aviles santillanaDelMar' 190.0

  -- Stage 11
  plainStage torrelavega burgos 165.0

  -- Stage 12
  plainStage arandaDeDuero guadalajara 162.0

  -- Stage 13
  plainStage guadalajara cuenca 170.0

  -- Stage 14
  outAndBackIndividualTimeTrial cuenca 33.0

  -- Stage 15
  plainStage motillaDelPalancar factoriaFordAlmussafes 175.0

  transferDay

  -- Stage 16
  plainStage almeria observatorioAstronomicoDeCalarAlto 145.0

  -- Stage 17
  plainStage adra granada 167.0

  -- Stage 18
  mountainStage (Left granada) 153
  addCol 153 sierraDeLaPandera C1

  -- Stage 19
  plainStage jaen ciudadReal 195.0

  -- Stage 20
  individualTimeTrial rivasFutura rivasVaciamadrid 28.0

  -- Stage 21
  criterium madrid 150.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2007 :: StageRace
vuelta2007 = evalState vuelta2007' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2007 9 1))

vuelta2007' :: State StageRaceState StageRace
vuelta2007' = do
  -- Stage 1
  criterium vigo 146.4

  -- Stage 2
  plainStage allariz santiagoDeCompostela 148.7

  -- Stage 3
  plainStage viveiro luarca 153.0

  -- Stage 4
  mountainStage (Left langreo) 185.1
  addCol 185.1 lagosDeCovadonga C1

  -- Stage 5
  plainStage cangasDeOnis reinosa 157.4

  -- Stage 6
  plainStage reinosa logrono 184.3

  -- Stage 7
  plainStage calahora zaragoza 176.3

  -- Stage 8
  individualTimeTrial carinena zaragoza 52.2

  -- Stage 9
  mountainStage (Left huesca) 167.6
  addCol 167.6 (Mountains.Pyrenees.cerler) C1

  -- Stage 10
  mountainStage (Left benasque) 214
  addCol 214 arcalis C1

  transferDay

  -- Stage 11
  plainStage oropesaDelMar algemesi 191.3

  -- Stage 12
  plainStage algemesi hellin 176.0

  -- Stage 13
  plainStage hellin torrePacheco 176.4

  -- Stage 14
  plainStage puertoLumbreras villacarrilo 207.0

  -- Stage 15
  plainStage villacarrilo granada 201.4

  transferDay

  -- Stage 16
  plainStage jaen puertollano 161.5

  -- Stage 17
  plainStage ciudadReal talaveraDeLaReina 175.0

  -- Stage 18
  plainStage talaveraDeLaReina avila 153.5

  -- Stage 19
  mountainStage (Left avila) 133
  addCol 133 altoDeAbantos C1

  -- Stage 20
  outAndBackIndividualTimeTrial colladoVillalba 20.0

  -- Stage 21
  plainStage rivasVaciamadrid madrid 104.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2008 :: StageRace
vuelta2008 = evalState vuelta2008' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2008 8 30))

vuelta2008' :: State StageRaceState StageRace
vuelta2008' = do
  -- Stage 1
  outAndBackIndividualTimeTrial granada 7.7

  -- Stage 2
  plainStage granada jaen 167.3

  -- Stage 3
  plainStage jaen cordoba 168.6

  -- Stage 4
  plainStage cordoba puertollano 170.3

  -- Stage 5
  outAndBackIndividualTimeTrial ciudadReal 42.5

  -- Stage 6
  plainStage ciudadReal toledo 150.1

  transferDay

  -- Stage 7
  plainStage barbastro naturlandia 223.2

  -- Stage 8
  plainStage escaldesEngordany plaDeBeret 151.0

  -- Stage 9
  plainStage vielhaEMijaran sabinanigo 200.8

  -- Stage 10
  plainStage sabinanigo zaragoza 151.3

  -- Stage 11
  plainStage calahorra burgos 178.0

  -- Stage 12
  plainStage burgos suances 186.4

  transferDay

  -- Stage 13
  mountainStage (Left sanVicenteDeLaBarquera) 209.5
  addCol 209.5 altoDeL'Angliru HC

  -- Stage 14
  plainStage oviedo fuentesDeInvierno 158.4

  -- Stage 15
  plainStage cudillero ponferrada 202.0

  -- Stage 16
  plainStage ponferrada zamora 186.3

  -- Stage 17
  plainStage zamora valladolid 148.2

  -- Stage 18
  plainStage valladolid lasRozas 167.4

  -- Stage 19
  plainStage lasRozas segovia 145.5

  -- Stage 20
  mountainTimeTrial (Left laGranjaDeSanIldefonso) 17.1
  addCol 17.1 puertoDeNavacerrada C1

  -- Stage 21
  plainStage sanSebastianDeLosReyes madrid 102.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2009 :: StageRace
vuelta2009 = evalState vuelta2009' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2009 8 29))

vuelta2009' :: State StageRaceState StageRace
vuelta2009' = do
  -- Stage 1
  outAndBackIndividualTimeTrial assen 4.8

  -- Stage 2
  plainStage assen emmen 203.7

  -- Stage 3
  plainStage zutphen venlo 189.7

  -- Stage 4
  plainStage venlo liege 225.5

  transferDay

  -- Stage 5
  plainStage tarragona vinaros 174.0

  -- Stage 6
  criterium xativa 176.8

  -- Stage 7
  outAndBackIndividualTimeTrial valencia 30.0

  -- Stage 8
  mountainStage (Left alzira) 204.7
  addCol 204.7 altoDeAitana HC

  -- Stage 9
  plainStage alcoy xorretDeCati 188.8

  -- Stage 10
  plainStage alicante murcia 171.2

  -- Stage 11
  plainStage murcia caravacaDeLaCruz 200.0

  transferDay

  -- Stage 12
  mountainStage (Left almeria) 179.3
  addCol 179.3 altoDeVelefique HC

  -- Stage 13
  mountainStage (Left berja) 172.4
  addCol 172.4 Mountains.SierraNevada.sierraNevada C1

  -- Stage 14
  mountainStage (Left granada) 157
  addCol 157 sierraDeLaPandera C1

  -- Stage 15
  plainStage jaen cordoba 167.7

  -- Stage 16
  plainStage cordoba puertollano 170.3

  -- Stage 17
  plainStage ciudadReal talaveraDeLaReina 193.6

  -- Stage 18
  plainStage talaveraDeLaReina avila 165.0

  -- Stage 19
  plainStage avila laGranjaDeSanIldefonso 179.8

  -- Stage 20
  outAndBackIndividualTimeTrial toledo 27.8

  -- Stage 21
  plainStage rivasVaciamadrid madrid 110.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2010 :: StageRace
vuelta2010 = evalState vuelta2010' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2010 8 28))

vuelta2010' :: State StageRaceState StageRace
vuelta2010' = do
  -- Stage 1
  outAndBackTeamTimeTrial seville 13.0

  -- Stage 2
  plainStage alcalaDeGuadaira marbella 173.0

  -- Stage 3
  plainStage marbella malaga 156.0

  -- Stage 4
  plainStage malaga valdepenasDeJaén 177.0

  -- Stage 5
  plainStage guadix lorca 194.0

  -- Stage 6
  plainStage caravacaDeLaCruz murcia 144.0

  -- Stage 7
  plainStage murcia orihuela 170.0

  -- Stage 8
  plainStage villena xorretDeCati 188.8

  -- Stage 9
  plainStage calp alcoi 187.0

  transferDay

  -- Stage 10
  plainStage tarragona vilanovaILaGeltru 173.7

  -- Stage 11
  plainStage vilanovaILaGeltru pal 208.0

  -- Stage 12
  plainStage andorraLaVella lleida 175.0

  -- Stage 13
  plainStage rinconDeSoto burgos 193.7

  -- Stage 14
  plainStage burgos penaCabarga 178.8

  -- Stage 15
  mountainStage (Left solares) 170
  addCol 170 lagosDeCovadonga C1

  -- Stage 16
  mountainStage (Left gijon) 179.3
  addCol 179.3 altoDeCotobello C1

  transferDay

  -- Stage 17
  outAndBackIndividualTimeTrial penafiel 46.0

  -- Stage 18
  plainStage valladolid salamanca 153.0

  -- Stage 19
  plainStage piedrahita toledo 200.0

  -- Stage 20
  plainStage sanMartinDeValdeiglesias bolaDelMundo 168.8

  -- Stage 21
  plainStage sanSebastianDeLosReyes madrid 85.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2011 :: StageRace
vuelta2011 = evalState vuelta2011' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2011 8 20))

vuelta2011' :: State StageRaceState StageRace
vuelta2011' = do
  -- Stage 1
  outAndBackTeamTimeTrial benidorm 13.5

  -- Stage 2
  plainStage laNucia playasDeOrihuela 175.5

  -- Stage 3
  plainStage petrer totana 163.0

  -- Stage 4
  mountainStage (Left baza) 170.2
  addCol 170.2 Mountains.SierraNevada.sierraNevada C1

  -- Stage 5
  plainStage Countries.Spain.sierraNevada valdepenasDeJaén 187.0

  -- Stage 6
  plainStage ubeda cordoba 196.8

  -- Stage 7
  plainStage almaden talaveraDeLaReina 187.6

  -- Stage 8
  plainStage talaveraDeLaReina sanLorenzoDeElEscorial 177.3

  -- Stage 9
  mountainStage (Left villacastin) 183
  addCol 183 Mountains.SistemaCentral.laCovatilla C1

  -- Stage 10
  outAndBackIndividualTimeTrial salamanca 47.0

  transferDay

  -- Stage 11
  plainStage verin estacionDeEsquiManzaneda 167.0

  -- Stage 12
  plainStage ponteareas pontevedra 167.3

  -- Stage 13
  plainStage sarria ponferrada 158.2

  -- Stage 14
  let laFarrapona' = ParcoursDB.Location.vicinity laFarrapona "Lagos de Somiedo"
  plainStage astorga laFarrapona' 172.8

  -- Stage 15
  mountainStage (Left aviles) 142.2
  addCol 142.2 altoDeL'Angliru HC

  transferDay

  -- Stage 16
  let villaRomanaLaOlmeda' = ParcoursDB.Location.vicinity villaRomanaLaOlmeda "Palancia"
  plainStage villaRomanaLaOlmeda' haro 188.1

  -- Stage 17
  let faustinoV' = ParcoursDB.Location.vicinity faustinoV "Oyon"
  plainStage faustinoV' penaCabarga 211.0

  -- Stage 18
  plainStage solares noja 174.6

  -- Stage 19
  plainStage noja bilbao 158.5

  -- Stage 20
  plainStage bilbao vitoriaGasteiz 185.0

  -- Stage 21
  plainStage circuitoDelJarama madrid 94.2

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2012 :: StageRace
vuelta2012 = evalState vuelta2012' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2012 8 18))

vuelta2012' :: State StageRaceState StageRace
vuelta2012' = do
  -- Stage 1
  outAndBackTeamTimeTrial pamplona 16.5

  -- Stage 2
  plainStage pamplona viana 181.4

  -- Stage 3
  let arrate' = ParcoursDB.Location.vicinity arrate "Eibar"
  plainStage oion arrate' 155.3

  -- Stage 4
  plainStage barakaldo valdezcaray 160.6

  -- Stage 5
  criterium logrono 168.0

  -- Stage 6
  let elFuerteDelRapitan' = ParcoursDB.Location.vicinity elFuerteDelRapitan "Jaca"
  plainStage tarazona elFuerteDelRapitan' 175.4

  -- Stage 7
  plainStage huesca motorlandAragonAlcaniz 164.2

  -- Stage 8
  mountainStage (Left lleida) 174.7
  addCol 174.7 collDeLaGallina HC

  -- Stage 9
  plainStage andorra barcelona 196.3

  transferDay

  -- Stage 10
  plainStage ponteareas sanxenxo 190.0

  -- Stage 11
  individualTimeTrial cambados pontevedra 39.4

  -- Stage 12
  plainStage vilagarcia miradorDeEzaro 190.5

  -- Stage 13
  plainStage santiagoDeCompostela ferrol 172.8

  -- Stage 14
  plainStage palasDeRei losAncares 149.2

  -- Stage 15
  mountainStage (Left laRobla) 186.5
  addCol 186.5 lagosDeCovadonga C1

  -- Stage 16
  plainStage gijon cuituNegro 183.5

  transferDay

  -- Stage 17
  plainStage santander fuenteDe 187.3

  -- Stage 18
  plainStage aguilarDeCampoo valladolid 204.5

  -- Stage 19
  plainStage penafiel laLastrilla 178.4

  -- Stage 20
  plainStage palazuelosDeEresma bolaDelMundo 170.7

  -- Stage 21
  plainStage cercedilla madrid 115.0

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2013 :: StageRace
vuelta2013 = evalState vuelta2013' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2013 8 24))

vuelta2013' :: State StageRaceState StageRace
vuelta2013' = do
  -- Stage 1
  teamTimeTrial vilanovaDeArousa sanxenxo 27.4

  -- Stage 2
  plainStage pontevedra monteDaGroba 177.7

  -- Stage 3
  plainStage vigo miradorDeLobeira 184.8

  -- Stage 4
  plainStage lalin finisterra 189.0

  -- Stage 5
  plainStage sober lagoDeSanabria 174.3

  -- Stage 6
  plainStage guijuelo caceres 175.0

  -- Stage 7
  plainStage almendralejo mairenaDelAljarafe 205.9

  -- Stage 8
  mountainStage (Left jerezDeLaFrontera) 166.6
  addCol 166.6 altoDePenasBlancas C1

  -- Stage 9
  plainStage antequera valdepenasDeJaén 163.7

  -- Stage 10
  mountainStage (Left torredelcampo) 186.8
  addCol 186.8 altoDeHazaLlana HC

  transferDay

  -- Stage 11
  outAndBackIndividualTimeTrial tarrazona 38.8

  -- Stage 12
  plainStage maella tarragona 164.2

  -- Stage 13
  plainStage valls castelldefels 169.0

  -- Stage 14
  mountainStage (Left baga) 155.7
  addCol 155.7 collDeLaGallina HC

  -- Stage 15
  mountainStage (Left andorra) 224.9
  addCol 224.9 peyragudes C1

  -- Stage 16
  mountainStage (Left graus) 146.8
  addCol 146.8 Mountains.Pyrenees.formigal C1

  transferDay

  -- Stage 17
  plainStage calahorra burgos 189.0

  -- Stage 18
  plainStage burgos penaCabarga 186.5

  -- Stage 19
  mountainStage (Left sanVicenteDeLaBarquera) 181
  addCol 181 altoDelNaranco C1

  -- Stage 20
  mountainStage (Left aviles) 142.2
  addCol 142.2 altoDeL'Angliru HC

  -- Stage 21
  plainStage leganes madrid 109.6

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2014 :: StageRace
vuelta2014 = evalState vuelta2014' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2014 8 23))

vuelta2014' :: State StageRaceState StageRace
vuelta2014' = do
  -- Stage 1
  outAndBackTeamTimeTrial jerezDeLaFrontera 12.6

  -- Stage 2
  plainStage algerciras sanFernando 174.4

  -- Stage 3
  plainStage cadiz arcosDeLaFrontera 197.8

  -- Stage 4
  plainStage mairenaDelAlcor cordoba 164.7

  -- Stage 5
  plainStage priegoDeCordoba ronda 180.0

  -- Stage 6
  let cumbresVerdes' = ParcoursDB.Location.vicinity cumbresVerdes "La Zubia"
  plainStage benalmadena cumbresVerdes' 167.1

  -- Stage 7
  plainStage alhendin alcaudete 169.0

  -- Stage 8
  plainStage baeza albacete 207.0

  -- Stage 9
  plainStage carbonerasDeGuadazaon aramonValdelinares 185.0

  transferDay

  -- Stage 10
  individualTimeTrial monasterioDeSantaMariaDeVeruela borja 36.7

  -- Stage 11
  plainStage pamplona santuarioDeSanMiguelDeAralar 153.4

  -- Stage 12
  criterium logrono 166.4

  -- Stage 13
  let parqueDeCabarceno' = ParcoursDB.Location.vicinity parqueDeCabarceno "Obregon"
  plainStage belorado parqueDeCabarceno' 188.7

  -- Stage 14
  let laCamperona' = ParcoursDB.Location.vicinity laCamperona "Valle de Sabero"
  plainStage santander laCamperona' 200.8

  -- Stage 15
  mountainStage (Left oviedo) 152.2
  addCol 152.2 lagosDeCovadonga C1

  -- Stage 16
  let laFarrapona' = ParcoursDB.Location.vicinity laFarrapona "Lagos de Somiedo"
  plainStage sanMartinDelReyAurelio laFarrapona' 160.5

  transferDay

  -- Stage 17
  plainStage ortigueira aCoruna 190.7

  -- Stage 18
  let montCastrove' = ParcoursDB.Location.vicinity montCastrove "Meis"
  plainStage aEstrada montCastrove' 157.0

  -- Stage 19
  plainStage salvaterraDeMino cangasDoMorrazo 180.5

  -- Stage 20
  plainStage santoEstevoDeRibasDeSil puertoDeAncares 185.7

  -- Stage 21
  outAndBackIndividualTimeTrial santiagoDeCompostela 9.7

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2015 :: StageRace
vuelta2015 = evalState vuelta2015' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2015 8 22))

vuelta2015' :: State StageRaceState StageRace
vuelta2015' = do
  -- Stage 1
  teamTimeTrial puertoBanus marbella 7.4

  -- Stage 2
  plainStage alhaurinDeLaTorre caminitoDelRay 158.7

  -- Stage 3
  plainStage mijas malaga 158.4

  -- Stage 4
  plainStage estepona vejerDeLaFrontera 209.6

  -- Stage 5
  plainStage rota alcalaDeGuadaira 167.3

  -- Stage 6
  plainStage cordoba sierraDeCazorla 200.3

  -- Stage 7
  plainStage jodar laAlpujarra 191.1

  -- Stage 8
  plainStage pueblaDeDonFadrique murcia 182.5

  -- Stage 9
  let cumbreDelSol' = ParcoursDB.Location.vicinity cumbreDelSol "Benitachell"
  plainStage torrevieja cumbreDelSol' 168.3

  -- Stage 10
  plainStage valencia castellonDeLaPlana 146.6

  restDay (Left andorraLaVella)

  -- Stage 11
  plainStage andorraLaVella cortalsD'Encamp 138.0

  -- Stage 12
  plainStage escaldesEngordany lleida 173.0

  -- Stage 13
  plainStage calatayud tarazona 178.0

  -- Stage 14
  mountainStage (Left vitoriaGasteiz) 215
  addCol 215 Mountains.Cantabrian.altoCampoo HC

  -- Stage 15
  plainStage comillas sotres 175.8

  -- Stage 16
  let ermitaDelAlba' = ParcoursDB.Location.vicinity ermitaDelAlba "Quiros"
  plainStage luarca ermitaDelAlba' 185.0

  restDay (Left burgos)

  -- Stage 17
  outAndBackIndividualTimeTrial burgos 38.7

  -- Stage 18
  plainStage roaDeDuero riaza 204.0

  -- Stage 19
  plainStage medinaDelCampo avila 185.8

  -- Stage 20
  plainStage sanLorenzoDeElEscorial cercedilla 175.8

  -- Stage 21
  plainStage alcalaDeHenares madrid 98.8

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2016 :: StageRace
vuelta2016 = evalState vuelta2016' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2016 8 20))

vuelta2016' :: State StageRaceState StageRace
vuelta2016' = do
  -- Stage 1
  teamTimeTrial laias parqueNauticoCastreloDeMino 7.4

  -- Stage 2
  plainStage ourense baiona 160.8

  -- Stage 3
  let miradorDeEzaro' = ParcoursDB.Location.vicinity miradorDeEzaro "Dumbria"
  plainStage marin miradorDeEzaro' 176.4

  -- Stage 4
  plainStage betanzos sanAndresDeTeixido 163.5

  -- Stage 5
  plainStage viveiro lugo 171.3

  -- Stage 6
  plainStage monforteDeLemos ribeiraSacra 163.2

  -- Stage 7
  plainStage maceda pueblaDeSanabria 158.5

  -- Stage 8
  let laCamperona' = ParcoursDB.Location.vicinity laCamperona "Valle de Sabero"
  plainStage villalpando laCamperona' 181.5

  -- Stage 9
  mountainStage (Left cistierna) 164.5
  addCol 164.5 altoDelNaranco C1

  -- Stage 10
  mountainStage (Left lugones) 188.7
  addCol 188.7 lagosDeCovadonga C1

  restDay (Left oviedo)

  -- Stage 11
  let jurassicMuseumOfAsturias' = ParcoursDB.Location.vicinity jurassicMuseumOfAsturias "Colunga"
  plainStage jurassicMuseumOfAsturias' penaCabarga 168.6

  -- Stage 12
  plainStage losCorralesDeBuelna bilbao 193.2

  -- Stage 13
  plainStage bilbao urdaxDantxarinea 213.4

  -- Stage 14
  mountainStage (Left urdaxDantxarinea) 196
  addCol 196 colD'Aubisque HC

  -- Stage 15
  let aramonFormigal' = ParcoursDB.Location.vicinity aramonFormigal "Sallent de Gallego"
  plainStage sabinanigo aramonFormigal' 118.5

  -- Stage 16
  plainStage alcaniz peniscola 156.4

  restDay (Left castellonDeLaPlana)

  -- Stage 17
  let caminsDelPenyagolosa' = ParcoursDB.Location.vicinity caminsDelPenyagolosa "Llucena"
  plainStage castellonDeLaPlana caminsDelPenyagolosa' 177.5

  -- Stage 18
  plainStage requena gandia 200.6

  -- Stage 19
  individualTimeTrial xabia calp 37.0

  -- Stage 20
  mountainStage (Left benidorm) 193.2
  addCol 193.2 altoDeAitana HC

  -- Stage 21
  plainStage lasRozas madrid 104.8

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2017 :: StageRace
vuelta2017 = evalState vuelta2017' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2017 8 19))

vuelta2017' :: State StageRaceState StageRace
vuelta2017' = do
  -- Stage 1
  outAndBackTeamTimeTrial nimes 13.7

  -- Stage 2
  plainStage nimes gruissan 203.4

  -- Stage 3
  plainStage prades andorraLaVella 158.5

  -- Stage 4
  plainStage escaldesEngordany tarragona 198.2

  -- Stage 5
  plainStage benicassim alcossebre 175.7

  -- Stage 6
  plainStage villareal sagunto 204.4

  -- Stage 7
  plainStage lliria cuenca 207

  -- Stage 8
  plainStage hellin xorretDeCati 199.5

  -- Stage 9
  plainStage orihuela benitachell 174

  restDay (Left alicante)

  -- Stage 10
  plainStage caravacaDeLaCruz elPozo 164.8

  -- Stage 11
  mountainStage (Left lorca) 187.5
  addCol 187.5 Mountains.SierraDeLosFilabres.calarAltoObservatory C1

  -- Stage 12
  plainStage motril antequera 160.1

  -- Stage 13
  plainStage coin tomares 198.4

  -- Stage 14
  mountainStage (Left ecija) 175
  addCol 175 sierraDeLaPandera C1

  -- Stage 15
  mountainStage (Left alcalaLaReal) 129.4
  addCol 129.4 altoHoyaDeLaMora HC

  restDay (Left logrono)

  -- Stage 16
  individualTimeTrial circuitoDeNavarra logrono 40.2

  -- Stage 17
  mountainStage (Left villadiego) 180.5
  addCol 180.5 altoDeLosMachucos HC

  -- Stage 18
  plainStage suances santoToriboDeLiebana 169

  -- Stage 19
  plainStage caso gijon 149.7

  -- Stage 20
  mountainStage (Left corveraDeAsturias) 117.5
  addCol 117.5 altoDeL'Angliru HC

  -- Stage 21
  plainStage arroyomolinos madrid 117.7

  edition <- ParcoursDB.State.StageRace.build
  return edition

vuelta2018 :: StageRace
vuelta2018 = evalState vuelta2018' (ParcoursDB.State.StageRace.init (Vuelta []) (fromGregorian 2018 8 25))

vuelta2018' :: State StageRaceState StageRace
vuelta2018' = do
  -- Stage 1
  outAndBackIndividualTimeTrial malaga 8

  -- Stage 2
  plainStage marbella caminitoDelRay 163.9

  -- Stage 3
  plainStage mijas alhaurinDeLaTorre 182.5

  -- Stage 4
  plainStage velezMalaga alfacar 162

  -- Stage 5
  plainStage granada roquetasDeMar 188

  -- Stage 6
  plainStage huercalOvera sanJavier 153

  -- Stage 7
  plainStage puertoLumbreras pozoAlcon 182

  -- Stage 8
  plainStage linares almaden 195.5

  -- Stage 9
  mountainStage (Left talaveraDeLaReina) 195
  addCol 195 Mountains.SistemaCentral.laCovatilla C1

  restDay (Left salamanca)

  -- Stage 10
  plainStage salamanca fermosella 172.5

  -- Stage 11
  plainStage mombuey ribeiraSacra 208.8

  -- Stage 12
  plainStage mondonedo puntaDeEstacaDeBars 177.5

  -- Stage 13
  plainStage candas laCamperona 175.5

  -- Stage 14
  plainStage cistierna lesPraeresDeNava 167

  -- Stage 15
  mountainStage (Left riberaDeArriba) 185.5
  addCol 185.5 lagosDeCovadonga HC

  restDay (Left santander)

  -- Stage 16
  individualTimeTrial santillanaDelMar torrelavega 32.7

  -- Stage 17
  plainStage getxo oiz 166.4

  -- Stage 18
  plainStage ejeaDeLosCaballeros lleida 180.5

  -- Stage 19
  plainStage lleida naturlandia 157

  -- Stage 20
  mountainStage (Left escaldesEngordany) 105.8
  addCol 105.8 collDeLaGallina C1

  -- Stage 21
  plainStage alcorcon madrid 112.3

  edition <- ParcoursDB.State.StageRace.build
  return edition
