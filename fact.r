factorial<-function(n)
{
    if(n==1 || n==0)
    {
        return(1)
    }
    else 
    {
        return (n*factorial(n-1))
    }
}
n<-7
fact=factorial(n)
cat(paste("The factorial of",n,"is",fact))