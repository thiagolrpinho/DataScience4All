# EXERCISE
# Bar Plots (1)
# In the video we saw why "dynamite plots" (bar plots with error bars) are not well suited for their intended purpose of depicting distributions. If you really want error bars on bar plots, you can still get that. However, you'll need to set the positions manually. A point geom will typically serve you much better.

# We saw an example of a dynamite plot earlier in this course. Let's return to that code and make sure you know how to handle it. We'll use the mtcars dataset for examples. The first part of this exercise will just be a refresher, then we'll get into some details.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# To begin with, create the base layers where you map wt on the y axis and cyl on the x axis. cyl and am have already been converted to a factor variable for you. Store these base layers as an object m.
# Draw a dynamite plot filling in the details for the bars in the first stat_summary() function. Set fun.y to mean, geom to "bar" and give the bars a "skyblue" fill. The stat_summary() function that adds error bars is coded for you.

# Base layers
m <- ggplot(mtcars, aes(x = cyl, y = wt))

# Draw dynamite plot
m +
  stat_summary(fun.y = mean, geom = "bar", fill = "skyblue") +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", width = 0.1)

# Good job! Remember, we can specify any function in fun.data or fun.y and we can also specify any geom, as long as it's appropriate to the data type.