new_data=read.csv("C:\\Users\\Dell\\Downloads\\obesity_data(4).csv")
View(new_data)
data.frame(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
library(caTools)
split = sample.split(new_data,SplitRatio=0.90)
split = sample.split(new_data$x1,SplitRatio=0.90)
Train = subset(new_data,split == TRUE)
Test = subset(new_data,split == FALSE)
fit2 = glm(formula=new_data$x1 ~ new_data$Gender+new_data$Age+new_data$Height+new_data$Weight+new_data$BMI+new_data$x2
           +new_data$x3+new_data$x4+new_data$x5+new_data$x6+new_data$x7+new_data$x8+new_data$x9+new_data$x10+new_data$x11
           +new_data$x12,family = "binomial", data=Train)
fit2
summary(fit2)

library(car)
vif(fit2)
v2 = vif(fit2)
barplot(v2, main = "Bar Plot Representing VIF Values", horiz = TRUE, col = "grey",xlab="VIF 
Values",ylab="Variables") 
abline(v = 5, lwd = 3, lty = 2)


fit3 = glm(formula=new_data$x1 ~ new_data$Gender+new_data$Age+new_data$x2
           +new_data$x3+new_data$x4+new_data$x5+new_data$x6+new_data$x7+new_data$x8+new_data$x9+new_data$x10+new_data$x11
           +new_data$x12,family = "binomial", data=Train)
fit3
summary(fit3)
library(car)
vif(fit3)
v3 = vif(fit3)
barplot(v3, main = "Bar Plot Representing VIF Values", horiz = TRUE, col = "grey",xlab="VIF 
Values",ylab="Variables") 
abline(v = 5, lwd = 3, lty = 2)
n_data = read.csv("C:\\Users\\Dell\\Downloads\\obesity_data (5).csv")
str(n_data)
library(FactoMineR)
d3= n_data
d3_nm=scale(d3)
pca=prcomp(d3_nm)
pca
pca
summary(pca)
pca_var=pca$sdev^2
pca_var
plot(pca_var,xlab="principal components",ylab = "proportion of variance explained",type="b",
     main = "scree plot",col="blue")

new_data=read.csv("C:\\Users\\Dell\\Downloads\\obesity_data(4).csv")
View(new_data)
data.frame(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
library(caTools)
split = sample.split(new_data,SplitRatio=0.90)
split = sample.split(new_data$x1,SplitRatio=0.90)
Train = subset(new_data,split == TRUE)
Test = subset(new_data,split == FALSE)
fit5 = glm(formula=new_data$x2 ~ new_data$Gender+new_data$Age+new_data$x1
           +new_data$x3+new_data$x4+new_data$x5+new_data$x6+new_data$x7+new_data$x8+new_data$x9+new_data$x10+new_data$x11
           +new_data$x12,family = "binomial", data=Train)
fit5
summary(fit5)

library(car)
vif(fit5)
v5 = vif(fit5)
barplot(v5, main = "Bar Plot Representing VIF Values", horiz = TRUE, col = "grey",xlab="VIF 
Values",ylab="Variables") 
abline(v = 5, lwd = 3, lty = 2)
nn_data = read.csv("C:\\Users\\Dell\\Downloads\\obesity_data (5).csv")
str(nn_data)
library(FactoMineR)
d5= nn_data
d5_nm=scale(d5)
pca=prcomp(d3_nm)
pca
pca
summary(pca)
pca_var=pca$sdev^2
pca_var
plot(pca_var,xlab="principal components",ylab = "proportion of variance explained",type="b",
     main = "scree plot",col="blue")




new_data=read.csv("C:\\Users\\Dell\\Downloads\\obesity_data (5).csv")
View(new_data)
data.frame(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)
library(caTools)
split = sample.split(new_data,SplitRatio=0.90)
split = sample.split(new_data$x6,SplitRatio=0.90)
Train = subset(new_data,split == TRUE)
Test = subset(new_data,split == FALSE)
fit6 = glm(formula=new_data$x12 ~ new_data$Gender+new_data$Age
           +new_data$x1+new_data$x2
           +new_data$x3+new_data$x4+new_data$x5+new_data$x7+new_data$x8+new_data$x11
           +new_data$x9+new_data$x10+new_data$x6,family = "binomial", data=Train)
fit6
summary(fit6)

library(car)
vif(fit6)
v6 = vif(fit6)
barplot(v6,xlim = c(0,5), main = "Bar Plot Representing VIF Values", horiz = TRUE, col = "grey",xlab="VIF 
Values",ylab="Variables") 
abline(v = 5, lwd = 3, lty =2)

library(FactoMineR)
d6= new_data
d6_nm=scale(d6)
pca1=prcomp(d6_nm)
pca1
summary(pca1)
pca_var=pca$sdev^2
pca_var
plot(pca_var,xlab="principal components",ylab = "proportion of variance explained",type="b",
     main = "scree plot",col="blue")
