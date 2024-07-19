raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
str(raw_data)
library(tidyverse)
male_data <- raw_data %>%
filter(Gender == "male")  

lm <- lm(male_data$BMI~male_data$Age)
lm
model <- lm(male_data$BMI~male_data$Age)
summary(model)
AIC(lm)


lm2 <- lm(male_data$BMI~male_data$Age+I(male_data$Age^2))
lm2
model <-lm(male_data$BMI~male_data$Age+I(male_data$Age^2))
summary(model)
AIC(lm2)


lm3 <- lm(male_data$BMI~male_data$Age+
            I(male_data$Age^2)+
            I(male_data$Age^3))
lm3
model <-  lm(male_data$BMI~male_data$Age+
               I(male_data$Age^2)+
               I(male_data$Age^3))
summary(model)
AIC(lm3)


lm <- lm(log(male_data$BMI)~male_data$Age)
lm
model <- lm(log(male_data$BMI)~male_data$Age)
summary(model)
AIC(lm)
