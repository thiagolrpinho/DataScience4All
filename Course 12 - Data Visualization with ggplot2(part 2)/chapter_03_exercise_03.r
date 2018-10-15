# EXERCISE
# Text
# Next we can make the text on your plot prettier and easier to spot. You can do this through the element_text() function and by passing the appropriate arguments inside the theme() function.

# As before, the plot you've created in the previous exercise is available as z. The plot you should end up with after successfully completing this exercises is shown in the viewer.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Starting from z, add a theme() function to:

# Change the appearance of the strip text, that is the text in the facet strips. Specify strip.text with element_text(). The size of the text should be 16, the color should be myRed, a color that is predefined for you.
# Change the axis titles. Specify both axes with the axis.title argument and use element_text() to set the parameters: color = myRed, hjust = 0 (to put the text in the bottom left corner) and face = "italic".
# Make the axis text black using the axis.text argument to do so.

# Original plot, color provided
z
myRed

# Extend z with theme() function and 3 args
z +
  theme(strip.text= element_text(size = 16, color =myRed ),
        axis.title = element_text(color = myRed, hjust = 0, face = "italic"),
        axis.text = element_text(color = "black"))