# NLP Project #
rm(list=ls())
data.train <- read.csv("class_cleaned_data/train_Madison.csv")
d <- data.train
attach(d)


model <- lm(star ~ postal_code + incredible + awful + amazing + poor + waited + disappointed + city)

#Search
cities <- factor(d$city)
region <- table(cities, star)
city.rating <- matrix(nrow = nrow(region), ncol = 3)

for(town in 1:nrow(region)){
  no.good <- region[town,4]+region[town,5]
  no.med <- region[town,3]
  no.bad <- region[town,1]+region[town,2]
  no.total <- sum(region[town,])
  
  city.rating[town,1] <- no.bad/no.total
  city.rating[town,2] <- no.med/no.total
  city.rating[town,3] <- no.good/no.total
}


