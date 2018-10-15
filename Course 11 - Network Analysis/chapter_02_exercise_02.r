# EXERCISE
# Identifying edges for each vertex
# In this exercise you will learn how to identify particular edges. You will learn how to determine if an edge exists between two vertices as well as finding all vertices connected in either direction to a given vertex.

# INSTRUCTIONS
# 100 XP
# First make a visualization of this network using plot(). You will improve this visualization later. It can be useful to visualize the network before analysis. To improve visibility of the plot of this network, you should make the vertex size equal to 0 and the edge arrow size equal to 0.1.
# Check if there is an edge going in each direction between vertex 184 to vertex 178 using single brackets subsetting of the graph object. If a 1 is returned that indicates TRUE there is an edge. If a 0 is returned that indicates FALSE there is not an edge.
# Using the function incident() identify those edges that go in either direction from vertex 184 or only those going out from vertex 184. The first argument should be the graph object, the second should be the vertex to examine and the third argument the mode indicating the direction. Choose from all, in and out.

library(igraph)

# Make a basic plot
plot(g, 
     vertex.label.color = "black", 
     edge.color = 'gray77',
     vertex.size = 0,
     edge.arrow.size = 0.1,
     layout = layout_nicely(g))

# Is there an edge going from vertex 184 to vertex 178?
g['184', '178']

# Is there an edge going from vertex 178 to vertex 184?
g['178', '184']

# Show all edges going to or from vertex 184
incident(g, '184', mode = c("all"))

# Show all edges going out from vertex 184
incident(g, '184', mode = c("out"))