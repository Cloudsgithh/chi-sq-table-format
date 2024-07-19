raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (2).csv")
View(raw_data)
str(raw_data)
library(tidyverse)
raw_data %>%
filter(Gender == "female") %>%  
  ggplot(aes(x = Age, y = BMI)) +
  geom_point(col = "#D4602A") +
  labs(x = "Age",y = "BMI",title = "Age vs BMI scattarplot of female")

raw_data %>%
filter(Gender == "male") %>%  
  ggplot(aes(x = Age, y = BMI)) +
  geom_point(col = "#875FEA") +
  labs(x = "Age",y = "BMI", title = "Age vs BMI scattarplot of male")

raw_data %>%
  filter(NObeyesdad == "normal_weight") %>% 
  ggplot(aes(x = Height, y = Weight)) +
  geom_point(col = "#117E4B") +
  labs(x = "height",y = "weight", title = "scatterplot of normal weight")

