install.packages("car")
library(car)
library(MASS)

MPG<-read.csv("C:/Users/sonih/Downloads/Cars.csv")

#Scatter Plot Matrix:
pairs(MPG)

#Correlation Matrix:
cor(MPG)

#Regression Model and Summary
model.car<-lm(MPG~HP+VOL+SP+WT,data = MPG)
summary(model.car)

#########Experiment#####################
reg_vol<-lm(MPG~VOL,data = MPG)
summary(reg_vol)
reg_wt<-lm(MPG~WT,data = MPG)
summary(reg_wt)
reg_wt_vol<-lm(MPG~WT+VOL,data = MPG)
summary(reg_wt_vol)

##################
reg_wt_vol<-lm(MPG~VOL+SP+HP,data = MPG)
summary(reg_wt_vol)

##################
reg_wt_vol<-lm(MPG~VOL+SP+HP,data = MPG)
summary(reg_wt_vol)

#Regression Model and Summary
model.car<-lm(MPG~.,data = MPG)
summary(model.car)

#Multi-colinearity
car::vif(model.car)

##Subset selection
stepAIC(model.car)