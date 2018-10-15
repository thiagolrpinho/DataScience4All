# EXERCISE
# Sizing vertices in threejs
# As with all network visualizations it is often worth adjusting the size of vertices to illustrate their relative importance. This is also straightforward in threejs. In this exercise you will create an interactive threejs plot of the karate club network and size vertices based on their relative eigenvector centrality.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Calculate the eigenvector centrality of each vertex using eigen_centrality() and store the values in the object ec.
# Using sqrt() adjust the values in ec to create a new vector of values v which is equal to five times the square root of the original eigenvector centrality.
# Plot the network using the threejs function graphjs and making the argument vertex.size equal to the values in v.

# Create numerical vector of vertex eigenvector centralities 
ec <- as.numeric(eigen_centrality(g)$vector)

# Create new vector 'v' that is equal to the square-root of 'ec' multiplied by 5
v <- 5*sqrt(ec)

# Plot threejs plot of graph setting vertex size to v
graphjs(g, vertex.size = v)
