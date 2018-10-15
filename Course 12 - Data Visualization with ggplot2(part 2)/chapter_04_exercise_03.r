# EXERCISE
# Bar Plots (3)
# If it is appropriate to use bar plots (see the video for a discussion!), then it would also be nice to give an impression of the number of values in each group.

# stat_summary() doesn't keep track of the count. stat_sum() does (that's the whole point), but it's difficult to access. In this case, the most straightforward thing to do is calculate exactly what we want to plot beforehand. For this exercise we've created a summary data frame called mtcars.cyl which contains the average (wt.avg), standard deviations (sd) and count (n) of car weights, according to cylinders, cyl. It also contains the proportion (prop) of each cylinder represented in the entire dataset. Use the console to familiarize yourself with the mtcars.cyl data frame.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Establish the base layers. Use the mtcars.cyl dataset and map cyl onto x and wt.avg onto y. Call the resulting ggplot object m.
# Plot 1: Starting from m
# Add a geom_bar() layer
# In this geom_bar(), set the attribute stat to "identity" and the attribute fill to "skyblue".
# Plot 2: geom_col() is a shortcut for geom_bar(stat = "identity"), for when your data already has counts.
# Add a geom_col() layer. This time just specify the fill argument as above. The result should be the same, but here we don't have to specify the stat argument.
# Plot 3: Starting from Plot 2,
# Add the argument width = mtcars.cyl$prop inside the geom_col() layer. mtcars.cyl$prop is a column that represents the proportion of each group.
# Plot 4: Starting from Plot 3,
# Add error bars to create a dynamite plot using geom_errorbar()
# Inside aes() of this geom_errorbar() layer, specify: ymin = wt.avg - sd and ymax = wt.avg + sd.
# Inside geom_errorbar(), but outside its aes(), set the width = 0.1 to control the width of the error bars.

# Base layers
m <- ggplot(mtcars.cyl, aes(x = cyl, y = wt.avg))

# Plot 1: Draw bar plot with geom_bar
m + geom_bar(stat = "identity", fill = "skyblue")

# Plot 2: Draw bar plot with geom_col
m + geom_col(fill = "skyblue")

# Plot 3: geom_col with variable widths.
m + geom_col(width = mtcars.cyl$prop, fill = "skyblue")
 
# Plot 4: Add error bars
m + 
  geom_col(width = mtcars.cyl$prop, fill = "skyblue") +
  geom_errorbar(aes( ymax = wt.avg + sd , ymin = wt.avg), width = 0.1)