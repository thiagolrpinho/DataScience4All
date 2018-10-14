# EXERCISE
# Grouping variables
# We'll continue with the previous exercise by considering the situation of looking at sub-groups in our dataset. For this we'll encounter the invisible group aesthetic.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# A plot that maps cyl onto the col aesthetic is already coded.

# Change col so that factor(cyl) is mapped onto it instead of just cyl.

# Note: In this ggplot command our smooth is calculated for each subgroup because there is an invisible aesthetic, group which inherits from col.

# Complete the second ggplot command.

# Add another stat_smooth() layer with exactly the same attributes (method set to "lm", se to FALSE).

# Add a group aesthetic inside the aes() of this new stat_smooth(), set it to a dummy variable, 1.

# ggplot2 is already loaded

# 1 - Define cyl as a factor variable
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl)) ) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE)
 
# 2 - Plot 1, plus another stat_smooth() containing a nested aes()
ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl)) ) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  stat_smooth(method = "lm", se = FALSE, aes(group = 1) )


#Good job! Notice that we can use multiple aesthetic layers, just like we can use multiple geom layers. Each aesthetic layer can be mapped onto a specific geom.