#Create a plot using ‘diamonds’ data and ggplot() function in tidyverse
ggplot(diamonds, aes(carat, price)) +
  geom_point(color= "cornflowerblue", alpha=0.4)
#Save the plot into a pdf file
ggsave("2_1_plot.pdf")

