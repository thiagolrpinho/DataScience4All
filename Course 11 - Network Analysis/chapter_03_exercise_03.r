# Random graphs
# Generating random graphs is an important method for investigating how likely or unlikely other network metrics are likely to occur given certain properties of the original graph. The simplest random graph is one that has the same number of vertices as your original graph and approximately the same density as the original graph. Here you will create one random graph that is based on the original Forrest Gump Network.

# INSTRUCTIONS
# 100 XP
# Generate a random graph using the function erdos.renyi.game(). The first argument n should be the number of nodes of the graph g which can be calculated using gorder(), the second argument p.or.m should be the density of the graph g which you previously stored as the object gd. The final argument is set as type='gnp' to tell the function that you are using the density of the graph to generate a random graph. Store this new graph as the vector g.random.
# Get the density of the random graph g.random. You will notice if you generate a random graph a few times that this value will slightly vary but be approximately equal to the density of your original graph g from the previous exercise stored in the object gd.
# Calculate the average path length of the random graph g.random.

library(igraph)

# Create one random graph with the same number of nodes and edges as g
g.random <- erdos.renyi.game(n = gorder(g), p.or.m = gd, type = "gnp")

g.random

plot(g.random)

# Get density of new random graph `g.random`
edge_density(g.random)

#Get the average path length of the random graph g.random
mean_distance(g.random, directed = FALSE)
