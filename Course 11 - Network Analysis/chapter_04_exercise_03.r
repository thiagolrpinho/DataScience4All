# EXERCISE
# Reciprocity
# The reciprocity of a directed network reflects the proportion of edges that are symmetrical. That is, the proportion of outgoing edges that also have an incoming edge. It is commonly used to determine how inter-connected directed networks are. An example of a such a network may be grooming exchanges in chimpanzees. Certain chimps may groom another but do not get groomed by that individual, whereas other chimps may both groom each other and so would have a reciprocal tie.

# INSTRUCTIONS
# 100 XP
# In this example network of chimps grooming each other, make an exploratory plot of the network g using plot(). Make the arrow size 0.3 using the argument edge.arrow.size and the arrow width 0.5 using the argument edge.arrow.width.
# Calculate the reciprocity of the graph using reciprocity().


library(igraph)

# Make a plot of the chimp grooming network
plot(g,
     edge.color = "black",
     edge.arrow.size = 0.3,
     edge.arrow.width = 0.5)

# Calculate the reciprocity of the graph
reciprocity(g)
