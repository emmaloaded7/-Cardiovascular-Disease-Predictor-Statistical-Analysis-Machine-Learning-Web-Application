# Loading the Csv file into R
dataset <- read.csv(file.choose())

# Number of Observations and Columns in the dataset
dim(dataset)

# Checking variables
names(dataset)

# Checking data type of variables
str(dataset)

# First 6 Observations
head(dataset)

# last 6 Observations
tail(dataset)

# Descriptive analysis of the dataset
summary(dataset)

# Converting numeric variables to a categorical variable
dataset$gender <- as.factor(dataset$gender)

dataset$chestpain <- as.factor(dataset$chestpain)

dataset$fastingbloodsugar <- as.factor(dataset$fastingbloodsugar)

dataset$restingrelectro <- as.factor(dataset$restingrelectro)

dataset$exerciseangia <- as.factor(dataset$exerciseangia)

dataset$slope <- as.factor(dataset$slope)

dataset$noofmajorvessels <- as.factor(dataset$noofmajorvessels)

dataset$target <- as.factor(dataset$target)

# Confirmation if catogorical dataset have been converted
summary(dataset)

# Group of the dependent variable
table(dataset$target)

# Box plot of Age vs Target
boxplot(age ~ target,
        data = dataset,
        xlab = "Target",
        ylab = "Age",
        main = "Age by Target")

# Box plot of Gender vs Target
barplot(table(dataset$gender, dataset$target),
        beside = TRUE,
        legend = TRUE,
        xlab = "Gender",
        ylab = "Count",
        main = "Gender vs Target")

# Preprocessing of correlation analysis excluding non numeric data 
numeric_data <- dataset[sapply(dataset, is.numeric)]

# Correlation analysis
correlation <- cor(numeric_data)
print(correlation)

# Library for visual correlation analysis plot
library(corrplot)

# Correlation analysis visulaization
corrplot(correlation, method="color",
         type = "upper",
         addCoef.col = "black",
         number.cex = 0.7,
         tl.cex = 0.8,
         tl.srt = 45)

# Logistic Regression Model
model <- glm(target ~ age + gender + chestpain + restingBP +
                       serumcholestrol + fastingbloodsugar +
                       restingrelectro + maxheartrate +
                       exerciseangia + oldpeak + slope +
                       noofmajorvessels, 
              data = dataset, 
              family = "binomial")

summary(model)
# P-value summary of logistic regression model:
  
#  Significant predictors (p < 0.05):
  
#  - gender1: p = 5.24e-07 ***
#  Significant association with the target outcome.

# - chestpain1: p = 0.0375 *
#  Significant association with the target outcome.

# - chestpain2: p = 2.10e-05 ***
#  Significant association with the target outcome.

# - restingBP: p = 8.43e-07 ***
#  Significant association with the target outcome.

# - fastingbloodsugar1: p = 0.0347 *
#  Significant association with the target outcome.

# - restingrelectro2: p = 5.51e-05 ***
#  Significant association with the target outcome.

# - maxheartrate: p = 0.0183 *
#  Significant association with the target outcome.

# - oldpeak: p = 5.28e-08 ***
#  Significant association with the target outcome.


# Non-significant predictors (p > 0.05):
  
  - age: p = 0.7503
- chestpain3: p = 0.0974
- serumcholestrol: p = 0.8481
- restingrelectro1: p = 0.4923
- exerciseangia1: p = 0.8155
- slope1: p = 0.9905
- slope2: p = 0.9872
- slope3: p = 0.9844
- noofmajorvessels1: p = 0.8913
- noofmajorvessels2: p = 0.2200
- noofmajorvessels3: p = 0.2625

# Significance codes:
#  *** p < 0.001
# **  p < 0.01
# *   p < 0.05
#    p < 0.1

exp(coef(model))

# Odds Ratio Interpretation from Logistic Regression
#
# (Intercept): Baseline odds when all predictors are 0. Usually not clinically meaningful.
#
# Age (OR = 0.996): A 1-year increase in age is associated with about a 0.4% decrease in odds of cardiovascular disease.
#
# Gender1 (OR = 18.88): Gender category 1 has about 18.9 times higher odds of disease compared with the reference gender.
#
# Chestpain1 (OR = 3.20): Chest pain category 1 has about 3.2 times higher odds compared with the reference category.
#
# Chestpain2 (OR = 8.79): Chest pain category 2 has about 8.8 times higher odds compared with the reference category.
#
# Chestpain3 (OR = 12.50): Chest pain category 3 has about 12.5 times higher odds compared with the reference category.
#
# RestingBP (OR = 1.044): Each 1-unit increase in resting blood pressure increases odds by about 4.4%.
#
# Serumcholestrol (OR = 1.0003): Each 1-unit increase in cholesterol has a very small increase in odds (0.03%).
#
# Fastingbloodsugar1 (OR = 2.86): Category 1 has about 2.9 times higher odds compared with the reference group.
#
# Restingrelectro1 (OR = 1.36): Category 1 has about 36% higher odds compared with the reference group.
#
# Restingrelectro2 (OR = 31.75): Category 2 has about 31.8 times higher odds compared with the reference group.
#
# Maxheartrate (OR = 1.015): Each unit increase increases odds by about 1.5%.
#
# Exerciseangia1 (OR = 0.905): Category 1 has about 9.5% lower odds compared with the reference group.
#
# Oldpeak (OR = 0.302): A 1-unit increase reduces odds by about 70%.
#
# Slope1, Slope2, Slope3: Extremely large odds ratios. This suggests possible separation or unstable estimates caused by small category counts.
#
# Noofmajorvessels1 (OR = 1.08): About 8% higher odds compared with the reference category.
#
# Noofmajorvessels2 (OR = 1.95): About 95% higher odds compared with the reference category.
#
# Noofmajorvessels3 (OR = 0.354): About 65% lower odds compared with the reference category.
#
# Check for separation:

table(dataset$slope, dataset$target)
table(dataset$noofmajorvessels, dataset$target)

# Check for model performance

AIC(model)
# 203.96
