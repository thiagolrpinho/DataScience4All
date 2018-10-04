
# Visualizing attributes
# In this exercise we will learn how to create igraph objects with attributes directly from dataframes and how to visualize attributes in plots. We will use a second network of friendship connections between students.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a new igraph object with graph_from_data_frame(). Two dataframes need to be provided - friends1_edges contains all edges in the network with attributes and friends1_nodes contains all vertices in the network with attributes.
# View all edges where the attribute hours is greater than or equal to 5 hours.
# Create a new vertex attribute containing color names: "orange" for females and "dodgerblue" for males.
# Plot the network with vertices colored by gender and make label names "black".

library(igraph)


# Create an igraph object with attributes directly from dataframes
g1 <- graph_from_data_frame(d = friends1_edges, vertices = friends1_nodes, directed = FALSE)

# Subset edges greater than or equal to 5 hours
E(g1)[[hours>=5]]  

# Set vertex color by gender
V(g1)$color <- ifelse( V(g1)$gender == "F", "orange", "dodgerblue")


# Plot the graph
plot(g1, vertex.label.color = "black")