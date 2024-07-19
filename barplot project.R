raw_data = read.csv("C:\\Users\\Dell\\Downloads\\ObesityDataSet_cleaned_and_data_sinthetic (1).csv")
View(raw_data)
library(tidyverse)
raw_data %>%
drop_na(CALC) %>%  
  ggplot(aes(x = CALC)) +
  geom_bar(fill = "#81EED4", color = "black",linewidth = 1) +
  labs(x = "CALC", y = "frequency",title = "barplot of CALC")

raw_data %>%
drop_na(MTRANS) %>%  
  ggplot(aes(x = MTRANS)) +
  geom_bar(fill = "#945BF0", color = "black", linewidth = 1) +
  labs(x = "MTRANS",y = "frequency", title = "barplot of transportation used")

raw_data %>%
drop_na(NObeyesdad) %>%  
  ggplot(aes(x = NObeyesdad)) +
  geom_bar(fill = "#E32D93", color = "black",linewidth = 1) +
  labs(x = "NObeyesdad",y = "frequency", title = "barplot of type of obesity")
