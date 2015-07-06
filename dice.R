dice <- function(x)
{
	y <- sample(1:6, 1, replace=T)
	return(y)
}

sum = dice(1) + dice(2)
sum

hist10 <- hist(sample(1:6, 10, replace=T))
hist100 <- hist(sample(1:6, 100, replace=T))
hist100 <- hist(sample(1:6, 1000, replace=T))