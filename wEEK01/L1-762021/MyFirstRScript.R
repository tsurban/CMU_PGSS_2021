library(readr)
iris <- read_csv("iris.csv", col_names = FALSE)
iris$X5 <- as.factor(iris$X5)


colnames(iris) <- c("Sepal.length", "Sepal.width", "Petal.length", "Petal.width", "Species")
table(iris$Species)
View(iris)

# install.packages("dplyr)
library(dplyr)

iris %>% group_by(Species) %>% summarize(min.Sepal.length=min(Sepal.length, na.rm=T),
                                         max.Sepal.length=max(Sepal.length, na.rm=T))