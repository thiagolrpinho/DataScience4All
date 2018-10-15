# EXERCISE
# Multiple Histograms
# When we introduced histograms we focused on univariate data, which is exactly what we've been doing here. However, when we want to explore distributions further there is much more we can do. For example, there are density plots, which you'll explore in the next course. For now, we'll look deeper at frequency histograms and begin developing our mosaic plots.

# The adult dataset, which is cleaned up by now, is available in the workspace for you.

# Two layers have been pre-defined for you: BMI_fill is a scale layer which we can add to a ggplot() command using +: ggplot(...) + BMI_fill. fix_strips is a theme() layer to make nice facet titles.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# The histogram from the first exercise of age colored by BMI has been provided. The predefined theme(), fix_strips (see above), has been added to the histogram. Add BMI_fill to this plot using the + operator as well.
# In addition, add the following elements to create a pretty & insightful plot:
# Use facet_grid() to facet the rows according to RBMI (Remember formula notation ROWS ~ COL and use . as a place-holder when not facetting in that direction).
# Add the classic theme using theme_classic().

  # The dataset adult is available

# The color scale used in the plot
BMI_fill <- scale_fill_brewer("BMI Category", palette = "Reds")

# Theme to fix category display in faceted plot
fix_strips <- theme(strip.text.y = element_text(angle = 0, hjust = 0, vjust = 0.1, size = 14),
                    strip.background = element_blank(),
                    legend.position = "none")

# Histogram, add BMI_fill and customizations
ggplot(adult, aes (x = SRAGE_P, fill= factor(RBMI) )) + 
  geom_histogram(binwidth = 1) +
  fix_strips +
  BMI_fill +
  facet_grid(RBMI ~ .)  + 
  theme_classic()