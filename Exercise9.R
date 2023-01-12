#BIS44 Exercise 9: Analyzing Data in R

#Part 1. Setup and data inspection
##Package installation
if(!require("dplyr")) install.packages("dplyr")
if(!require("psych")) install.packages("psych")

##Load the packages into R environment
library(dplyr)
library(psych)

##import csv from your working directory
df_insu <- read.csv("insurance.csv")

##Inspect df_insu data frame
View(df_insu)
str(df_insu)
summary(df_insu)
describe(df_insu)

#Part 2. Frequency table and group comparisons
##Frequency table with one variable
table(df_insu$region)

##Frequency table with two variables- fill in parentheses
table( df_insu$region, df_insu$sex)

##Group comparison with dplyr functions- fill in parentheses
df_insu %>%
  group_by(smoker) %>%
  summarise(avg_charges = mean(charges) )

##Boxplot
boxplot(charges ~ smoker, data = df_insu)


#Part 3. Scatterplots and correlations
##scatterplot with plot()
plot(charges ~ age, data = df_insu)

##Try plot() yourself
plot(charges ~ age,  data = df_insu)

##Selecting numeric variables
df_insu_num <- select(df_insu, age, bmi, children, charges)

##Correlation matrix with cor()
cor(df_insu_num, use = "complete")



