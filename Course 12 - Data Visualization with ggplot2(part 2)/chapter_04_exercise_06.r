# EXERCISE
# Heat Maps
# In the video you saw reasons for not using heat maps. Nonetheless, you may encounter a case in which you really do want to use one. Luckily, they're fairly straightforward to produce in ggplot2.

# We begin by specifying two categorical variables for the x and y aesthetics. At the intersection of each category we'll draw a box, except here we call it a tile, using the geom_tile() layer. Then we will fill each tile with a continuous variable.

# We'll produce the heat map we saw in the video with the built-in barley dataset. The barley dataset is in the lattice package and has already been loaded for you. Begin by exploring the structure of the data in the console using str().

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Reproduce the heat map shown in the viewer in different steps:

# Define the data and the aesthetics layer. Using the barley dataset, map year onto x, variety onto y and fill according to yield
# Add a geom_tile() to build the heat maps.
# So far the entire dataset is plotted on one heat map. Add a facet_wrap() function to get a facetted plot. Use the formula ~ site (without the dot!) and set ncol = 1. By default, the names of the farms will be above the panels, not to the side (as we get with facet_grid()).
# brewer.pal() from the RColorBrewer package has been used to create a "Reds" color palette. The hexadecimal color codes are stored in the myColors object. Add the scale_fill_gradientn() function and specify the colors argument correctly to give the heat maps a reddish look.

# Create color palette
myColors <- brewer.pal(9, "Reds")

# Build the heat map from scratch
ggplot(barley, aes( x = year, y = variety, fill = yield) ) +
  geom_tile() + # Geom layer
  facet_wrap( ~ site, ncol = 1) + # Facet layer
  scale_fill_gradientn(colors = myColors) # Adjust colors