# EXERCISE
# Creating an igraph object
# Here you will learn how to create an igraph 'object' from data stored in an edgelist. The data are friendships in a group of students. You will also learn how to make a basic visualization of the network.

# Each row of the friends dataframe represents an edge in the network.

# INSTRUCTIONS
# 100 XP
# Inspect the first few rows of the dataframe friends using the function head().
# Create new object friends.mat from the dataframe friends using as.matrix().
# Convert variable to an igraph object g using graph.edgelist().
# Make a basic plot of the network using plot().
# Take Hint (-30 XP)

# Load igraph
library(igraph)

# Inspect the first few rows of the dataframe 'friends'
head(friends)

# Convert friends dataframe to a matrix
friends.mat <- as.matrix(friends)

# Convert friends matrix to an igraph object
g <- graph.edgelist(friends.mat, directed = FALSE)


# Make a very basic plot of the network
plot(g)

