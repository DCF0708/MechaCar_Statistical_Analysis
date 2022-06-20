library(dplyr)
mechadf <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechadf) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechadf)) #generate multiple linear regression model summary

library(tidyverse)
susp_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors =  F)
summary_susp_table <- susp_table %>% group_by() %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
lot_summary <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')

susp_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors =  F)
t.test(susp_table$PSI,mu=1500)
t.test(subset(susp_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(susp_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(susp_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
