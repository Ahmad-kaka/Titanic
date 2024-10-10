#load Titanic dataset
titanic <- read.csv("titanic.csv")
#Handling missing data in Age by replacing with median
titanic$Age[is.na(titanic$Age)] <- median(titanic$Age,na.rm = TRUE)
#converting Pclass and survived to factors
titanic$Pclass <- factor(titanic$Pclass)
titanic$Survived <- factor(titanic$Survived)
#Creating Age bins
titanic$AgeGroup <- cut(titanic$Age, breaks = c(0,12,18,60,Inf),labels=c("child","Teen","Adult","Senior"))
# Handling missing Embarked values
titanic$Embarked[is.na(titanic$Embarked)] <- "S"
write.csv(titanic,"titanic_processed.csv")