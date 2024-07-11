# ANALYSIS-OF-CAR-DATASET-USING-R-PROGRAMMING
1.Government Records: The government keeps track of things like vehicle registrations and sales,
so they have data on which cars are being sold and where.
2. Industry Reports: Companies that study the car market, like JD Power or Kelley Blue Book,
share reports and data about things like how many cars are being sold and what kinds of cars
people are buying.
3. Websites: Places where people buy and sell cars online, like AutoTrader or eBay Motors, might
have data on the sales of used cars.
4. Car Manufacturers: The companies that make cars also keep track of how many they sell and
which models are popular.
5. Research Studies: Sometimes, researchers or analysts study the car market and publish their
findings, which can include data on things like sales predictions or trends.
6. Social Media: People often talk about buying and selling cars on social media platforms like
Twitter or Reddit, so there might be useful information there too.
Basically, these datasets give us information about what cars people are buying, how many are
being sold, and where they're being sold. They're helpful for understanding trends in the car
market and making decisions about things like pricing or advertising.


To import a dataset into our R programming environment, we must perform the following steps:
1) Set the working directory of your data set file by copying its path.
setwd("C:/Users/Leela/OneDrive/Desktop")
2) Create a vector of your own and use the read.csv function to read your dataset file.
cars<-data.frame(read.csv("cars.csv")
3)Now use the head() function to retrieve the first few rows of your dataset to work on it.
cars<-head(cars)
