raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
str(raw_data)
library(tidyverse)
female_data <- raw_data %>%
filter(Gender == "female")  

lm <- lm(female_data$BMI~female_data$Age)
lm
model <- lm(female_data$BMI~female_data$Age)
summary(model)
AIC(lm)

lm2 <- lm(female_data$BMI~female_data$Age+I(female_data$Age^2))
lm2
model <-lm(female_data$BMI~female_data$Age+I(female_data$Age^2))
summary(model)
AIC(lm2)


lm3 <- lm(female_data$BMI~female_data$Age+
            I(female_data$Age^2)+
            I(female_data$Age^3))
lm3
model <-  lm(female_data$BMI~female_data$Age+
               I(female_data$Age^2)+
               I(female_data$Age^3))
summary(model)
AIC(lm3)


lm <- lm(log(female_data$BMI)~female_data$Age)
lm
model <- lm(log(female_data$BMI)~female_data$Age)
summary(model)
AIC(lm)
