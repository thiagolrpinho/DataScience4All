# EXERCISE
# Custom Functions
# In the video we saw that the only difference between ggplot2::mean_sdl() and Hmisc::smean.sdl() is the naming convention. In order to use the results of a function directly in ggplot2 we need to ensure that the names of the variables match the aesthetics needed for our respective geoms.

# Here we'll create two new functions in order to create the plot shown in the viewer. One function will measure the full range of the dataset and the other will measure the interquartile range.

# A play vector, xx, has been created for you. Execute

# mean_sdl(xx, mult = 1)
# in the R Console and consider the format of the output. You'll have to produce functions which return similar outputs.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# First, change the arguments ymin and ymax inside the data.frame() call of gg_range().

# ymin should be the minimum of x

# ymax should be the maximum of x

# Use min() and max(). Watch out, naming is important here. gg_range(xx) should now generate the required output.

# Next, change the arguments y, ymin and ymax inside the data.frame() call of med_IQR().

# y should be the median of x

# ymin should be the first quartile

# ymax should be the 3rd quartile.

# You should use median() and quantile(). For example, quantile() can be used as follows to give the first quartile: quantile(x)[2]. med_IQR(xx) should now generate the required output.

# Play vector xx is available

# Function to save range for use in ggplot
gg_range <- function(x) {
  # Change x below to return the instructed values
  data.frame(ymin = min(x), # Min
             ymax = max(x) ) # Max
}

gg_range(xx)
# Required output
#   ymin ymax
# 1    1  100

# Function to Custom function
med_IQR <- function(x) {
  # Change x below to return the instructed values
  data.frame(y = median(x), # Median
             ymin = quantile(x)[2], # 1st quartile
             ymax = quantile(x)[4]
             )  # 3rd quartile
}

med_IQR(xx)
# Required output
#        y  ymin  ymax
# 25% 50.5 25.75 75.25