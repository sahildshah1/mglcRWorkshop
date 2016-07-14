# Calculate pearson correlation
pearsonCor <- cor(wineData[,7],wineData[,8],method='pearson')

plot(wineData[,7],wineData[,8],
	main=paste("V8 vs. V7 Scatterplot (Correlation: ",round(pearsonCor,2),")",sep=''),
	xlab="V7 (Total phenols)",
	ylab="V8 (Flavanoids)")

abline(lm(V8~V7,data=wineData), col="red")

# Summary of linear model
#summary(lm(V8~V7,data=wineData))