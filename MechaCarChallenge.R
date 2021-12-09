#Deliverable 1-----------------------------------------------------------

#load dplyr package
library(dplyr)

#read file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#Deliverable 2------------------------------------------------------------
#read file
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#get a total summary
total_summary <- Suspension%>% summarise(Mean=mean(PSI),Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups = 'keep')

#create a lot summary
lot_summary <- Suspension%>% group_by(Manufacturing_Lot)%>% summarise(Mean=mean(PSI),Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups = 'keep')
head(lot_summary)

#Deliverable 3 -----------------------------------------------------------
#perform t-test to determine if the PSI across 
# Peform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)
# Peform t-test on Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500) 


