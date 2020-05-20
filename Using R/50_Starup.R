rm(list=ls())
cat("\14")

startup<-read.csv("C:/Users/sonih/Downloads/50_startups.csv")
pairs(startup)
cor(startup[-4])
startup<-startup[-4]
profit.50_startups<-lm(Profit~.,data=startup)
summary(profit.50_startups)
#r-square-0.9508

##collinearity
car::vif(profit.50_startups)
MASS::stepAIC(profit.50_startups)

model_1<-lm(Profit~R.D.Spend+Marketing.Spend,data=startup)
summary(model_1)
#r-square-0.9505

plot(model_1)
car::residualPlots(model_1)
car::avPlots(model_1)
car::qqPlot(model_1)
car::influenceIndexPlot(model_1)

#iteration1
data1<-startup[c(15,46,50),]
model1<-lm(Profit~R.D.Spend+Marketing.Spend,data=data1)
summary(model1)
#r-square-1
