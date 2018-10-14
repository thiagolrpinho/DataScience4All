# EXERCISE
# Zooming In
# In the video, you saw different ways of using the coordinates layer to zoom in. In this exercise, we'll compare some of the techniques again.

# As usual, you'll be working with the mtcars dataset, which is already cleaned up for you (cyl and am are categorical variables). Also p, a ggplot object you coded in the previous chapter, is already available. Execute p in the console to check it out.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Extend p with a scale_x_continuous() with limits = c(3, 6) and expand = c(0, 0). What do you see?
# Try again, this time with coord_cartesian(): Set the xlim argument equal to c(3, 6). Compare the two plots.

# Basic ggplot() command, coded for you
p <- ggplot(mtcars, aes(x = wt, y = hp, col = am)) + geom_point() + geom_smooth()

# Add scale_x_continuous()
p <- p + scale_x_continuous(limits = c(3,6), expand = c(0,0) )

# Add coord_cartesian(): the proper way to zoom in
p <- p + coord_cartesian( xlim = c(3,6) )
