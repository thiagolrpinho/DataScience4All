# EXERCISE
# Sum
# Another useful stat function is stat_sum(). This function calculates the total number of overlapping observations and is another good alternative to overplotting.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# ggplot2 is already loaded. A plot showing jittered points is already provided and stored as p.

# Add stat_sum() to this plotting object p. This maps the overall count of each dot onto size. You don't have to set any arguments; the aesthetics will be inherited from the base plot!
# Add the size scale with the generic scale_size() function. Use range to set the minimum and maximum dot sizes as c(1,10).

# Plot 1: Jittering only
p <- ggplot(Vocab, aes(x = education, y = vocabulary)) +
  geom_jitter(alpha = 0.2)

# Plot 2: Add stat_sum
p + stat_sum()
  

# Plot 3: Set size range
p +
  stat_sum() + # sum statistic
  scale_size(range = c(1,10)) # sum statistic

#Good job! Remember, typically we'd draw our models on top of the dots, but in this case we didn't so that we could just keep recycling the p object.