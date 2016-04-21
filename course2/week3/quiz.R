# Q 1
library(datasets)
data(iris)
?iris
View(iris)
virginica <- subset(iris, Species == "virginica")
virginica
summary(virginica)

# Q 2
rowMeans(iris[, 1:4])
colMeans(iris)
apply(iris[, 1:4], 2, mean)
apply(iris, 2, mean)
?apply

# Q 3
library(datasets)
data(mtcars)
?mtcars
View(mtcars)
with(mtcars, tapply(mpg, cyl, mean))
?with

# Q 4
x <- with(mtcars, tapply(hp, cyl, mean))
x
x[3] - x[1]

# Q 5
debug(ls)
ls()
