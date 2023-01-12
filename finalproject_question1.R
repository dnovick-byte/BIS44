## mapping data
ggplot(data = DF,
       mapping = aes(x = number_of_reviews, y = price)) +
  geom_point()

## add a line of best fit.
ggplot(data = DF,
       mapping = aes(x = number_of_reviews, y = price)) +
  geom_point(color = "red",
             alpha = .28,
             size = 1.5) +
  geom_smooth(method = "lm")
cor(DF$number_of_reviews, DF$price)

##
ggplot_shiny(DF)

## Don't forget to replace the 'df' with the name of your dataframe
# You need the following package(s):
lixbrary("ggplot2")

# The code below will generate the graph:
graph <- ggplot(DF, aes(x = number_of_reviews, y = price)) +
  geom_point()+
  geom_smooth(se = FALSE, method = 'lm') +
  theme_bw()
graph

# If you want the plot to be interactive,
# you need the following package(s):
library("plotly")
ggplotly(graph)

# If you would like to save your graph, you can use:
ggsave('my_graph.pdf', graph, width = 14, height = 14, units = 'cm')
