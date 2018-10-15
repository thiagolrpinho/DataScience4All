
# Positions
# The different rectangles of your plot have spacing between them. There's spacing between the facets, between the axis labels and the plot rectangle, between the plot rectangle and the entire panel background, etc. Let's experiment!

# The last plot you created in the previous exercise, without a legend, is available as z.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Suppose you want to have more spacing between the different facets. You can control this by specifying panel.spacing.x inside a theme() function you add to z. For the argument value, you should pass a unit object. To achieve this, load the grid package with library(). Next, set panel.spacing.x to unit(2, "cm").
# Copy, adapt and paste the plot command for the previous instruction: to adjust the plot margin, set plot.margin to unit(c(1,2,1,1), "cm") (spacing for top, right, bottom, and left margins).

# Increase spacing between facets
library(grid)
z + theme(panel.spacing.x = unit(2,"cm") )


# Adjust the plot margin
z + theme(panel.spacing.x = unit(2,"cm"), plot.margin = unit(c(1,2,1,1), "cm") )


#Great! Removing excess plot margin space caused the titles to fall off the plot. It's typically a bit of trial and error with spacing in plots. Just experiment until you get it right!