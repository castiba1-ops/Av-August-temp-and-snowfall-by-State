# Load my data
data <- read.csv("data.csv")
# Look at my data
View (data)
# Show the variable names
names(data)
# Check for missing information
colSums(is.na(data))
# Check my two variables
summary (data$avg_temp)
summary(data$snowfall)
# Keep my two vartiables
project_data <- data[c("avg_temp", "snowfall")]
# Remove rows missing either value
data_complete <- na.omit(project_data)
# Count the remaing rows
nrow(data_complete)
# Descriptive statistics for my complete data
summary(data_complete)
# Standard deviation for each variable
sd(data_complete$avg_temp)
sd(data_complete$snowfall)
# Graph August temperature and snowfall
plot(snowfall ~ avg_temp,
data = data_complete,
xlab= "Average August temperature",
ylab = "Snowfall",
main = "August Temperature and Snowfall")
# Run the linear regression
model <- lm(snowfall ~ avg_temp, data = data_complete)
# Show the results
summary(model)
# Check residual patterns
plot(model, which = 1)
# Check whether residuals are approximately normal
plot(model, which = 2)