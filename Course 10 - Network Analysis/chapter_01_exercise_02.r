# EXERCISE
# Counting vertices and edges
# A lot of basic information about a network can be extracted from an igraph object. In this exercise you will learn how to count the vertices and edges from a network by applying several functions to the graph object g.

# Each row of the friends dataframe represents an edge in the network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use V() and E() to view the vertices and edges respectively of the network.
# Use gsize() to count the number of edges in a network.
# Use gorder() to count the number of vertices in a network.
# Take Hint (-30 XP)

# Load igraph
library(igraph)

# Subset vertices and edges
V(g)
E(g)

# Count number of edges
gsize(g)

# Count number of vertices
gorder(g)

