# Network randomizations
# In the previous exercise you may have noticed that the average path length of the Forrest Gump network was smaller than the average path length of the random network. If you ran the code a few times you will have noticed that it is nearly always lower in the Forrest Gump network than the random network. What this suggests is that the Forrest Gump network is more highly interconnected than each random network even though the random networks have the same number of vertices and approximately identical graph densities. Rather than re-running this code many times, you can more formally address this by creating 1000 random graphs based on the number of vertices and density of the original Forrest Gump graph. Then, you can see how many times the average path length of the random graphs is less than the original Forrest Gump network. This is called a randomization test.

# The graph g, and its average path length (that you calculated in the previous exercise), g.apl are in your workspace.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Generate 1000 random graphs of the original graph g by executing the code that creates the list object gl and the for loop.
# Calculate the average path length of the 1000 random graphs using lapply(). Create a vector gl.apls of these 1000 values by executing the code that uses unlist().
# Plot a histogram of the average path lengths of the 1000 random graphs using hist() on the vector gl.apls. Add a red dashed vertical line to the plot using abline() with the x-intercept being the value of the average path length of the original graph, g.apl.
# Calculate the proportion of times that the values of the average path length of random graphs gl.apls are lower than the value of the original graph g.apl. This is essentially the probability that we would expect our observed average path length by chance given the original density and number of vertices of the original graph.

library(igraph)

# Generate 1000 random graphs
gl <- vector('list', 1000)
  
for(i in 1:1000){
  gl[[i]] <- erdos.renyi.game(n = gorder(g), p.or.m = gd, type = "gnp")
}

# Calculate average path length of 1000 random graphs
gl.apls <- unlist(lapply(gl, mean_distance, directed = FALSE))

# Plot the distribution of average path lengths
hist(gl.apls, xlim = range(c(1.5, 6)))
abline(v = g.apl, col = "red", lty = 3, lwd = 2)

# Calculate the proportion of graphs with an average path length lower than our observed
mean( gl.apls < g.apl )


# Great work! As you can see, the Forrest Gump network is far more interconnected than we would expect by chance as zero random networks have an average path length smaller than the Forrest Gump network's average path length.