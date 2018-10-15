# EXERCISE
# Forrest Gump network
# In this chapter you will use a social network based on the movie Forrest Gump. Each edge of the network indicates that those two characters were in at least one scene of the movie together. Therefore this network is undirected. To familiarize yourself with the network, you will first create the network object from the raw dataset. Then, you will identify key vertices using a measure called eigenvector centrality. Individuals with high eigenvector centrality are those that are highly connected to other highly connected individuals. You will then make an exploratory visualization of the network.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Inspect the first few rows of the dataframe gump using head().
# Make an undirected network using graph_from_data_frame().
# Identify the key vertices using the function eigen_centrality() and assign the results of this to the object g.ec. Next identify which individual has the highest eigenvector centrality using which.max(). The values of the centrality scores are stored in g.ec$vector.
# Make a plot of the Forrest Gump Network using plot(). Make the size of the vertices equal to 25 times the eigenvector centrality values that are stored in g.ec$vector.

library(igraph)

# Inspect Forrest Gump Movie dataset
head(gump)

# Make an undirected network
g <- graph_from_data_frame(gump, directed = FALSE)

# Identify key nodes using eigenvector centrality
g.ec <- eigen_centrality(g)
which.max(g.ec$vector)

# Plot Forrest Gump Network
plot(g,
vertex.label.color = "black", 
vertex.label.cex = 0.6,
vertex.size = 25*(g.ec$vector),
edge.color = 'gray88',
main = "Forrest Gump Network"
)
