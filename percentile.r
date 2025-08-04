quantile(mtcars$wt,c(0.75))
quantile(mtcars$wt)
#?mtcars
dim(mtcars)
names(mtcars)
rownames(mtcars)
summary(mtcars)
names(sort(-table(mtcars$wt)))[1]