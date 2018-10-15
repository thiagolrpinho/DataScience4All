# EXERCISE
# Bar Plots (2)
# In the previous exercise we used the mtcars dataset to draw a dynamite plot about the weight of the cars per cylinder type.

# In this exercise we will add a distinction between transmission type, am, for the dynamite plots.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Update m so that we split the bars according to transmission type, am. Note that for bar plots, we want to change the col as well as the fill.
# Plot 1 is already coded for you, but it is not optimal. Let's fix that in the following instructions.
# Plot 2: copy the code for Plot 1 and set the position to "dodge" - this also doesn't work, because the default dodging is different for the different stat_summary() functions.
# Plot 3: copy the code for Plot 2 and set the position to the object posn.d, which defines a dodge position using position_dodge(0.9).

# Base layers
m <- ggplot(mtcars, aes(x = cyl,y = wt, col = am, fill = am))

# Plot 1: Draw dynamite plot
m +
  stat_summary(fun.y = mean, geom = "bar") +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", width = 0.1)

# Plot 2: Set position dodge in each stat function
m +
  stat_summary(fun.y = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), 
               geom = "errorbar", width = 0.1, position = "dodge")

# Set your dodge posn manually
posn.d <- position_dodge(0.9)

# Plot 3: Redraw dynamite plot
m +
  stat_summary(fun.y = mean, geom = "bar", position = posn.d) +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", width = 0.1, position = posn.d)