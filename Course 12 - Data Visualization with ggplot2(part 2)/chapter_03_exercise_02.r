# EXERCISE
# Lines
# To change the appearance of lines use the element_line() function.

# The plot you created in the last exercise, with the fancy pink background, is available as the plotting object z. Your goal is to produce the plot in the viewer - no grid lines, but red axes and tick marks.

# For each of the arguments that specify lines, use element_line() to modify attributes. e.g. element_line(color = "red").

# Remember, to remove a non-data element, use element_blank().

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Starting with object z, add a theme() function to:

# remove the grid lines using the panel.grid argument.
# add red axis lines using the axis.line argument.
# change the tick marks to red using the axis.ticks argument, similar to how you specified axis.line.

# Extend z using theme() function and 3 args
z + theme( panel.grid = element_blank(), axis.line = element_line(color = "red"), axis.ticks = element_line(color="red") )