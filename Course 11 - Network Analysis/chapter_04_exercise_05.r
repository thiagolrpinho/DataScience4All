# EXERCISE
# Edge-betweenness community detection
# An alternative community detection method is edge-betweenness. In this exercise you will repeat the community detection of the karate club using this method and compare the results visually to the fast-greedy method.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use the function edge.betweenness.community() on the graph object g to create the community igraph object gc.
# Calculate the size and number of communities by using the function sizes on the community igraph object.
# Plot each community plot next to each other using par(). The first plot should include the community object kc from the previous exercise. The second plot should include the community object gc.

# Perform edge-betweenness community detection on network graph
gc = edge.betweenness.community(g)

# Determine sizes of each community
sizes(gc)

# Plot community networks determined by fast-greedy and edge-betweenness methods side-by-side
par(mfrow = c(1, 2)) 
plot(kc, g)
plot(gc, g)

