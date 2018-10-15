# EXERCISE
# Visualizing important nodes and edges
# One issue with the measles dataset is that there are three individuals for whom no information is known about who infected them. One of these individuals (vertex 184) appears ultimately responsible for spreading the disease to many other individuals even though they did not directly infect too many individuals. However, because vertex 184 has no incoming edge in the network they appear to have low betweenness. One way to explore the importance of this vertex is by visualizing the geodesic distances of connections going out from this individual. In this exercise you shall create a plot of these distances from this patient zero.

# INSTRUCTIONS
# 100 XP
# Use make_ego_graph() to create a subset of our network comprised of vertices that are connected to vertex 184. The first argument is the original graph g. The second argument is the maximal number of connections that any vertex needs to be connected to our vertex of interest. In this case we can use diameter() to return the length of the longest path in the network. The third argument is our vertex of interest which should be 184. The final argument is the mode. In this instance you can include all connections regardless of direction.
# Create an object dists that contains the geodesic distance of every vertex from vertex 184. Use the function distances() to calculate this.
# Assign the attribute color to each vertex. Each color will be selected based on its geodesic distance. The color palette colors is a length equal to the maximal geodesic distance plus one. This is so that vertices of the same distance are plotted in the same color and patient zero also has its own color.
# Use plot() to visualize the network g184. The vertex label should be the geodesic distances dists.

# Make an ego graph
g184 <- make_ego_graph(g, diameter(g), nodes = '184', mode = c("all"))[[1]]

# Get a vector of geodesic distances of all vertices from vertex 184 
dists <- distances(g184, "184")

# Create a color palette of length equal to the maximal geodesic distance plus one.
colors <- c("black", "red", "orange", "blue", "dodgerblue", "cyan")

# Set color attribute to vertices of network g184.
V(g184)$color <- colors[dists+1]

# Visualize the network based on geodesic distance from vertex 184 (patient zero).
plot(g184, 
     vertex.label = dists, 
     vertex.label.color = "white",
     vertex.label.cex = .6,
     edge.color = 'black',
     vertex.size = 7,
     edge.arrow.size = .05,
     main = "Geodesic Distances from Patient Zero"
     )