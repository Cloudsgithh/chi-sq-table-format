raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (1).csv")
View(raw_data)
str(raw_data)
raw_data$family_history_with_overweight <- as.factor(raw_data$family_history_with_overweight)
summary(raw_data$family_history_with_overweight)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
c <- table(raw_data$family_history_with_overweight,raw_data$NObeyesdad)
d <- data.frame(table(raw_data$family_history_with_overweight,raw_data$NObeyesdad))
View(d)

n <- apply(as.matrix.noquote(c),2,as.numeric)
rownames(n) <- c("yes","no")
n
class(n)

chisq.test(n)$odds.ratio

