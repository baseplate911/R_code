x<-c(151,174,138,186,128,136,179,163,152,131) #predcitor variable
y<-c(63,81,56,81,47,57,76,72,62,48) #response variable
relation<-lm(y~x)
a<-data.frame(x=170)
result<-predict(relation,a)
print(result)
png("regression_plot.png")
plot(y,x,col="blue",main="height and weight regression",abline(lm(x~y)),cex=1.3,pch=16,xlab="height",ylab="weight")
dev.off()

