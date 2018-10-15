# EXERCISE
# Legends
# The themes layer also allows you to specify the appearance and location of legends.

# The plot you've coded up to now is available as z. It's also displayed in the viewer. Solve the instructions and compare the resulting plots with the plot you started with.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Add a theme() function to z to change the legend's location. Do this by specifying the legend.position argument to be c(0.85, 0.85). This will make the legend appear in the top right of the plot, inside the third facet.
# Instead of a vertical list of legend entries, you might want to have the different entries next to each other. Starting from z, add a theme() function in which you specify legend.direction to be "horizontal".
# You can also change the locations of legends by name: set legend.position to "bottom".
# Finally, you can remove the legend entirely, by setting legend.position to "none".

# Move legend by position
z +
  theme( legend.position = c(0.85, 0.85) )

# Change direction
z +
  theme( legend.direction = "horizontal" )
  
# Change location by name
z +
  theme( legend.position = "bottom")

# Remove legend entirely
z +
  theme( legend.position = "none" )