# EXERCISE
# Fast-greedy community detection
# The first community detection method you will try is fast-greedy community detection. You will use the Zachary Karate Club network. This social network contains 34 club members and 78 edges. Each edge indicates that those two club members interacted outside the karate club as well as at the club. Using this network you will determine how many sub-communities the network has and which club members belong to which subgroups. You will also plot the networks by community membership.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Use the function fastgreedy.community() to create a community object. Assign this to the object kc.
# Use the function sizes() on kc to determine how many communities were detected and how many club members are in each.
# Display which club members are in which community using the function membership().
# Make the default community plot by using the function plot(). The first argument should be the object kc and the second argument is the graph object g.


# Perform fast-greedy community detection on network graph
kc = fastgreedy.community(g)

# Determine sizes of each community
sizes(kc)

# Determine which individuals belong to which community
membership(kc)

# Plot the community structure of the network
plot(kc, g)
