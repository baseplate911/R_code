data<-c(55,45,20)
print(mean(data))
print(mean(1:10))
median_data<-c(3,1,2)
print(median(median_data))
mode_data<-c(55,45,65,75,85,95,15,5,15,15,15,85,85,45,45)
sort(-table(mode_data))[1]
