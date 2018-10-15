# EXERCISE
# Identifying key vertices
# Perhaps the most straightforward measure of vertex importance is the degree of a vertex. The out-degree of a vertex is the number of other individuals to which a vertex has an outgoing edge directed to. The in-degree is the number of edges received from other individuals. In the measles network, individuals that infect many other individuals will have a high out-degree. In this exercise you will identify whether individuals infect equivalent amount of other children or if there are key children who have high out-degrees and infect many other children.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Calculate the out-degree of each vertex using the function degree(). The first argument is the network graph object and the second argument is the mode which should be one of out, in or all. Assign the output of this function to the object g.outd.
# View a summary of the out-degrees of all individuals using the function table() on the vector object g.outd.
# Make a histogram of the out-degrees using the function hist() on the vector object g.outd.
# Determine which vertex has the highest out-degree in the network using the function which.max() on the vector object g.outd.

library(igraph)

# Calculate the out-degree of each vertex
g.outd <- degree(g, mode = c("out"))

# View a summary of out-degree
table(g.outd)

# Make a histogram of out-degrees
hist(g.outd, breaks = 30)

# Find the vertex that has the maximum out-degree
which.max(g.outd)