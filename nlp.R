# NLP Project #
rm(list=ls())
data.test <- read.csv("test_Madison.csv")
data.train <- read.csv("train_Madison.csv")
attach(data.train)

model <- lm(star ~ data.train)

star1 <- which(star == 1)
star2 <- which(star == 2)
star3 <- which(star == 3)
star4 <- which(star == 4)
star5 <- which(star == 5)