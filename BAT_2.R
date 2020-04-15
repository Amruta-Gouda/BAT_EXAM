#2.Convert the numeric columns into their z scores using your own function instead of available R functions

batdata<-read.csv(choose.files(),header = TRUE)
head(batdata)

#Computing z-scores,forluma is (x-Mu)/Sigma
Zscore<-function(z)
{
  Sum=sum(z)           #Sum of observation
  Length=length(z)     #Number of observation
  Mean=Sum/Length      #Average
  Dev=(z-Mean)         #Deviation (how observations are scattered around mean --(y-ybar))
  a=Dev^2              #Square of the deviatio
  b=Length-1           #num.of observation - 1 (n-1) 
  std=sqrt(sum(a/b))   #square root of sum of squared deviation devided by n-1
  zscore=Dev/std       #Zscore --(X-Mu)/(Std)
  print(zscore)
}

#Output
Zscore(batdata$Attendance_in_percentage)
Zscore(batdata$EndTermMarks)

#--------------------------------------------------------------------------------------------
#OR
ZSCORE<-function(x)
{
    z=(x-mean(x))/sd(x)
    print(z)
}

ZSCORE(batdata$Attendance_in_percentage)
ZSCORE(batdata$EndTermMarks)

