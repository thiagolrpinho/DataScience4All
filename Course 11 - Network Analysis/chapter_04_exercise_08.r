# EXERCISE
# 3D community network graph
# Finally in this exercise you will create an interactive threejs plot with the vertices based on their community membership as produced by the fast-greedy community detection method.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use the function membership() on the community igraph object kc to generate a vector of community membership for each vertex.
# Check how many communities there are using the function sizes() on the community igraph object kc.
# Use set_vertex_attr() to add a vertex attribute called color to the graph object g. The values to add are the colors based on the membership assigned to object i.
# Plot the three-dimensionsal graph by using the function graphjs() on the network object g.

# Create an object 'i' containin the memberships of the fast-greedy community detection
i <-  membership(kc)

# Check the number of different communities
sizes(kc)

# Add a color attribute to each vertex, setting the vertex color based on community membership
g <- set_vertex_attr(g, "color", value = c("yellow", "blue", "red")[i])

# Plot the graph using threejs
graphjs(g)
