# EXERCISE
# Directed igraph objects
# In this exercise you will learn how to create a directed graph from a dataframe, how to inspect whether a graph object is directed and/or weighted and how to extract those vertices at the beginning and end of directed edges.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Convert the dataframe measles into an igraph graph object using the function graph_from_data_frame() and ensure that it will be a directed graph by setting the second argument to TRUE.
# Check if the graph object is directed by using is.directed().
# Examine whether the edges of the graph object are already weighted by using is.weighted().
# Subset each vertex from which each edge originates by using head_of(). This function takes two arguments, the first being the graph object and the second the edges to examine. For all edges you can use E(g).

library(igraph)

# Get the graph object
g <- graph_from_data_frame(measles, directed = TRUE)

# is the graph directed?
is.directed(g)

# Is the graph weighted?
is.weighted(g)

# Where does each edge originate from?
table(head_of(g, E(g)))