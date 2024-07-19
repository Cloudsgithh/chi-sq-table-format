raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
str(raw_data)
lm <- lm(raw_data$Height~raw_data$Weight)
lm


model <- lm(raw_data$BMI~raw_data$Age)
summary(model)
AIC(lm)


lm2 <- lm(raw_data$Height~raw_data$Weight+I(raw_data$Weight^2))
lm2
model <- lm(raw_data$Height ~ raw_data$Weight+I(raw_data$Weight^2))
summary(model)
AIC(lm2)


lm3 <- lm(raw_data$Height~raw_data$Weight+I(raw_data$Weight^2)+I(raw_data$Weight^3))
lm3
model <- lm(raw_data$Height~raw_data$Weight+I(raw_data$Weight^2)+I(raw_data$Weight^3))
summary(model)
AIC(lm3)


lm <- lm(log(raw_data$Height)~raw_data$Weight)
lm
model <- lm(log(raw_data$Height)~raw_data$Weight)
summary(model)
AIC(lm)
