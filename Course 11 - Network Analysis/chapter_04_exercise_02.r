# EXERCISE
# Using randomizations to assess assortativity
# In this exercise you will determine how likely the observed assortativity in the friendship network is given the genders of vertices by performing a randomization procedure. You will randomly permute the gender of vertices in the network 1000 times and recalculate the assortativity for each random network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use assortativity() to calculate the assortativity of the graph object g1 based on gender using the object values calculated in the previous exercise, and assign this to the object observed.assortativity.
# Inside the for loop calculate the assortativity of the network g1 using assortativity() while randomly permuting the object values each time with sample().
# Plot the distribution of assortativity values from this permutation procedure using hist() and add a red vertical line for the original g1 network observed assortativity value that is stored in observed.assortativity.


# Calculate the observed assortativity
observed.assortativity <- assortativity(g1, values)

# Calculate the assortativity of the network randomizing the gender attribute 1000 times
results <- vector('list', 1000)
for(i in 1:1000){
  results[[i]] <- assortativity(g1, sample(values))
}

# Plot the distribution of assortativity values and add a red vertical line at the original observed value
hist(unlist(results))
abline(v = observed.assortativity, col = "red", lty = 3, lwd=2)

