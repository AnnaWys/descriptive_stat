# creating vectors
w1 <- c(1,2,3,4,5,6,7,7,8,9,10,11)
w2 <- c(4,5,5,5,6,6,6,6,7,7,8,8)

#we should avoid using function names, that already exists
my_range <-function(x){
  max(x) - min(x)
}

range(w1)
range(1:4)
base::range(1:4)

# IQR
IQR(w1)
IQR(w2)

quantile(w1)
#there are different types of interpolation
quantile(w1,type = 6)

#variation
var_w1 <- var(w1)
var_w2 <- var(w2)

#standard deviation
sd_w1 <- sd(w1)
sd_w2 <- sd(w2)

#coefficient of variation (wspol zmiennosci)
V1 <- sd(w1)/mean(w1)*100
V2 <- sd(w2)/mean(w2)*100

