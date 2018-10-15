# EXERCISE
# Triangles and transitivity
# Another important measure of local connectivity in a network graph involves investigating triangles (also known as triads). In this exercise you will find all closed triangles that exist in a network. This means that an edge exists between three given vertices. You can then calculate the transitivity of the network. This is equivalent to the proportion of all possible triangles in the network that are closed. You will also learn how to identify the number of closed triangles that any given vertex is a part of and its local transitivity - that is, the proportion of closed triangles that the vertex is a part of given the theoretical number of triangles it could be a part of.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Show a matrix of all possible triangles in the Forrest Gump network g using the function triangles().
# Using the function count_triangles(), find how many triangles that the vertex "BUBBA" is a part of. The vids argument refers to the id of the vertex.
# Calculate the global transitivity of the network g using transitivity().
# Find the local transitivity of vertex "BUBBA" also using the function transitivity(). The type is defined as local to indicate that you are calculating a local rather than global transitivity.

library(igraph)

# Show all triangles in the network.
matrix(triangles(g), nrow = 3)

# Count the number of triangles that vertex "BUBBA" is in.
count_triangles(g, vids='BUBBA')

# Calculate  the global transitivity of the network.
g.tr <- transitivity(g)
g.tr

# Calculate the local transitivity for vertex BUBBA.
transitivity(g, vids='BUBBA', type = "local")