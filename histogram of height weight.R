raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
which(is.na(raw_data))
library(tidyverse)
raw_data %>% 
  ggplot(aes(x = Height)) +
  geom_histogram(bindwidth = 0.34,fill = "#4CE45E" , color = "black",linewidth = 1) +
  labs(x = "height", y = "frequency", title = "histogram")  


raw_data %>%
  ggplot(aes(x = Weight)) + 
  geom_histogram(bindwidth= 0.34, fill = "#E47549", color = "black", linewidth = 1) +
  labs(x = "weight", y = "frequency", title = "histogram of weight")


raw_data %>%
  ggplot(aes(x = Age)) + 
  geom_histogram(bindwidth= 0.34, fill = "#22D983", color = "black", linewidth = 1) +
  labs(x = "age", y = "frequency", title = "histogram of age")


raw_data %>%
  ggplot(aes(x = BMI)) + 
  geom_histogram(bindwidth= 0.34, fill = "#22D983", color = "black", linewidth = 1) +
  labs(x = "BMI", y = "frequency", title = "histogram of BMI")

