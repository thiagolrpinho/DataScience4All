# EXERCISE
# Modifying stat_smooth (2)
# In this exercise we'll take a look at a more subtle example of defining and using linear models. ggplot2 and the Vocab data frame are already loaded for you.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Plot 1: This code produces a jittered plot of vocabulary against education, variables from the Vocab data frame.

# Add a stat_smooth() layer with method set to "lm". Hide the CI ribbons by using se = FALSE.
# Plot 2: Color by year.

# Specify the col = year aesthetic to the nested ggplot(aes()) function.
# To see why this works, try using only col = year, and adding points.
# Plot 3: Linear model for each year.

# We need to specify year as a factor variable if we want to use it as a grouping variable for our linear models. Add the col = factor(year) aesthetic to the nested ggplot(aes()) function.
# Plot 4: Years are ordered, so use a sequential color palette.

# Add scale_color_brewer().
# Don't add any arguments here. This results in a warning message, since the default palette, "Blues", only has 9 colors. Since we have 16 years, this is not a complete solution!
# Plot 5: To get the proper colors, we can use col = year, because the variable year is type integer and we want a continuous scale. However, we'll need to specify the invisible group aesthetic so that our linear models are still calculated appropriately. The scale layer, scale_color_gradientn(), has been provided for you - this allows us to map a continuous variable onto a colour scale.

# Add group = factor(year) inside aes().
# Inside stat_smooth(), set alpha = 0.6 and size = 2.

# Plot 1: Jittered scatter plot, add a linear model (lm) smooth
ggplot(Vocab, aes(x = education, y = vocabulary)) +
  geom_jitter(alpha = 0.2) +
  stat_smooth( method ="lm", se = FALSE ) # smooth

# Plot 2: points, colored by year
ggplot(Vocab, aes(x = education, y = vocabulary, col = year)) +
  geom_jitter(alpha = 0.2) 

# Plot 3: lm, colored by year
ggplot(Vocab, aes(x = education, y = vocabulary, col = factor(year))) +
  stat_smooth( method = "lm", se = FALSE) # smooth
  
# Plot 4: Set a color brewer palette
ggplot(Vocab, aes(x = education, y = vocabulary, col = factor(year))) +
  stat_smooth( method = "lm", se = FALSE) + # smooth
 scale_color_brewer()  # colors

# Plot 5: Add the group aes, specify alpha and size
ggplot(Vocab, aes(x = education, y = vocabulary, col = year, group = factor(year))) +
  stat_smooth(method = "lm", se = FALSE, alpha = -0.6, size = 2 ) +
  scale_color_gradientn(colors = brewer.pal(9, "YlOrRd"))


# Good job! When mapping onto color you can sometimes treat a continuous scale, like year, as an ordinal variable, but only if it is a regular series. The better alternative is to leave it as a continuous variable and use the group aesthetic as a factor to make sure your plot is drawn correctly.