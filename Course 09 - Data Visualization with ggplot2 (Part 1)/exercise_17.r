# EXERCISE
# All about aesthetics, part 3
# Now that you've got some practice with incrementally building up plots, you can try to do it from scratch! The mtcars dataset is pre-loaded in the workspace.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use ggplot() to create a basic scatter plot. Inside aes(), map wt onto x and mpg onto y. Typically, you would say "mpg described by wt" or "mpg vs wt", but in aes(), it's x first, y second. Use geom_point() to make three scatter plots:

# cyl on size
# cyl on alpha
# cyl on shape
# Try this last variant:

# cyl on label. In order to correctly show the text (i.e. label), use geom_text().

# Map cyl to size
ggplot(mtcars, aes(x = wt, y = mpg, size = cyl) ) +
geom_point()


# Map cyl to alpha
ggplot(mtcars, aes(x = wt, y = mpg, alpha = cyl) ) +
geom_point()



# Map cyl to shape 
ggplot(mtcars, aes(x = wt, y = mpg, shape = cyl) ) +
geom_point()



# Map cyl to label
ggplot(mtcars, aes(x = wt, y = mpg, label = cyl) ) +
geom_point() +
geom_text()


# Nice! Which aesthetic do you think is the clearest for categorical data?