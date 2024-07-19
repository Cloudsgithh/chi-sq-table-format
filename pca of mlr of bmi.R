new_data = read.csv("C:\\Users\\Dell\\Downloads\\obesity_data (4).csv")
str(new_data)
library(FactoMineR)
d3= fit3
d3_nm=scale(d3)
pca=prcomp(d3_nm)
pca
pca
summary(pca)
pca_var=pca$sdev^2
pca_var
plot(pca_var,xlab="principal components",ylab = "proportion of variance explained",type="b",
     main = "scree plot",col="blue")
