hist(sample(1:6,10000,replace=TRUE))
means <- numeric(10000)
for (i in 1:10000)
{
	means[i] <- mean(sample(1:6,100,replace=TRUE))
}
hist(means)
