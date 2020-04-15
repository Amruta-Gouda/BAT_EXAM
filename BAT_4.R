#Split the dataset into training and test in 70:30 ratio such that the Gender ratio is maintained. Instead implement the logic in your own way.

batdata<-read.csv(choose.files(),header = TRUE)
head(batdata)

#Creating traing and test data separetly
#Train
TRAIN<-function(df)                      #Creating fucntion for train
{
  set.seed(5)                            #Fixing set seed
  dt=sort(sample(nrow(df),nrow(df)*0.7)) #split data into 70:30 
  train=df[dt,]                          #70% of Train data  
  print(train)

}
Traindata<-TRAIN(batdata)


Export<-function(df)                      #Exporting train data set
  {
  write.csv(df,"Traindata.csv")
}

Export(Traindata)

#-------------------------------------------------------------------------------
#Test
TEST<-function(df)                         #Creating fucntion for train and test
{
  set.seed(5)                              #Fixing set seed
  dt=sort(sample(nrow(df),nrow(df)*0.7))   #split data into 70:30 
  test=df[-dt,]                            #30% of Test data
  print(test)
}

Testdata<-TEST(batdata)


Export<-function(df)                       #Exporting test data set
{
  write.csv(df,"Testdata.csv")
}

Export(Testdata)
getwd()

###############################################################################
#OR
#Creating train and test in one function
#Function to create train and test data with 70 , 30 ratio

tt<-function(df)                         #Creating fucntion for train and test
{
  set.seed(5)                            #Fixing set seed
  dt=sort(sample(nrow(df),nrow(df)*0.7)) #split data into 70:30 
  train=df[dt,]                          #70% of Train data  
  test=df[-dt,]                          #30% of Test data
  print(train)
  print(test)
}

tt(batdata)

