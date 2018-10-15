# EXERCISE
# Assortativity
# In this exercise you will determine the assortativity() of the second friendship network from the first chapter. This is a measure of how preferentially attached vertices are to other vertices with identical attributes. You will also determine the degree assortativity which determines how preferentially attached are vertices to other vertices of a similar degree.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Make an exploratory plot of the friendship network object g1 using plot().
# Convert the gender attribute of each vertex to a vector of numbers called values by factorizing and then using as.numeric().
# Calculate the assortativity based on gender by using the function assortativity(). The first argument should be the graph object g1. The second argument are the values.
# Calculate the degree assortativity of the network using assortativity.degree(). The first argument should be the graph object.



# Plot the network
plot(g1)

# Convert the gender attribute into a numeric value
values <- as.numeric(factor(V(g1)$gender))

# Calculate the assortativity of the network based on gender
assortativity(g1, values)

# Calculate the assortativity degree of the network
assortativity.degree(g1, directed = FALSE)

