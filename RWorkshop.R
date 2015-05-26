
#======== Load wine.txt

mydata <- read.table('wine.txt',header=FALSE,sep=',')
#col.names=c('CLASS','Alcohol','Malic acid','Ash',))

#======== Exploratory 

par(mfrow=c(2,7))
for (colNumber in 1:14) {
	hist(mydata[,colNumber],main='',xlab=paste('V',colNumber,sep=''),col='red')	
}

#-------------

par(mfrow=c(3,1))
hist(mydata[,3],col='gold',breaks=25,main='Histogram of V3')
boxplot(mydata[,3],horizontal=TRUE,col='lightblue',main='Boxplot of V3')
stripchart(mydata[,3],col='red',main='Stripchart of V3')

#-------------
# `Normalize' ? each variable with lapply ?

#-------------
# Write a function to ..


#-------------

pairs(mydata)

#-------------

productMomentCor <- cor(mydata[,7],mydata[,8],method='pearson')
spearmanCor <- cor(mydata[,7],mydata[,8],method='spearman')
plot(mydata[,7],mydata[,8])
abline(lm(V8~V7,data=mydata), col="red")
summary(lm(V8~V7,data=mydata))

#-------------

library(hexbin)
bin<-hexbin(mydata[,2],mydata[,9],xbins=10) 
plot(bin, main="Hexagonal Binning")

#-------------

qqnorm(mydata[,5])
abline(a=0,b=1)

#======== Unsupervised  

cl <- kmeans(mydata, 3, nstart = 25)
plot(mydata, col = cl$cluster)
points(cl$centers, col = 1:3, pch = 8)

table(mydata$V1, cl$cluster)

plot(mydata[,2],mydata[,3], col=cl$cluster)
#points(cl$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)

#======== Unsupervised  
library(class)
knn

#========= Networks

load(igraph)
corAlcohol <- cor(t(mydata[,2:14]),method='spearman')




