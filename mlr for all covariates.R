new_data = read.csv("C:\\Users\\Dell\\Downloads\\obesity_data (3).csv")
View(new_data)
x1=raw_data$family_history_with_overweight
x2=raw_data$FAVC
x3=raw_data$FCVC
x4=raw_data$NCP
x5=raw_data$CAEC
x6=raw_data$SMOKE
x7=raw_data$CH2O
x8=raw_data$FAF
x9=raw_data$TUE
x10=raw_data$CALC
x11=raw_data$MTRANS
x12=raw_data$NObeyesdad
data.frame(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
library(caTools)
set.seed(123)
split = sample.split(new_data,SplitRatio=0.90)
split = sample.split(new_data$id,SplitRatio=0.90)
Train = subset(new_data,split == TRUE)
Test = subset(new_data,split == FALSE)
fit2 = glm(BMI ~ Gender+Age+Height+Weight+x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12,data=Train)
fit2
pr = predict (fit1,new_data = data.frame(Test))
pr
sl2=new_data$id
obs2=new_data$BMI
plot(sl2,obs2,type="b",col="red",xlab= "id",ylab="BMI",main="line diagram representing observed and predicted value")
lines(sl2,pr,col="lightblue",type="b",lty=2)
legend("bottomright",legend=c("observed value","predicted value"),col=c("red","lightblue"),lty=c(1,2))


install.packages("car")
library(car)
vif(fit2)
v = vif(fit2)
barplot(v, main = "Bar Plot Representing VIF Values", horiz = TRUE, col = "grey",xlab="VIF 
Values",ylab="Variables") 
install.packages(factoMINeR)
library(factoMINeR)
install.packages(factoMINeR)