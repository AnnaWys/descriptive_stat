# creating vectors
w1 <- c(1,2,3,4,5,6,7,7,8,9,10,11)
w2 <- c(4,5,5,5,6,6,6,6,7,7,8,8)

#installing packages to work with GitHub
install.packages('devtools')
library(devtools)
install_github('karabanb/BKmisc')
library(BKmisc)
BKmisc::start_proj()

#we should avoid using function names, that already exists
my_range <-function(x){
  max(x) - min(x)
}

range(w1)
range(1:4)
base::range(1:4)

# IQR calculation for w1 and w2
# quantile types - different types on interpolation

quantile(w1, type = 6)
quantile(w2, type = 6)

IQR(w1)
IQR(w2)

#function creation - variance, standard deviation and coefficient of variation

variance <- function (x) {
  (sum((x - mean(x))^2))/(length(x) - 1)
}

s_dev <- function(x) {
  sqrt((sum((x - mean(x))^2))/(length(x) - 1))
}

coef <- function(x) {
  (sqrt((sum((x - mean(x))^2))/(length(x) - 1))/mean(x)) *100
}

#calculation to check if functions are correct

var(w1)
var(w2)
variance(w1)
variance(w2)

sd(w1)
sd(w2)
s_dev(w1)
s_dev(w2)

coef(w1)
coef(w2)

V1 <- sd(w1)/mean(w1)*100
V2 <- sd(w2)/mean(w2)*100
