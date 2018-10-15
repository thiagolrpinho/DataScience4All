# Betweenness
# Another measure of the importance of a given vertex is its betweenness. This is an index of how frequently the vertex lies on shortest paths between any two vertices in the network. It can be thought of as how critical the vertex is to the flow of information through a network. Individuals with high betweenness are key bridges between different parts of a network. In our measles transmission network, vertices with high betweenness are those children who were central to passing on the disease to other parts of the network. In this exercise, you will identify the betweenness score for each vertex and then make a new plot of the network adjusting the vertex size by its betweenness score to highlight these key vertices.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Calculate the betweenness of each vertex using the function betweenness() on the graph object g. Ensure that the scores are calculated for a directed network. The results of this function will be assigned as g.b.
# Visually examine the distribution of betweenness scores using the function hist().
# Use plot() to make a plot of the network based on betweenness scores. The vertex labels should be made NA so that they do not appear. The vertex size attribute should be one plus the square-root of the betweenness scores that are in object g.b. Given the huge disparity in betweenness scores in this network, normalizing the scores in this manner ensures that all nodes can be viewed but their relative importance is still identifiable.
# Take Hint (-30 XP)

library(igraph)

# Calculate betweenness of each vertex
g.b <- betweenness(g, directed = TRUE)

# Show histogram of vertex betweenness
hist(g.b, breaks = 80)

# Create plot with vertex size determined by betweenness score
plot(g, 
     vertex.label = NA,
     edge.color = 'black',
     vertex.size = sqrt(g.b)+1,
     edge.arrow.size = 0.05,
     layout = layout_nicely(g))