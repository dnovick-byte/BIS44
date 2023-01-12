##open ggplot
ggplot_shiny(DF)

## Don't forget to replace the 'df' with the name
## of your dataframe

# You need the following package(s):
library("ggplot2")

# The code below will generate the graph:
graph <- ggplot(DF, aes(x = reviews_per_month, y = number_of_reviews)) +
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

cor(DF$reviews_per_month, DF$price)
