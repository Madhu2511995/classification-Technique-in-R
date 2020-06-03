# Classification technique

# Use readingSkills dataset

# Decision Tree
# # import Required Library for Decision Tree
library(ROSE)
library(rpart)
library(rpart.plot)

# View The dataset
View(readingSkills)

# Create Decision Tree model
dt<-rpart(nativeSpeaker~age+shoeSize+score,readingSkills)
print(dt)

# Plot Decision Tree
rpart.plot(dt)

# Create DataFrame for input
df=data.frame(age=11,shoeSize=30,score=35)

# Predict The value According to the input
predict(dt,df)




# Random Forest
# import Required Library for Random Forest
library(party)
library(randomForest)

# View The dataset
View(readingSkills)
table(readingSkills$nativeSpeaker)

# Create Random Forest model
output_forest<- randomForest(nativeSpeaker~age+shoeSize+score,readingSkills)
print(output_forest)

# Create DataFrame for input
df=data.frame(age=11,shoeSize=30,score=35)

# Predict The value According to the input
predict(output_forest,df)

# SVM(Support Vector Machine)
# import required Library for svm
library(e1071)

# Create SVM model
output_Svm<- svm(nativeSpeaker~age+shoeSize+score,readingSkills)
print(output_Svm)

# Create DataFrame for input
df=data.frame(age=10,shoeSize=30,score=52)

# Predict The value According to the input
predict(output_Svm,df)














# Use iris dataset
# Decision Tree
# import Required Library for Decision Tree
library(ROSE)
library(rpart)
library(rpart.plot)

# View The dataset
View(iris)

# Create Decision Tree model
dt<-rpart(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,iris)
print(dt)

# Plot Decision Tree
rpart.plot(dt)
# Create DataFrame for input
df=data.frame(Sepal.Length=5.1,Sepal.Width=3.5,Petal.Length=1.4,Petal.Width=0.2)

# Predict The value According to the input
predict(dt,df)

# Draw rhe confusion matrix
table(iris$Species,predict(dt,type = "class"))






# Random Forest
# import Required Library for Random Forest
library(party)
library(randomForest)

# View The dataset
View(iris)
table(iris$Species)

# Create Random Forest model
output_forest<- randomForest(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,iris)
print(output_forest)

# Create DataFrame for input
df=data.frame(Sepal.Length=5.1,Sepal.Width=3.5,Petal.Length=1.4,Petal.Width=0.2)

# Predict The value According to the input
predict(output_forest,df)

# Draw rhe confusion matrix
table(iris$Species,predict(output_forest,type = "class"))




# SVM(Support Vector Machine)
# import Required Library for SVM
library(e1071)

# Create SVM model
output_Svm<- svm(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,iris)
print(output_Svm)

# Create DataFrame for input
df=data.frame(Sepal.Length=5.1,Sepal.Width=3.5,Petal.Length=1.4,Petal.Width=0.2)

# Predict The value According to the input
predict(output_Svm,df)

# Draw rhe confusion matrix
table(iris$Species,predict(output_Svm,type = "class"))

summary(output_Svm)
