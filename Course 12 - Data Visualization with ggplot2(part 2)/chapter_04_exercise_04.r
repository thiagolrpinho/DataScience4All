# EXERCISE
# Pie Charts (1)
# In this example we're going to consider a typical use of pie charts - a categorical variable as the proportion of another categorical variable. For example, the proportion of each transmission type am, in each cylinder, cyl class.

# The first plotting function in the editor should be familiar to you by now. It's a straightforward bar chart with position = "fill", as shown in the viewer. This is already a good solution to the problem at hand! Let's take it one step further and convert this plot in a pie chart.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Adapt the code for the bar chart in the editor to turn it into a good looking pie chart:

# Transform the bar plot into a facetted plot: add a facet_grid() call to split columns by cyl. Remember to use formula notation here ROW ~ COL.

# For the moment, each facet will only have one category because cyl is also mapped onto x. Use a dummy aesthetic for the x. Change the aes() function such that factor(1) maps onto x.

# Add a coord_polar() call where you specify the theta to "y".

# This is already pretty good, but to remove all non-data ink add a theme_void() layer. (This is the first time we've seen this theme, but you should be familiar with themes already).

# There's a small hole in the center of the pies. Inside geom_bar() set width = 1 so that the bars fill up the entire width resulting in a full pie chart.

# Bar chart
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "fill")

# Convert bar chart to pie chart
ggplot(mtcars, aes(x = factor(1), fill = am)) +
  geom_bar(position = "fill") +
  facet_grid(. ~ cyl) + # Facets
  coord_polar(theta = "y") + # Coordinates
  theme_void() + # theme
  geom_bar(width = 1)
  