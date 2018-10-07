# EXERCISE
# Visualize largest cliques
# Often in network visualization you will need to subset part of a network to inspect the inter-connections of particular vertices. Here, you will create a visualization of the largest cliques in the Forrest Gump network. In the last exercise you determined that there were two cliques of size 9. You will plot these side-by-side after creating two new igraph objects by subsetting out these cliques from the main network. The function subgraph() enables you to choose which vertices to keep in a new network object.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Assign the list of the largest cliques in the network to the object lc.
# Create two new undirected subgraphs using the function subgraph(). The first, gs1, should contain only the vertices in the first largest clique. The second, gs2, should contain only the vertices in the second largest clique. This function is wrapped in as.undirected() to ensure that the subgraph is also undirected.
# Visualize the two largest cliques side by side using plot(). First execute the code: par(mfrow=c(1,2)). This is to ensure that the two visualizations sit side-by-side. Make sure that the layout is set to layout.circle() to make the visualization easier to view.

library(igraph)

# Assign largest cliques output to object 'lc'
lc <- largest_cliques(g)

# Create two new undirected subgraphs, each containing only the vertices of each largest clique.
gs1 <- as.undirected(subgraph(g, lc[[1]]))
gs2 <- as.undirected(subgraph(g, lc[[2]]))


# Plot the two largest cliques side-by-side

par(mfrow=c(1,2)) # To plot two plots side-by-side

plot(gs1,
     vertex.label.color = "black", 
     vertex.label.cex = 0.9,
     vertex.size = 0,
     edge.color = 'gray28',
     main = "Largest Clique 1",
     layout = layout.circle(gs1)
)

plot(gs2,
     vertex.label.color = "black", 
     vertex.label.cex = 0.9,
     vertex.size = 0,
     edge.color = 'gray28',
     main = "Largest Clique 2",
     layout = layout.circle(gs2)
)
