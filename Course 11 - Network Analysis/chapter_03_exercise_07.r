# Cliques
# Identifying cliques is a common practice in undirected networks. In a clique every two unique nodes are adjacent - that means that every individual node is connected to every other individual node in the clique. In this exercise you will identify the largest cliques in the Forrest Gump network. You will also identify the number of maximal cliques of various sizes. A clique is maximal if it cannot be extended to a larger clique.

# INSTRUCTIONS
# 100 XP
# Identify the largest cliques in the network using the function largest_cliques().
# Determine all the maximal cliques in the network using the function max_cliques(). Assign the output of this function to the list object clq.
# Calculate the length of each of the maximal cliques. Use lapply() to loop through the object clq determining the length() of each object in the list. Then unlist() and use table() to observe how large each of the maximal cliques are.

library(igraph)

# Identify the largest cliques in the network
largest_cliques(g)

# Determine all maximal cliques in the network and assign to object 'clq'
clq <- max_cliques(g)

# Calculate the size of each maximal clique.
table(unlist(lapply(clq, length)))
