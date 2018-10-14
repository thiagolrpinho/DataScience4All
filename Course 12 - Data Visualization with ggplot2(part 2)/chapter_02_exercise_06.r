# EXERCISE
# Dropping levels
# When you have a categorical variable with many levels which are not all present in each sub-group of another variable, it may be desirable to drop the unused levels. As an example let's return to the mammalian sleep dataset, mamsleep. It is available in your workspace.

# The variables of interest here are name, which contains the full popular name of each animal, and vore, the eating behavior. Each animal can only be classified under one eating habit, so if we facet according to vore, we don't need to repeat the full list in each sub-plot.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# A basic plot, object p, is defined for you. time is mapped onto the x, name onto the y and sleep onto the col aesthetics.
# To see the plot execute p.
# Facet p by rows according to vore. If you look at the resulting plot, you'll notice that there are a lot of lines where no data is available.
# Extend facet_grid with scale = "free_y" and space = "free_y" to leave out rows for which there is no data.

# Basic scatter plot
p <- ggplot(mamsleep, aes(x = time, y = name, col = sleep)) +
  geom_point()
  
# Execute to display plot
p

# Facet rows accoding to vore
p +
  facet_grid(vore ~ .)

# Specify scale and space arguments to free up rows
p +
  facet_grid(vore ~ ., space= "free_y", scale = "free_y")
