# EXERCISE
# Custom Functions (2)
# In the last exercise we created functions that will allow us to plot the so-called five-number summary (the minimum, 1st quartile, median, 3rd quartile, and the maximum). Here, we'll implement that into a unique plot type.

# All the functions and objects from the previous exercise are available including the updated mtcars data frame, the position object posn.d, the base layers wt.cyl.am and the functions med_IQR() and gg_range().

# The plot you'll end up with at the end of this exercise is shown on the right. When using stat_summary() recall that the fun.data argument requires a properly labelled 3-element long vector, which we saw in the previous exercises. The fun.y argument requires only a 1-element long vector.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Complete the given stat_summary() functions, don't change the predefined arguments:

# The first stat_summary() layer should have geom set to "linerange". fun.data argument should be set to med_IQR, the function you used in the previous exercise.
# The second stat_summary() layer also uses the "linerange" geom. This time fun.data should be gg_range, the other function you created. Also set alpha = 0.4.
# For the last stat_summary() layer, use geom = "point". The points should have col "black" and shape "X".


# The base ggplot command; you don't have to change this
wt.cyl.am <- ggplot(mtcars, aes(x = cyl,y = wt, col = am, fill = am, group = am))

# Add three stat_summary calls to wt.cyl.am
wt.cyl.am +
  stat_summary(geom = "linerange", fun.data = med_IQR,
               position = posn.d, size = 3) +
  stat_summary(geom = "linerange", fun.data = gg_range,
               position = posn.d, size = 3,
               alpha = 0.4) +
  stat_summary(geom = "point", fun.y = median,
               position = posn.d, size = 3,
               col = "black", shape = "X")

#Good job! If you are familiar with box plots, you may notice some similarities to our plot. We'll explore box plots in detail in the third course.