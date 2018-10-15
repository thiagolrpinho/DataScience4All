# EXERCISE
# EXERCISE
# Visualizing edges
# In this exercise you will learn how to change the size of edges in a network based on their weight, as well as how to remove edges from a network which can sometimes be helpful in more effectively visualizing large and highly clustered networks. In this introductory chapter, we have just scratched the surface of what's possible in visualizing igraph networks. You will continue to develop these skills in future chapters.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a vector w1 of edge weights based on the number of hours friends spend together.
# Plot the network ensuring that the edge.width is set to the vector of weights you just created. Using edge.color = 'black' ensures that all edges will be black.
# Next, create a new graph object g2 that is the g1 network but with all edges of that are of weight less than two hours removed. This is done by using delete_edges() which takes two arguments. The first is the graph object and the second is the subset of edges to be removed. In this case, you will remove any edges that have a value of less than two hours.
# Finally, plot the new network g2 using the appropriate vector of edge widths and layout.

library(igraph)

# Create a vector of weights based on the number of hours each pair spend together
w1 <- E(g1)$hours

# Plot the network varying edges by weights
m1 <- layout_nicely(g1)
plot(g1, 
        vertex.label.color = "black", 
        edge.color = 'black',
        edge.width = w1,
        layout = m1)


# Create a new igraph object by deleting edges that are less than 2 hours long 
g2 <- delete_edges(g1, E(g1)[hours < 2])


# Plot the new graph 
w2 <- E(g2)$hours
m2 <- layout_nicely(g2)

plot(g2, 
     vertex.label.color = "black", 
     edge.color = 'black',
     edge.width = w2,
     layout = m2)
