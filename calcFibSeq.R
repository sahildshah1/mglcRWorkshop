

calcFibSeq <- function(len){
	#Initalize vector with 0's
	fibSeq <- rep(0,len)
	fibSeq[1] <- 1
	fibSeq[2] <- 1
	for (index in 3:len){
		fibSeq[index]  <- fibSeq[index-1] + fibSeq[index-2]
	}
	return(fibSeq)
}
