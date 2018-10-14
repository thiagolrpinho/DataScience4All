# EXERCISE
# Aspect Ratio
# We can set the aspect ratio of a plot with coord_fixed() or coord_equal(). Both use ratio = 1 as a default. A 1:1 aspect ratio is most appropriate when two continuous variables are on the same scale, as with the iris dataset.

# All variables are measured in centimeters, so it only makes sense that one unit on the plot should be the same physical distance on each axis. This gives a more truthful depiction of the relationship between the two variables since the aspect ratio can change the angle of our smoothing line. This would give an erroneous impression of the data.

# Of course the underlying linear models don't change, but our perception can be influenced by the angle drawn.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Complete the basic scatter plot function using the iris data frame to plot Sepal.Width onto the y aesthetic, Sepal.Length onto the x and Species onto col. You should understand all the other functions used in this plot call by now. This is saved in an object called base.plot.
# Write base.plot on a new line to print it out. Examine it: the plot is drawn to the dimensions of the graphics device.
# Add a coord_equal() layer to force a 1:1 aspect ratio.

# Complete basic scatter plot function
base.plot <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
               geom_jitter() +
               geom_smooth(method = "lm", se = FALSE)

# Plot base.plot: default aspect ratio
base.plot

# Fix aspect ratio (1:1) of base.plot
base.plot + coord_equal()


# Good job! As a rule of thumb you'll want to use a 1:1 aspect ratio when your axes show the same scales, but there are always exceptions