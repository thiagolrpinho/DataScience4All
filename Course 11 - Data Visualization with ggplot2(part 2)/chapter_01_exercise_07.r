# EXERCISE
# Preparations
# Here we'll look at stat_summary() in action. We'll build up various plots one-by-one.

# In this exercise we'll consider the preparations. That means we'll make sure the data is in the right format and that all the positions that we might use in our plots are defined. Lastly, we'll set the base layer for our plot. ggplot2 is already loaded, so you can get started straight away!

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Explore the structure of the mtcars dataset by executing str(mtcars).
# In mtcars, cyl and am are classified as continuous, but they are actually categorical. Previously we just used factor(), but here we'll modify the actual dataset. Change cyl and am to be categorical in the mtcars data frame using as.factor.
# Next we'll set three position objects with convenient names. This allows us to use the exact positions on multiple layers. Create:
# posn.d, using position_dodge() with a width of 0.1,
# posn.jd, using position_jitterdodge() with a jitter.width of 0.1 and a dodge.width of 0.2
# posn.j, using position_jitter() with a width of 0.2.
# Finally, we'll make our base layers and store it in the object wt.cyl.am. Make the base call for ggplot mapping cyl to the x, wt to y, am to both col and fill. Also set group = am inside aes(). The reason for these redundancies will become clear later on.

# Display structure of mtcars
str(mtcars)

# Convert cyl and am to factors
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$am <- as.factor(mtcars$am)

# Define positions
posn.d <-position_dodge(width = 0.1)
posn.jd <- position_jitterdodge(jitter.width = 0.1, dodge.width = 0.2)
posn.j <- position_jitter(width = 0.2)

# Base layers
wt.cyl.am <- ggplot( mtcars,aes(x = cyl, y = wt, col = am, fill = am, group = am) ) +
geom_point()

#Perfect positioning! Although you can set position using e.g. position = "dodge", defining objects promotes consistency between layers.