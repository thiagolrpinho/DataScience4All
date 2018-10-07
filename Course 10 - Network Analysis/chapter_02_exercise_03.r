# EXERCISE
# Neighbors
# Often in network analysis it is important to explore the patterning of connections that exist between vertices. One way is to identify neighboring vertices of each vertex. You can then determine which neighboring vertices are shared even by unconnected vertices indicating how two vertices may have an indirect relationship through others. In this exercise you will learn how to identify neighbors and shared neighbors between pairs of vertices.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Using the function neighbors() identify the vertices that are connected in any manner to vertex 12, those vertices that direct an edge to vertex 12 and those vertices that receive a directed edge from vertex 12. This can be achieved by choosing the correct value in the argument mode. Choose from all, in and out.
# Determine if vertices 42 and 124 have a neighbor in common. Create a vector n1 of those vertices that receive an edge from vertex 42 and a vector n2 of those vertices that direct an edge to vertex 124 using neighbors(). Next use intersection() to identify if there are any vertices that exist in both n1 and n2.


library(igraph)

# Identify all neighbors of vertex 12 regardless of direction
neighbors(g, '12', mode = c('all'))

# Identify other vertices that direct edges towards vertex 12
neighbors(g, '12', mode = c('in'))

# Identify any vertices that receive an edge from vertex 42 and direct an edge to vertex 124
n1 <- neighbors(g, '42', mode = c('out'))
n2 <- neighbors(g, '124', mode = c('in'))
intersection(n1, n2)