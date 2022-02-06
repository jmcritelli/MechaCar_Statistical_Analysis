library(dplyr)
library(tidyverse)

mechacar_mpg <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar_mpg)) 

suspension <- read.csv('Suspension_Coil.csv')
total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),PSI_Var=var(PSI),PSI_SD=sd(PSI))
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),PSI_Var=var(PSI),PSI_SD=sd(PSI))


t.test(suspension$PSI,mu=1500)

Lot1 <- subset(suspension, Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI,mu=1500)
Lot2 <- subset(suspension, Manufacturing_Lot=="Lot2")
t.test(Lot2$PSI,mu=1500)
Lot3 <- subset(suspension, Manufacturing_Lot=="Lot3")
t.test(Lot3$PSI,mu=1500)
