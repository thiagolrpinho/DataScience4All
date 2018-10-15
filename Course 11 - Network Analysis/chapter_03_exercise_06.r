# EXERCISE
# Transitivity randomizations
# As you did for the average path length, let's investigate if the global transitivity of the Forrest Gump network is significantly higher than we would expect by chance for random networks of the same size and density. You can compare Forrest Gump's global transitivity to 1000 other random networks.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# One thousand random networks are stored in the list object gl. Using lapply() and transitivity() calculate the global transitivity of each of these networks. Assign these results to gl.tr.
# Using unlist() convert gl.tr to a numeric vector gl.trs.
# Investigate the summary statistics of the transitivities of the random networks using summary().
# Calculate the proportion of random graphs that have a transitivity higher than the transitivity of Forrest Gump's network, which you previously calculated and assigned to g.tr.


library(igraph)

# Calculate average transitivity of 1000 random graphs
gl.tr <- lapply(gl, transitivity)
gl.trs <- unlist(gl.tr)

# Get summary statistics of transitivity scores
summary(gl.trs)

# Calculate the proportion of graphs with a transitivity score higher than Forrest Gump's network
mean(gl.trs > g.tr)