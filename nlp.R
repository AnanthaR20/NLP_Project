# NLP Project #
rm(list=ls())
data.test <- read.csv("class_cleaned_data/test_Madison.csv")
data.train <- read.csv("class_cleaned_data/train_Madison.csv")
attach(data.train)
d <- data.train

model <- lm(star ~ postal_code + incredible + awful + amazing + poor + waited + disappointed + city)

#Search
cities <- factor(d$city)

region.dist <- table(cities, star)






