# EXERCISE
# Many variables
# Facets are another way of presenting categorical variables. Recall that we saw all the ways of combining variables, both categorical and continuous, in the aesthetics chapter. Sometimes it's possible to overdo it. Here we'll present a plot with 6 variables and see if we can add even more.

# Let's begin by using a trick to map two variables onto two color scales - hue and lightness. We combine cyl and am into a single variable cyl_am. To accommodate this we also make a new color palette with alternating red and blue of increasing darkness. This is saved as myCol. If you are not familiar with these steps, execute the code piece-by-piece.

# INSTRUCTIONS
# 100 XP
# 1 - Beginning with the basic scatter plot:

# Add a col aesthetic for cyl_am inside the existing aes() function.

# Add a scale_color_manual() layer using the vector myCol for the values argument.

# 2 - Copy your scatter plot code from the previous instruction.

# Add a facet_grid() layer, facetting the plot according to gear on rows and vs on columns (0 is a V-engine and 1 is a straight engine).

# Now we have 6 variables in total (4 categorical variables and 2 continuous variables). The plot is still readable, but it's starting to get difficult.

# 3 - Try to add one more variable, using size. Map disp, the displacement volume from each cylinder, onto the size aesthetic inside the existing aes() function.


# Code to create the cyl_am col and myCol vector
mtcars$cyl_am <- paste(mtcars$cyl, mtcars$am, sep = "_")
myCol <- rbind(brewer.pal(9, "Blues")[c(3,6,8)],
               brewer.pal(9, "Reds")[c(3,6,8)])

# Map cyl_am onto col
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl_am)) +
  geom_point() +
  # Add a manual colour scale
  scale_color_manual( values = myCol)

  
# Grid facet on gear vs. vs
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl_am)) +
  geom_point() +
  # Add a manual colour scale
  scale_color_manual( values = myCol) +
  facet_grid(gear ~ vs)




# Also map disp to size
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl_am, size = disp)) +
  geom_point() +
  # Add a manual colour scale
  scale_color_manual( values = myCol) +
  facet_grid(gear ~ vs)


