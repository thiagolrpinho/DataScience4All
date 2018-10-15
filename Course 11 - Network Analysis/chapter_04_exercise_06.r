# EXERCISE
# Interactive networks with threejs
# In this course you have exclusively used igraph to make basic static network plots. There are many packages available to make network plots. One very useful one is threejs which allows you to make interactive network visualizations. This package also integrates seamlessly with igraph. In this exercise you will make a basic interactive network plot of the karate club network using the threejs package. Once you have produced the visualization be sure to move the network around with your mouse. You should be able to scroll in and out of the network as well as rotate the network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# First using set_vertex_attr() let's make a new vertex attribute called color that is dodgerblue.
# Plot the network g using the threejs function graphjs(). The first argument should be the graph object g. Also make the vertex size equal to 1.

library(igraph)
library(threejs)

# Set a vertex attribute called 'color' to 'dodgerblue' 
g <- set_vertex_attr(g, "color", value = "dodgerblue")

# Redraw the graph and make the vertex size 1
graphjs(g, vertex.size = 1)
