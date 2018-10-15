# EXERCISE
# EXERCISE
# Network density and average path length
# The first graph level metric you will explore is the density of a graph. This is essentially the proportion of all potential edges between vertices that actually exist in the network graph. It is an indicator of how well connected the vertices of the graph are.

# Another measure of how interconnected a network is average path length. This is calculated by determining the mean of the lengths of the shortest paths between all pairs of vertices in the network. The longest path length between any pair of vertices is called the diameter of the network graph. You will calculate the diameter and average path length of the original graph g.

# INSTRUCTIONS
# 100 XP
# Using the function edge_density() calculate the density of the graph gand assign this value to the vector gd.
# Use diameter() to calculate the diameter of the original graph g.
# Assign the average path length of g to g.apl with the function mean_distance().

library(igraph)

# Get density of a graph
gd <- edge_density(g)

# Get the diameter of the graph g
diameter(g, directed = FALSE)

# Get the average path length of the graph g
g.apl <- mean_distance(g, directed = FALSE)
g.apl