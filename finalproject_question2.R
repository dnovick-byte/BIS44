##creating summary code
DF %>%
  group_by(neighbourhood) %>%
  summarise(avg_price <- mean(price)) %>%
  print(n=26)


ggplot_shiny(DF)

## You can use the below code to generate the graph.
## Don't forget to replace the 'df' with the name
## of your dataframe

# You need the following package(s):
library("ggplot2")

# The code below will generate the graph:
graph <- ggplot(DF, aes(x = neighbourhood, y = price)) +
  geom_boxplot(notch = FALSE) +
  theme_bw()
graph

# If you want the plot to be interactive,
# you need the following package(s):
library("plotly")
ggplotly(graph)

# If you would like to save your graph, you can use:
ggsave('my_graph.pdf', graph, width = 14, height = 14, units = 'cm')

