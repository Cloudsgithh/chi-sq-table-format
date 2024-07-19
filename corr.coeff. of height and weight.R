raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
cor(raw_data$Height,raw_data$Weight,
    method = "spearman")
str(raw_data)
library(tidyverse)
female_data <- raw_data %>%
filter(Gender == "female")  
cor(female_data$Height,female_data$Weight)


male_data <- raw_data %>%
filter(Gender == "male")  
cor(male_data$Height,male_data$Weight)

raw_data %>%
  filter(NObeyesdad == "normal_weight")
cor(raw_data$Height,raw_data$Weight)  

cor(raw_data$Age,raw_data$BMI,
    method = "spearman")

str(raw_data)
library(tidyverse)
female_data <- raw_data %>%
  filter(Gender == "female")  
cor(female_data$Age,female_data$BMI)
male_data <- raw_data %>%
  filter(Gender == "male")  
cor(male_data$Age,male_data$BMI)



raw_data %>%
  filter(NObeyesdad == "normal_weight")
cor(raw_data$Age,raw_data$BMI)
