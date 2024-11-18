library(tidyverse)
library(ggplot2)


data("iris")

head(iris)
summary(iris)
str(iris)

df <- as_tibble(iris)

filter(df, Species == "versicolor")

arrange(df, Sepal.Length, Petal.Width)

ggplot(data=df, aes(x = Sepal.Length, y = Sepal.Width))+
  geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +
  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

