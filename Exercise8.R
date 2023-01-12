#BIS44 Exercise 8: Cleaning Data in R, Part 2

#Part 1. Setup
##Package installation
if(!require("dplyr")) install.packages("dplyr")
if(!require("nycflights13")) install.packages("nycflights13")
if(!require("ggplot2")) install.packages("ggplot2")

##Load the packages into R environment
library(dplyr)
library(nycflights13)
library(ggplot2)

##Inspect msleep data below
?msleep
View(msleep)

##Create local copies of package data
df_flights <- flights
df_msleep <- msleep


#Part 2. Pipes
##Pipe Example1
x <- 4
sqrt(x)       #without pipe
x %>% sqrt()  #with pipe. These two lines do the same thing

##Pipe Example 2
example2_1 <- filter(flights, dest == "MSY")    #without pipe
example2_2 <- flights %>% 
  filter(dest == "MSY")                         #with pipe

##Pipe Example 3
example3 <- flights %>% 
  filter(dest == "MSY") %>%
  mutate(air_hours = air_time / 60)
View(example3)

##Chain of dplyr functions without pipes
df_flights1 <- select(df_flights, carrier:distance)
df_flights2 <- filter(df_flights1, distance > 4000)
df_flights3 <- arrange(df_flights2, desc(air_time))

##Fill in the parentheses below
df_flights_piped <- df_flights %>%
  select(carrier:distance) %>%
  filter(distance > 4000) %>%
  arrange(desc(air_time))

##Check the results
View(df_flights3)
View(df_flights_piped)


#Part 3. Grouped summary using group_by() and summarise()
##Summarise example
df_flights %>%
  summarise(count = n(), avg_airtime = mean(air_time))
df_flights %>%
  summarise(count = n(), avg_airtime = mean(air_time, na.rm = TRUE))

##Grouped summarise example
df_flights %>%
  group_by(origin) %>%
  summarise(count = n(), avg_airtime = mean(air_time, na.rm = TRUE))

##Try grouped summary yourself
df_flights %>%
  group_by(carrier) %>%
  summarise(count = n(), avg_airtime = mean(air_time, na.rm = TRUE))



#Part 4. Data Cleaning and Wrangling
##Fill in the parentheses below
df_msleep %>%
  select(name, vore, sleep_total) %>%
  filter(!is.na(vore)) %>%
  group_by(vore) %>%
  summarise(avg_sleep = mean(sleep_total),)

