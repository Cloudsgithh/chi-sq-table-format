raw_data = read.csv("C:\Users\Dell\Downloads\ObesityDataSet_cleaned_and_data_sinthetic.csv")
View(raw_data)
str(raw_data)
raw_data$family_history_with_overweight = as.factor(raw_data$family_history_with_overweight)
str(raw_data)
summary(raw_data$family_history_with_overweight)
slices = summary(raw_data$family_history_with_overweight)
slices
pie(slices)
