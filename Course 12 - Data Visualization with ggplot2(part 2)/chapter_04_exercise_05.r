# EXERCISE
# Pie Charts (2)
# In the previous example, we looked at one categorical variable (am) as a proportion of another (cyl). Here, we're interested in two or more categorical variables, independent of each other. The many pie charts in the viewer is an unsatisfactory visualization. We're interested in the relationship between all these variables (e.g. where are 8 cylinder cars represented on the Transmission, Gear and Carburetor variables?) Perhaps we also want continuous variables, such as weight. How can we combine all this information?

# The trick is to use a parallel coordinates plot, like this one. Each variable is plotted on its own parallel axis. Individual observations are connected with lines, colored according to a variable of interest. This is a surprisingly useful visualization since we can combine many variables, even if they are on entirely different scales.

# A word of caution though: typically it is very taboo to draw lines in this way. It's the reason why we don't draw lines across levels of a nominal variable - the order, and thus the slope of the line, is meaningless. Parallel plots are a (very useful) exception to the rule!

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# am is variable 9 in the mtcars data frame. Assign this number to group_by_am. The object my_names_am will contain a numeric vector from 1 - 11 excluding the column with am. These will be our parallel axes.
# Fill in the ggparcoord() function.
# The first argument is the data frame you're using. mtcars in our case.
# The second argument is the number of the columns to plot (use my_names_am),
# groupColumn specifies the column number of the grouping variable (use group_by_am)
# alpha, the opacity, should be set to 0.8

# Parallel coordinates plot using GGally
library(GGally)

# All columns except am
group_by_am <- 9
my_names_am <- (1:11)[-group_by_am]

# Basic parallel plot - each variable plotted as a z-score transformation
ggparcoord(mtcars, my_names_am, groupColumn = group_by_am, alpha = 0.8)