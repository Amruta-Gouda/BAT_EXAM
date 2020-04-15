#Implement one hot encoding using your own function to encode Gender 

batdata<-read.csv(choose.files(),header = TRUE)
head(batdata)

#One hot encoding for gender variable, Female-1 ; Male-0
ONEHOT<-function(x)
{
  ifelse(x=="F",1,0)
}

#Created a new column for encoded gender variable
batdata$Onehot<-ONEHOT(batdata$Gender)
                                              
Export<-function(df)                      #Exporting one_hot_encoding data set
{
  write.csv(batdata,"batdata_onehot.csv")
}

Export(batdata)
