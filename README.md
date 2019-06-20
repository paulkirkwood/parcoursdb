# parcoursdb

A pet project to climb up the Scala learning curve

# Goals

Consolidate the material I've read in "Scala for the Impatient", "The Scala Cookbook" and "Functional Programming simplified" into a concrete project:
1. Use Scala to describe all of the races within the professional Cycling calendar: the one day races, the monuments and the stage races.
2. Add methods to summarise each stage race: the number of summit finishes and the spread of climbs across the categories.
3. Add the capability to describe the obstacles - mountains, cobbles and climbs within each race or stage and the differences between each race:

- French stage races such as Le Tour de France and Paris-Nice categorise the Cols into five groups: HC, C1, C2, C3, C4 whereas the Giro d'Italia only uses C1 - C4. Tirreno-Adriatico doesn't classify any of the climbs.

- In Paris-Roubaix the cobbled sectors count down towards the finish in Roubaix whereas in the other cobbled classics such as Tour of Flanders, the sector IDs count up.

# The 'rules' of stage races:

1. There are no day gaps between the stages.
2. A stage race does not start or end with a rest day.
3. A rest day does not follow another rest day.
4. If a stage race contains a prologue, there will only be one Prologue and it will be the first stage. 
5. If a stage is a split stage then each split stage will be a road stage, individual or team time trial.
