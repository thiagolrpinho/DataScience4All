# EXERCISE
# Pie Charts
# The coord_polar() function converts a planar x-y Cartesian plot to polar coordinates. This can be useful if you are producing pie charts.

# We can imagine two forms for pie charts - the typical filled circle, or a colored ring.

# As an example, consider the stacked bar chart shown in the viewer. Imagine that we just take the y axis on the left and bend it until it loops back on itself, while expanding the right side as we go along. We'd end up with a pie chart - it's simply a bar chart transformed onto a polar coordinate system.

# Typical pie charts omit all of the non-data ink, which we'll learn about in the next chapter. Pie charts are not really better than stacked bar charts, but we'll come back to this point in the fourth chapter on best practices.

# The mtcars data frame is available, with cyl converted to a factor for you.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a basic stacked bar plot. Since we have univariate data and stat_bin() requires an x aesthetic, we'll have to use a dummy variable. Set x to 1 and map cyl onto fill. Assign the bar plot to wide.bar.
# Add a coord_polar() layer to wide.bar. Set the argument theta to "y". This specifies the axis which would be transformed to polar coordinates.
# Repeat the code for the stacked bar plot, but this time:
# Set the width argument inside the geom_bar() function to 0.1 and
# Use scale_x_continuous() to set the limits argument to c(0.5,1.5)). These two steps will add empty space aroung the bar on the x axis.
# Assign this plot to thin.bar.
# Add a coord_polar() layer to thin.bar, as you did before. There's a ring structure instead of a pie!

# Create a stacked bar plot: wide.bar
wide.bar <- ggplot(mtcars, aes(x = 1, fill = cyl)) +
              geom_bar()

# Convert wide.bar to pie chart
wide.bar +
  coord_polar( theta = "y")

# Create stacked bar plot: thin.bar
thin.bar <- ggplot(mtcars, aes(x = 1, fill = cyl )) +
              geom_bar( width = 0.1) +
              scale_x_continuous(limits = c(0.5, 1.5) )

# Convert thin.bar to "ring" type pie chart
thin.bar + 
  coord_polar(theta = "y")

# Good job! This function is particularly useful if you are dealing with a cycle, like yearly data, that you would like to see represented as such.