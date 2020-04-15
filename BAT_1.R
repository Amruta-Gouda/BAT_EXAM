#1.Compute the MEAN, STDEV of the numeric columns. Do not use available R functions but create your own script. 

batdata<-read.csv(choose.files(),header = TRUE)
head(batdata)
tail(batdata)
summary(batdata)

#Computing Mean , Mean= (Sum of observation)/(# of observation)

MEAN<-function(x)
{
  Sum=sum(x)           #Sum of observation
  Length=length(x)     #Number of observation
  Mean=Sum/Length      #(Sum of observation)/(# of observation)
  print(Mean)          
}

#Output
MEAN(batdata$Attendance_in_percentage)
MEAN(batdata$EndTermMarks)

################################----------------------------------------################################

#Computing Standard deviation,Formula is sqrt(Sum((x-mean(x))^2/(length(x)-1)))

STDEV<-function(y)
{
  Sum=sum(y)           #Sum of observation
  Length=length(y)     #Number of observation
  Mean=Sum/Length      #Average
  Dev=(y-Mean)         #Deviation (how observations are scattered around mean --(y-ybar))
  a=Dev^2              #Square of the deviatio
  b=Length-1           #num.of observation - 1 (n-1)
  std=sqrt(sum(a/b))   #square root of sum of squared deviation devided by n-1
  print(std)           #print standard deviation
}

#Out put 
STDEV(batdata$Attendance_in_percentage)
STDEV(batdata$EndTermMarks)


