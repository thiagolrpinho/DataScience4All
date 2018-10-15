# EXERCISE
# Exploring Data
# In this chapter we're going to continuously build on our plotting functions and understanding to produce a mosaic plot (aka Marimekko plot). This is a visual representation of a contingency table, comparing two categorical variables. Essentially, our question is which groups are over or under represented in our dataset. To visualize this we'll color groups according to their Pearson residuals from a chi-squared test. At the end of it all we'll wrap up our script into a flexible function so that we can look at other variables.

# We'll familiarize ourselves with a small number of variables from the 2009 CHIS adult-response dataset (as opposed to children). We have selected the following variables to explore:

# RBMI: BMI Category description
# BMI_P: BMI value
# RACEHPR2: race
# SRSEX: sex
# SRAGE_P: age
# MARIT2: Marital status
# AB1: General Health Condition
# ASTCUR: Current Asthma Status
# AB51: Type I or Type II Diabetes
# POVLL: Poverty level
# We'll filter our dataset to plot a more reliable subset (we'll still retain over 95% of the data).

# Before we get into mosaic plots it's worthwhile exploring the dataset using simple distribution plots - i.e. histograms.

# ggplot2 is already loaded and the dataset, named adult, is already available in the workspace.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use the typical commands for exploring the structure of adult to get familiar with the variables: summary() and str().
# As a first exploration of the data, plot two histograms using ggplot2 syntax: one for age (SRAGE_P) and one for BMI (BMI_P). The goal is to explore the dataset and get familiar with the distributions here. Feel free to explore different bin widths. We'll ask some questions about these in the next exercises.
# Next plot a binned-distribution of age, filling each bar according to the BMI categorization. Inside geom_histogram(), set binwidth = 1. You'll want to use fill = factor(RBMI) since RBMI is a categorical variable.


# Explore the dataset with summary and str
summary(adult)
str(adult)


# Age histogram
ggplot(adult, aes(x = SRAGE_P) ) +
geom_histogram()


# BMI value histogram
ggplot(adult, aes(x = BMI_P) ) +
geom_histogram()


# Age colored by BMI, binwidth = 1
ggplot(adult, aes(x = SRAGE_P, fill = factor(RBMI) ) ) +
geom_histogram(binwidth = 1)