# EXERCISE
# EXERCISE
# igraph network layouts
# The igraph package provides several built in layout algorithms for network visualization. Depending upon the size of a given network different layouts may be more effective in communicating the structure of the network. Ideally the best layout is the one that minimizes the number of edges that cross each other in the network. In this exercise you will explore just a few of the many default layout algorithms. Re-executing the code for each plot will lead to a slightly different version of the same layout type. Doing this a few times can help to find the best looking visualization for your network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# In the plot function, change the layout argument to layout_in_circle() to produce a circle network.
# In the plot function, change the layout argument to layout_with_fr() to produce a network with the Fruchterman-Reingold layout.
# You can also stipulate the layout by providing a matrix of (x, y) coordinates for each vertex. Here you use the layout_as_tree() function to generate the matrix m of coordinates. Then pass m to the layout function in plot() to plot.
# Choosing a correct layout can be bewildering. Fortunately igraph has a function layout_nicely() that tries to choose the most appropriate layout function for a given graph object. Use this function to produce the matrix m1 and plot the network using these coordinates.

library(igraph)

# Plot the graph object g1 in a circle layout
plot(g1, vertex.label.color = "black", layout = layout_in_circle(g1))

# Plot the graph object g1 in a Fruchterman-Reingold layout 
plot(g1, vertex.label.color = "black", layout = layout_with_fr(g1))

# Plot the graph object g1 in a Tree layout 
m <- layout_as_tree(g1)
plot(g1, vertex.label.color = "black", layout = m)

# Plot the graph object g1 using igraph's chosen layout 
m1 <- layout_nicely(g1)
plot(g1, vertex.label.color = "black", layout = m1)
