# EXERCISE
# Updating Themes
# Building your themes every time from scratch can become a pain and unnecessarily bloat your scripts. In the following exercises, we'll practice different ways of managing, updating and saving themes.

# A plot object z2 is already created for you on the right. It shows mpg against wt for the mtcars dataset, faceted according to cyl. Also the colors myPink and myRed are available. In the previous exercises you've already customized the rectangles, lines and text on the plot. This theme layer is now separately stored as theme_pink, as shown in the sample code.

# theme_update() updates the default theme used by ggplot2. The arguments for theme_update() are the same as for theme(). When you call theme_update() and assign it to an object (e.g. called old), that object stores the current default theme, and the arguments update the default theme. If you want to restore the previous default theme, you can get it back by using theme_update() again. Let's see how:

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# 1 - "Apply" theme_pink to z2 to carry out all customizations.
# 2 - Instead of applying theme_pink, use theme_update(). This function returns an object that contains the previous theme settings, so that you can restore it later. Assign the output of theme_update() to an object called old.
# 3 - Plot z2 again, after the theme_update() call. The resulting plot has the same appearance as the previous one - but now you don't need to call theme() explictly.
# 4 - Restore the old theme using theme_set(old) and plot z2 again. It's back to the original default theme.

# Original plot
z2 

# Theme layer saved as an object, theme_pink
theme_pink <- theme(panel.background = element_blank(),
                    legend.key = element_blank(),
                    legend.background = element_blank(),
                    strip.background = element_blank(),
                    plot.background = element_rect(fill = myPink, color = "black", size = 3),
                    panel.grid = element_blank(),
                    axis.line = element_line(color = "red"),
                    axis.ticks = element_line(color = "red"),
                    strip.text = element_text(size = 16, color = myRed),
                    axis.title.y = element_text(color = myRed, hjust = 0, face = "italic"),
                    axis.title.x = element_text(color = myRed, hjust = 0, face = "italic"),
                    axis.text = element_text(color = "black"),
                    legend.position = "none")
  
# 1 - Apply theme_pink to z2
z2 +
  theme_pink

# 2 - Update the default theme, and at the same time
# assign the old theme to the object old.
old <- theme_update(panel.background = element_blank(),
             legend.key = element_blank(),
             legend.background = element_blank(),
             strip.background = element_blank(),
             plot.background = element_rect(fill = myPink, color = "black", size = 3),
             panel.grid = element_blank(),
             axis.line = element_line(color = "red"),
             axis.ticks = element_line(color = "red"),
             strip.text = element_text(size = 16, color = myRed),
             axis.title.y = element_text(color = myRed, hjust = 0, face = "italic"),
             axis.title.x = element_text(color = myRed, hjust = 0, face = "italic"),
             axis.text = element_text(color = "black"),
             legend.position = "none")

# 3 - Display the plot z2 - new default theme used
z2

# 4 - Restore the old default theme
theme_set(old)

# Display the plot z2 - old theme restored
z2
