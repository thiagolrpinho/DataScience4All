# EXERCISE
# Modifying stat_smooth
# In the previous exercise we used se = FALSE in stat_smooth() to remove the 95% Confidence Interval. Here we'll consider another argument, span, used in LOESS smoothing, and we'll take a look at a nice scenario of properly mapping different models.

# ggplot2 is already loaded and several of the linear models we looked at in the two previous exercises are already given.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Plot 1: Recall that LOESS smoothing is a non-parametric form of regression that uses a weighted, sliding-window, average to calculate a line of best fit. We can control the size of this window with the span argument.

# Add span, set it to 0.7.
# Plot 2: In this plot, we set a linear model for the entire dataset as well as each subgroup, defined by cyl. In the second stat_smooth(),

# Set method to "loess" (this is the default with a small (n < 1000) data set, but we will specify it explicitly).
# Add span, set it to 0.7.
# Plot 3: Plot 2 presents a problem because there is a black line on our plot that is not included in the legend. To get this, we need to map something to col as an aesthetic, not just set col as an attribute.

# Add col to the aes() function in the second stat_smooth(), set it to "All". This will name the line properly.
# Remove the col attribute in the second stat_smooth(). Otherwise, it will overwrite the col aesthetic.
# Plot 4: Now we should see our "All" model in the legend, but it's not black anymore.

require(ggplot2)
require(RColorBrewer)

# Add a scale layer: scale_color_manual() with the first argument set to "Cylinders" and values set to the predefined myColors variable.
# Plot 1: change the LOESS span
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  # Add span below
  geom_smooth(se = FALSE, span = 0.7)

# Plot 2: Set the second stat_smooth() to use LOESS with a span of 0.7
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  # Change method and add span below
  stat_smooth(method = "loess", aes(group = 1),
              se = FALSE, col = "black", span = 0.7)

# Plot 3: Set col to "All", inside the aes layer of stat_smooth()
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  stat_smooth(method = "loess",
              # Add col inside aes()
              aes(group = 1, col = "All"),
              # Remove the col argument below
              se = FALSE, span = 0.7)

# Plot 4: Add scale_color_manual to change the colors
myColors <- c(brewer.pal(3, "Dark2"), "black")
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE, span = 0.7) +
  stat_smooth(method = "loess", 
              aes(group = 1, col="All"), 
              se = FALSE, span = 0.7) +
  # Add correct arguments to scale_color_manual
  scale_color_manual( "Cylinders", values = myColors)