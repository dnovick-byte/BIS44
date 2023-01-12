#BIS44 Exercise 7: Cleaning Data in R, Part 1

#Part 1. Setup
##Package installation
if(!require("dplyr")) install.packages("dplyr")
if(!require("nycflights13")) install.packages("nycflights13")

##Load the packages into R environment with library() below
library("dplyr")
library("nycflights13")


#Part 2. Inspecting original data
##Read the documentation
?flights

##View the full dataset
View(flights)

##Get a glimpse with summary functions
str(flights)
summary(flights)


#Part 3. Subsetting and rearrangement
##Create a copy of flights
df_flights <- flights

##Example: filter()
df_jan1 <- filter(df_flights, month == 1 & day == 1)
View(df_jan1)

##Try filter() yourself
df_dec1 <- filter(df_flights, month == 12 & day == 1)
View(df_dec1)

##Example: arrange()
df_sort1 <- arrange(df_flights, dep_delay)
View(df_sort1)

##Try arrange() yourself
df_sort2 <- arrange(df_flights, desc(arr_delay))
View(df_sort2)


##Example: select()
df_partial1 <- select(df_flights, carrier, flight, tailnum)
View(df_partial1)

##Try select() yourself
df_partial2 <- select(df_flights, flight:minute)
View(df_partial2)


#Part 4. Creating new variables
##Example: mutate()
df_newvars1 <- mutate(df_flights, gains = dep_delay - arr_delay)
View(df_newvars1)

##Try mutate() yourself
df_newvars2 <- mutate(df_flights, air_hours = air_time / 60)
View(df_newvars2)


