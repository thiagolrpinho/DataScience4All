# EXERCISE
# Exploring ggthemes
# There are many themes available by default in ggplot2: theme_bw(), theme_classic(), theme_gray(), etc. In the previous exercise, you saw that you can apply these themes to all following plots, with theme_set():

# theme_set(theme_bw())
# But you can also apply them on an individual plot, with:

# ... + theme_bw()
# You can also extend these themes with your own modifications. In this exercise, you'll experiment with this and use some preset templates available from the ggthemes package. The workspace already contains the same basic plot from before under the name z2.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a custom theme, assigning it to custom_theme.
# Call theme_tufte() with no arguments.
# Add a call to theme() as follows.
# Set legend.position to c(0.9, 0.9).
# Set legend.title to an "italic" text of size 12. Use element_text(face = ___, size = ___).
# Set axis.title to a "bold" text of size 14. Use element_text(face = ___, size = ___).
# Plot z2 with the customized theme. (You don't need parentheses.)
# Make custom_theme the default by calling theme_set().
# Plot z2 again.

# Original plot
z2

# Load ggthemes
library(ggthemes)

# Apply theme_tufte(), plot additional modifications
custom_theme <- theme_tufte() +
  theme(legend.position = c(0.9, 0.9 ),
        legend.title = element_text(face = "italic", size = 12),
        axis.title = element_text(face = "bold", size = 14))

# Draw the customized plot
z2 + custom_theme
 
# Use theme set to set custom theme as default
theme_set(custom_theme)

# Plot z2 again
z2

