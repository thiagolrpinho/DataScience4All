

# EXERCISE
# EXERCISE
# Scatter plots and jittering (1)
# You already saw a few examples using geom_point() where the result was not a scatter plot. For example, in the plot shown in the viewer a continuous variable, wt, is mapped to the y aesthetic, and a categorical variable, cyl, is mapped to the x aesthetic. This also leads to over-plotting, since the points are arranged on a single x position. You previously dealt with overplotting by setting the position = jitter inside geom_point(). Let's look at some other solutions here.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Beginning with the code for the plot in the viewer (given), make these modifications

# 1 - Use a shortcut geom, geom_jitter(), instead of geom_point().
# 2 - Unfortunately, the width of the jitter is a bit too wide to be useful. Adjust this by setting the argument width = 0.1 inside geom_jitter().
# 3 - Finally, return to geom_point() and set the position argument here to position_jitter(0.1), which will set the jittering width directly inside a points layer.
# Note: For convenience, you could have saved the data and aesthetic layers as a ggplot2 object and re-used it in all solutions. We've made each plot explicit so that you can see all plotting instructions.