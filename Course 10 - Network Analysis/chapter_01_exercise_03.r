# EXERCISE
# EXERCISE
# Node attributes and subsetting
# In this exercise you will learn how to add attributes to vertices in the network and view them.

# INSTRUCTIONS
# 100 XP
# INSTRUCTIONS
# 100 XP
# Create a new vertex attribute called 'gender' from the vector genders using set_vertex_attr().
# Create a new vertex attribute called 'age' from the vector ages using set_vertex_attr().
# View all vertex attributes using vertex_attr().
# View the attributes of the first five vertices in a dataframe using V(g)[[]].

library(igraph)

# Inspect the objects 'genders' and 'ages'
genders
ages

# Create new vertex attribute called 'gender'
g <- set_vertex_attr(g, "gender", value = genders)

# Create new vertex attribute called 'age'
g <- set_vertex_attr(g, "age", value = ages)

# View all vertex attributes in a list
vertex_attr(g)

# View attributes of first five vertices in a dataframe
V(g)[[1:5]] 

