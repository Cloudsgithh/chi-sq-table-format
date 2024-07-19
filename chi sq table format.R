raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (1).csv")
View(raw_data)
str(raw_data)
raw_data$NCP <- as.factor(raw_data$NCP)
summary(raw_data$NCP)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$NCP,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$NCP,raw_data$NObeyesdad))
View(a)
m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("1","2","3","4")
m
class(m)

chisq.test(m)$p.value
