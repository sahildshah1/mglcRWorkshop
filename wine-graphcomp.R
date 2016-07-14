
# Create a list 
graphComponents <- lapply(decompose.graph(wineGraph,min.vertices = 3), function(component){
	
	numNodes <- length(V(component))
	degrees <- degree(component)
	
	return(list(numNodes = numNodes,
				degrees = degrees))
	
})

par(mfrow=c(2,2))

for (compNumber in 1:length(graphComponents)){
	
	hist(graphComponents[[compNumber]]$degrees,
		 col='gold',
		 breaks=25,
		 main=paste("Degree Distribution (N=",graphComponents[[compNumber]]$numNodes,")",sep=''),
		 xlab="")	
}