install.packages("ggplot2")
library(ggplot2)
setwd("C:/Users/Leela/OneDrive/Desktop")
cars<-data.frame(read.csv("cars.csv"))
cars
#select first few rows
cars<-head(cars)
cars
#Data cleaning
is.na(cars)
complete.cases(cars)
clean<-na.omit(cars)
clean
#Imputing missing values
cars$PC2[is.na(cars$Horsepower)]<-mean(cars$Horsepower,na.rm=TRUE)
cars
#remove duplicate value
unique_cars<-unique(cars)
unique_cars
#detect and remove the outliers
cars$Horsepower[cars$Horsepower%in%boxplot.stats(cars$Horsepower)$out]
#Modify the column names
colnames(cars)[colnames(cars)=="price_in_thousands"]<-"price"
colnames(cars)
#remove spaces in character strings
Withoutspace<-gsub(" ","",cars)
Withoutspace
#data visualization
#Bar plot
barplot(cars$Horsepower,xlab="Horsepower of cars",ylab="current trend",col="blue")
pie(cars$Wheelbase,labels=cars$Wheelbase,radius = 1,main="Wheelbase of
cars",col=rainbow(length(as.integer(cars$Wheelbase ))))
legend("topleft",legend=as.character(cars$Wheelbase),cex=0.8,fill=rainbow(length(as.integer(car
s$Wheelbase))))
#Scatter plot
plot(cars$Sales_in_thousands,
xlab="sales_in_thousands",
ylab="cars",
main="sales in thousands of current thrend")
#Line chart
plot(cars$Width,type="o",xlab="Width",ylab="Width of cars",main="Width of cars in current
trend",col="purple")
#summary
summary(cars)
#reggresion
model<-lm(cars$Horsepower~cars$Width,cars=cars)
model
#correlation
correlation <- cor(cars$Horsepower, cars$Width)
correlation
