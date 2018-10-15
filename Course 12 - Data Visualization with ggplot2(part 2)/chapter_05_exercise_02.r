# EXERCISE
# Data Cleaning
# Now that we have an idea about our data, let's clean it up.

# INSTRUCTIONS
# 100 XP
# You should have noticed in the age distribution that there is an unusual spike of individuals at 85, which seems like an artifact of data collection and storage. Solve this by only keeping observations for which adult$SRAGE_P is smaller than or equal to 84.
# There is a long positive tail on the BMIs that we'd like to remove. Only keep observations for which adult$BMI_P is larger than or equal to 16 and adult$BMI_P is strictly smaller than 52.
# We'll focus on the relationship between the BMI score (& category), age and race. To make plotting easier later on, we'll change the labels in the dataset. Define adult$RACEHPR2 as a factor with labels c("Latino", "Asian", "African American", "White"). Do the same for adult$RBMI, using the labels c("Under-weight", "Normal-weight", "Over-weight", "Obese")

# Keep adults younger than or equal to 84
adult <- adult[adult$SRAGE_P <= 84, ] 

# Keep adults with BMI at least 16 and less than 52
adult <- adult[adult$BMI_P >= 16 & adult$BMI_P < 52, ]

# Relabel the race variable
adult$RACEHPR2 <- factor(adult$RACEHPR2, labels = c("Latino", "Asian", "African American", "White") )

# Relabel the BMI categories variable
adult$RBMI <- factor(adult$RBMI, labels = c("Under-weight", "Normal-weight", "Over-weight", "Obese"))