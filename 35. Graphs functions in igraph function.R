# Graphs functions in igraph function 


library(igraph)

# 1.)  make_full_graph()  :- to create a conncection between particular node , can make choice of directed or not  

fg=make_full_graph(8,directed = T ) # 8 = no. of verices , directed = true is for arrow marks 
fg                  # will give from which node to node the link is created 

plot(fg)

fg1=make_full_graph(8,directed = F ) # 8 = no. of verices , directed = False  is for no arrow marks 
fg1             

plot(fg1)


# 2.)  make_ring()  :_ 

rg = make_ring(12,directed  = T )
plot(rg) 

rg1 = make_ring(12,directed  = F )
plot(rg1) 

rg2 = make_ring(12,directed  = T , circular = F  )
plot(rg2) 


# 3.)  make_star()  

sg = make_star(10,center = 3)
plot(sg)

sg1 = make_star(15,center = 3)
plot(sg1)


# 4.)   sample_gnp() 
 
gnp = sample_gnp(10,.2) # .2 is prob
plot(gnp)

gnp1 = sample_gnp(10,.5) # .5 is prob
plot(gnp1)

# degree

degree(gnp) # to find out the number of vertices does each vertex is connected to.

degree(gnp1)

# betweenness

betweenness(gnp)

betweenness(gnp1)

# edge density : the number of connections to the total number of possible connections. 

edge_density(gnp)

edge_density(gnp1)

# clique : group of vertices where all possible links are present.

cliques(gnp)

# components  : grp on connected vertices 
components(gnp)

# random_walk

random_walk(gnp,5,6) # random walk from 5th node , 6 steps 











