#BIS44 Exercise 10: Visualizing Data in R

#Part 1. Setup
##Package installation
if(!require("ggplot2")) install.packages("ggplot2")
if(!require("ggplotgui")) install.packages("ggplotgui")

##Load the packages into R environment
library(ggplot2)
library(ggplotgui)

##Inspect the data we will use
?mpg
View(mpg)
str(mpg)

##Create a copy as df_mpg
df_mpg <- mpg


#Part 2. Using ggplot2 by hand
##Bar plot: Basic example
ggplot(df_mpg, aes(x = class)) +
  geom_bar()

##Bar plot: Example with more options
ggplot(df_mpg, aes(x = class)) +
  geom_bar(fill = "brown") +
  labs(title = "Distribution of models by class")

##Try bar plot yourself
ggplot(df_mpg, aes(x = drv)) + 
  geom_bar(fill = "gold") +
  labs(title = "Distribution of models by drive train")


#Part 3: Using ggplotgui
##Open ggplot GUI with df_mpg data
ggplot_shiny(df_mpg)

##Copy generated R-code below
graph <- ggplot(df_mpg, aes(x = displ, y = cty, colour = class)) +
  geom_point() +
  labs(x = 'engine displacement', y = 'city mpg') +
  ggtitle('City mpg by displacement')+
  scale_colour_brewer(palette = 'Dark2') +
  theme_grey()
graph


