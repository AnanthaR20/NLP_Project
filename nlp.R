# NLP Project #
rm(list=ls())
data.test <- read.csv("class_cleaned_data/test_Madison.csv")
data.train <- read.csv("class_cleaned_data/train_Madison.csv")
attach(data.train)
d <- data.train

model <- lm(star ~ postal_code + incredible + awful + amazing + poor + waited + disappointed + city)

star1 <- which(star == 1)
star2 <- which(star == 2)
star3 <- which(star == 3)
star4 <- which(star == 4)
star5 <- which(star == 5)



