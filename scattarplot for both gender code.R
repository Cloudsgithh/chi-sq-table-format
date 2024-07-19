raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
library(tidyverse)
raw_data %>%
  ggplot(aes(x = Age, y = BMI, color = Gender)) +
  geom_point() +
  labs(x = "age",y = "BMI",title = "age vs BMI for both gender")


