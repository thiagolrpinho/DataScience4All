# EXERCISE
# Facets: the basics
# The most straightforward way of using facets is facet_grid(). Here we just need to specify the categorical variable to use on rows and columns using standard R formula notation (rows ~ columns).

# Notice that we can also take advantage of ordinal variables by positioning them in the correct order as columns or rows, as is the case with the number of cylinders. Get some hands-on practice in this exercise; ggplot2 is already loaded for you and mtcars is available. The variables cyl and am are factors. However, this is not necessary for facets; ggplot2 will coerce variables to factors in this case.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Starting from the basic scatter plot, use facet_grid() and the formula notation to facet the plot in three different ways:

# 1 - Rows by am.
# 2 - Columns by cyl.
# 3 - Rows and columns by am and cyl.
# Remember, when faceting in only one direction us . to specify nothing for the unused direction.

# Basic scatter plot
p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# 1 - Separate rows according to transmission type, am
p +
  facet_grid( am ~ .)

# 2 - Separate columns according to cylinders, cyl
p +
  facet_grid(. ~ cyl)

# 3 - Separate by both columns and rows 
p +
  facet_grid(am ~ cyl)
