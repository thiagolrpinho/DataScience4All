# EXERCISE
# Smoothing
# Welcome to the exercises for the second ggplot2 course!

# To practice on the remaining four layers (statistics, coordinates, facets and themes), we'll continue working on several datasets that we already encountered in the first course.

# The mtcars dataset contains information for 32 cars from Motor Trends magazine from 1973. This dataset is small, intuitive, and contains a variety of continuous and categorical (both nominal and ordinal) variables.

# In the previous course we learned how to effectively use some basic geometries, such as point, bar and line. In the first chapter of this course we'll explore statistics associated with specific geoms, for example, smoothing and lines.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Familiarize yourself again with the mtcars dataset using str().
# Extend the first ggplot call: add a LOESS smooth to the scatter plot (which is the default) with geom_smooth(). We want to have the actual values and the smooth on the same plot.
# Change the previous plot to use an ordinary linear model, by default it will be y ~ x, so you don't have to specify a formula. You should set the method argument to "lm".
# Modify the previous plot to remove the 95% CI ribbon. You should set the se argument to FALSE.
# Modify the previous plot to show only the model, and not the underlying dots.

# ggplot2 is already loaded

# Explore the mtcars data frame with str()
str(mtcars)

# A scatter plot with LOESS smooth
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()


# A scatter plot with an ordinary Least Squares linear model
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth( method = "lm")


# The previous plot, without CI ribbon
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(se = FALSE, method = "lm")


# The previous plot, without points
ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_smooth(se = FALSE, method = "lm")
