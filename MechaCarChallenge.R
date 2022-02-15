
########  Deliverable 1 ########## 

# load the dplyr package.
library(dplyr)

#import dataset
MechaCar_mpg <- read.csv(file='resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


########  Deliverable 2 ############ 

#import dataset
Suspension_Coil <- read.csv(file='resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#create summary table
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#create summary table groupby Manufacturing_Lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


########  Deliverable 3 ############ 

# t-test to check PSI across all manufacturing lots
t.test(Suspension_Coil$PSI, mu=1500)

# t-test to check PSI across each manufacturing lots
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot3"), mu=1500)

