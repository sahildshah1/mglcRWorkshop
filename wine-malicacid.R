# Import the Wine Data Set.
# As written, wine.txt must be in your current working directory
# Check your current working directiory with `getwd()'
wineData <- read.table('wine.txt',header=FALSE,sep=',')

par(mfrow=c(3,1))
hist(wineData[,3],col='gold',breaks=25,main='Histogram of V3',xlab="")
boxplot(wineData[,3],horizontal=TRUE,col='lightblue',main='Boxplot of V3')
stripchart(wineData[,3],col='red',main='Stripchart of V3')