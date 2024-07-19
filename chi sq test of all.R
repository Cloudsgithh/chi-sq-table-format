raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
str(raw_data)
raw_data$FAVC <- as.factor(raw_data$FAVC)
summary(raw_data$FAVC)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$FAVC,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$FAVC,raw_data$NObeyesdad))
View(a)

m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("yes","no")
m
class(m)


chisq.test(m)$p.value


raw_data$FAF <- as.factor(raw_data$FAF)
summary(raw_data$FAF)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$FAF,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$FAF,raw_data$NObeyesdad))
View(a)

m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("0","1 to 2","2 to 4","4 to 5")
m
class(m)


chisq.test(m)$p.value


raw_data$SMOKE <- as.factor(raw_data$SMOKE)
summary(raw_data$SMOKE)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$SMOKE,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$SMOKE,raw_data$NObeyesdad))
View(a)

m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("yes","no")
m
class(m)

chisq.test(m)$p.value




raw_data$CAEC <- as.factor(raw_data$CAEC)
summary(raw_data$CAEC)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$CAEC,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$CAEC,raw_data$NObeyesdad))
View(a)

m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("no","sometimes","frequently","always")
m
class(m)

chisq.test(m)$p.value



raw_data$CH2O <- as.factor(raw_data$CH2O)
summary(raw_data$CH2O)
raw_data$NObeyesdad <- as.factor(raw_data$NObeyesdad)
summary(raw_data$NObeyesdad)
b <-table(raw_data$CH2O,raw_data$NObeyesdad)
a <- data.frame(table(raw_data$CH2O,raw_data$NObeyesdad))
View(a)

m <- apply(as.matrix.noquote(b),2,as.numeric)
rownames(m) <- c("less than 1 ltr","between 1 & 2 ltr","more than 2 ltr")
m
class(m)

chisq.test(m)
