# Create wine correlation matrix. NB. t() transpose of the matrix 
wineCor <- cor(t(wineData[,2:14]),method='spearman')

corThres <- 0.99

wineCor[wineCor<corThres] <- 0
wineCor[wineCor>=corThres] <- 1

library(igraph)
wineGraph <- graph.adjacency(wineCor, mode="undirected", weighted=NULL, diag=FALSE)

plot(wineGraph)