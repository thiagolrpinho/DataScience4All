# EXERCISE
# Quantiles
# The previous example used the Vocab dataset and applied linear models describing vocabulary by education for different years. Here we'll continue with that example by using stat_quantile() to apply a quantile regression (method rq).

# By default, the 1st, 2nd (i.e. median), and 3rd quartiles are modeled as a response to the predictor variable, in this case education. Specific quantiles can be specified with the quantiles argument.

# If you want to specify many quantile and color according to year, then things get too busy. We'll explore ways of dealing with this in the next chapter.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# The code from the previous exercise, with the linear model and a suitable color palette, is already shown.

# Update the plotting code.
# Change the stat function from stat_smooth() to stat_quantile().
# Get rid of all the arguments except alpha and size.
# The resulting plot will be a mess, because there are three quartiles drawn by default.
# Copy the code for the previous instruction.
# Set the quantiles argument to 0.5 so that only the median is shown.

## Use stat_quantile instead of stat_smooth
ggplot(Vocab, aes(x = education, y = vocabulary, col = year, group = factor(year))) +
  stat_quantile(alpha = 0.6, size = 2) +
  scale_color_gradientn(colors = brewer.pal(9,"YlOrRd"))

# Set quantile to 0.5
ggplot(Vocab, aes(x = education, y = vocabulary, col = year, group = factor(year))) +
  stat_quantile(alpha = 0.6, size = 2, quantiles = 0.5) +
  scale_color_gradientn(colors = brewer.pal(9,"YlOrRd"))

#Quick quantiles! Quantile regression is a great tool for getting a more detailed overview of a large dataset.