cat("\14")
comp<-read.csv("C:/Users/sonih/Downloads/Computer_Data.csv")

#multiple linear regression equation
comp<-comp[,-1]
reg_com<-lm(price~.,data=comp)
summary(reg_com)
plot(reg_com)
car::vif(reg_com)
car::residualPlots(reg_com)
car::avPlots(reg_com)
car::qqPlot(reg_com)
car::influenceIndexPlot(reg_com)

##iteration1
comp["hd2"]=comp$hd*comp$hd
comp["ram2"]=comp$ram*comp$ram
data1<-comp[-c(20,1441,1701),]
model1<-lm(price~.,data=data1)
summary(model1)
#r-square-0.7924

plot(model1)
car::vif(model1)
car::residualPlots(model1)
car::avPlots(model1)
car::qqPlot(model1)
car::influenceIndexPlot(model1)


##iteration2
data2<-comp[-c(20,25,28,310,1441,1701),]
model2<-lm(price~.,data=data2)
summary(model2)
#r-square-0.7939

plot(model2)
car::vif(model2)
car::residualPlots(model2)
car::avPlots(model2)
car::qqPlot(model2)
car::influenceIndexPlot(model2)


##iteration3
data3<-comp[-c(20,25,28,208,310,994,1441,1701,2469,3784,4478,5961),]
model3<-lm(price~.,data=data3)
summary(model3)
#r-square-0.7961

plot(model3)
car::vif(model3)
car::residualPlots(model3)
car::avPlots(model3)
car::qqPlot(model3)
car::influenceIndexPlot(model3)


##iteration4
data4<-comp[-c(20,25,28,208,310,314,994,1043,1102,1123,1441,1701,1992,2469,3784,4478,5961),]
model4<-lm(price~.,data=data4)
summary(model4)
#r-square-0.7964

plot(model4)
car::vif(model4)
car::residualPlots(model4)
car::avPlots(model4)
car::qqPlot(model4)
car::influenceIndexPlot(model4)


##iteration5
data5<-comp[-c(20,25,28,175,208,224,291,310,314,994,1043,1102,1123,1441,1507,1701,1992,2097,2469,3784,4478,5961),]
model5<-lm(price~.,data=data5)
summary(model5)
#r-square-0.7965

plot(model5)
car::vif(model5)
car::residualPlots(model5)
car::avPlots(model5)
car::qqPlot(model5)
car::influenceIndexPlot(model5)


##iteration6
data6<-comp[-c(20,25,28,175,208,224,291,310,314,982,994,1043,1099,1177,1102,1123,1441,1507,1701,1992,2097,2469,3784,4478,5961),]
model6<-lm(price~.,data=data6)
summary(model6)
#r-square-0.797291

##final model
data6<-comp[-c(20,25,28,175,208,224,291,310,314,982,994,1043,1099,1177,1102,1123,1441,1507,1701,1992,2097,2469,3784,4478,5961),]
model6<-lm(price~.,data=data6)
summary(model6)