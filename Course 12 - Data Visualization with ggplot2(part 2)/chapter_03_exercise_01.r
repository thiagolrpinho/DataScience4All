# EXERCISE
# Rectangles
# To understand all the arguments for the themes, you'll modify an existing plot over the next series of exercises.

# Here you'll focus on the rectangles of the plotting object z that has already been created for you. If you type z in the console, you can check it out. The goal is to turn z into the plot in the viewer. Do this by following the instructions step by step.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Plot 1: In the theme() function added to z, set the plot.background argument to element_rect(fill = myPink). myPink is already available in the workspace for you.
# Plot 2: Expand your code for Plot 1 by adding a border to the plot.background. Do this by adding 2 arguments to the element_rect() function in theme(): color and size. Set them to "black" and 3, respectively.
# Plot 3: we don't want the plot panels and legend to appear as they are in Plot 2. A short cut is to remove all rectangles, as defined in the theme object no_panels, and then draw the one we way in the way we want. Copy your theme() layer from Plot 2 and add it to no_panels.

# Starting point
z

# Plot 1: Change the plot background fill to myPink
z +
  theme(plot.background = element_rect(fill = myPink))

# Plot 2: Adjust the border to be a black line of size 3
z +
   # expanded from plot 1
   theme(plot.background = element_rect(fill = myPink, color = "black", size = 3))

# Theme to remove all rectangles
no_panels <- theme(rect = element_blank())

# Plot 3: Combine custom themes
z +
  no_panels +
     theme(plot.background = element_rect(fill = myPink, color = "black", size = 3))