# EXERCISE
# Heat Maps Alternatives (2)
# In the videos we saw two methods for depicting overlapping measurements of spread. You can use dodged error bars or you can use overlapping transparent ribbons (shown in the viewer). In this exercise we'll try to recreate the second option, the transparent ribbons.

# The barley dataset is available. You can use str(barley) to refresh its structure before heading over to the instructions.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a plot, similar to the one in the viewer, from scratch by following these steps:

# Base layer: use the barley dataset. Try to come up with the correct mappings for x, y, col, group and fill.
# Add a stat_summary() function for the mean. Specify fun.y to be mean and set geom to "line".
# Add a stat_summary() function for the ribbons. Set fun.data = mean_sdl and fun.args = list(mult = 1) to have a ribbon that spans over one standard deviation in both directions. Use geom = "ribbon" and set col = NA and alpha = 0.1.

# Create overlapping ribbon plot from scratch
ggplot(barley, aes(x = year, y = yield, col = site, group = site, fill = site) ) +
  stat_summary(fun.y = mean, geom = "line") +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "ribbon", col = NA, alpha = 0.1)