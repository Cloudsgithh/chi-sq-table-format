raw_data = read.csv(file.choose(ObesityDataSet_cleaned_and_data_sinthetic (2))
view(raw_data)
str(raw_data)
install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(raw_data,SplitRatio=0.90)
split = sample.split(raw_data$id,SplitRatio=0.90)
Train = subset(raw_data,split == TRUE)
Test = subset(raw_data,split == FALSE)
fit1 = glm(BMI~Gender+Height+Weight,data=Train)
fit1
pr = predict (fit1,newdata = data.frame(Test))
pr
plot(sl,obs,type="b",col="red",xlab= "id",ylab="BMI",main="line diagram representing observed and predicted value")
lines(sl,pr,col="green",type="b",lty=2)
legend("bottomright",legend=c("observed value","predicted value"),col=c("red","green"),lty=c(1,2))

x1=raw_data$family_history_with_overweight
x2=raw_data$FAVC
x3=raw_data$FCVC
x4=raw_data$NCP
x5=raw_data$CAEC
x6=raw_data$SMOKE
x7=raw_data$CH2O
x8=raw_data$FAF
x9=raw_data$TUE
x10=raw_dataCALC
x11=raw_data$MTRANS
x12=raw_data$NObeyesdad
data.frame(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
mq = read.csv(file.choose("obesity dataset 3")

library(caTools)
set.seed(123)
split = sample.split(mq,SplitRatio=0.90)
split = sample.split(mq$id,SplitRatio=0.90)
Train = subset(mq,split == TRUE)
Test = subset(mq,split == FALSE)



plot(sl,obs,type="b",col="red",xlab= "id",ylab="BMI",main="line diagram representing observed and predicted value")
lines(sl,pr,col="green",type="b",lty=2)
legend("bottomright",legend=c("observed value","predicted value"),col=c("red","green"),lty=c(1,2))
library(car)
vif(fit1)
raw_data_1 = read.csv(file.choose("obesity dataset 3"))
d1= raw_data_1
d1_nm = scale(d1)
pca=prcomp(d1_nm)