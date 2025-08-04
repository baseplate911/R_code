od_ev<-function(num)
{
    if(num%%2==0)
    {
        cat(paste(num,"is EVEN"))
    }
    else
    {
        cat(paste(num,"is ODD"))
    }
}
num1<-5
od_ev(num1)