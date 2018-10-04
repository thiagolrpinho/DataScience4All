# EXERCISE
# EXERCISE
# Edge attributes and subsetting
# In this exercise you will learn how to add attributes to edges in the network and view them. For instance, we will add the attribute 'hours' that represents how many hours per week each pair of friends spend with each other.

# INSTRUCTIONS
# 100 XP
# Create a new edge attribute called 'hours' from the vector hours using set_edge_attr().
# View all edge attributes using edge_attr().
# View all edges that include the person "Britt".
# View all edges where the attribute hours is greater than or equal to 4 hours.


library(igraph)

# View hours
hours

# Create new edge attribute called 'hours'
g <- set_edge_attr(g, "hours", value = hours)

# View edge attributes of graph object
edge_attr(g)

# Find all edges that include "Britt"
E(g)[[inc('Britt')]]

# Find all pairs that spend 4 or more hours together per week
E(g)[[hours>=4]]  