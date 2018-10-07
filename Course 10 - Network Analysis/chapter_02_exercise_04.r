# EXERCISE
# Distances between vertices
# The inter-connectivity of a network can be assessed by examining the number and length of paths between vertices. A path is simply the chain of connections between vertices. The number of intervening edges between two vertices represents the geodesic distance between vertices. Vertices that are connected to each other have a geodesic distance of 1. Those that share a neighbor in common but are not connected to each other have a geodesic distance of 2 and so on. In directed networks, the direction of edges can be taken into account. If two vertices cannot be reached via following directed edges they are given a geodesic distance of infinity. In this exercise you will learn how to find the longest paths between vertices in a network and how to discern those vertices that are within n connections of a given vertex. For disease transmission networks such as the measles dataset this helps you to identify how quickly the disease spreads through the network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Find the length of the longest path in the network using farthest_vertices().
# Identify the sequence of the path using get_diameter(). This demonstrates the individual children that passed the disease the furthest through the network.
# Use ego() to find all vertices that are reachable within 2 connections of vertex 42 and then those that can reach vertex 42 within two connections. The first argument of ego() is the graph object, the second argument is the maximum number of connections between the vertices, the third argument is the vertex of interest, and the fourth argument determines if you are considering connections going out or into the vertex of interest.

library(igraph)

# Which two vertices are the furthest apart in the graph ?
farthest_vertices(g) 

# Shows the path sequence between two furthest apart vertices.
get_diameter(g)  

# Identify vertices that are reachable within two connections from vertex 42
ego(g, 2, '42', mode = c('out'))

# Identify vertices that can reach vertex 42 within two connections
ego(g, 2, '42', mode = c('in'))