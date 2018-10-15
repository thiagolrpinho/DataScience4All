# EXERCISE
# Heat Maps Alternatives (1)
# There are several alternatives to heat maps. The best choice really depends on the data and the story you want to tell with this data. If there is a time component, the most obvious choice is a line plot like what we see in the viewer. Can you come up with the correct commands to create a similar looking plot?

# The barley dataset is already available in the workspace. Feel free to check out its structure before you start!

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# The line plot might be a good alternative:
# Base layer: same dataset, map year onto x, yield onto y and variety onto col as well as onto group!
# Add the appropriate geom for this line plot; no additional arguments are needed.
# Add facetting with the same formula as in the heat map plot, instead of ncol, set nrow to 1.

# The heat map we want to replace
# Don't remove, it's here to help you!
myColors <- brewer.pal(9, "Reds")
ggplot(barley, aes(x = year, y = variety, fill = yield)) +
  geom_tile() +
  facet_wrap( ~ site, ncol = 1) +
  scale_fill_gradientn(colors = myColors)

# Line plot; set the aes, geom and facet
ggplot(barley, aes(x = year, y = yield, group = variety, col = variety)) +
  geom_line() +
  facet_wrap( ~ site, nrow = 1) +
  scale_fill_gradientn(colors = myColors)

