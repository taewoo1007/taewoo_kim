

#Assignment2; Taewoo Kim (2009312826)

#Q1

score=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,
93,101,82,83,74,91,83,98,95,111,99,120,93,84)

#(a)
mean(score)
#(b); The data is the sample data. 
#     Therefore the sample mean is not exactly same with population mean.
#(c)
se_score=sd(score)/sqrt(length(score)) 
se_score			#sd is not the same with standard error!
#(d); the spread of the sampling distribution of the sample mean
#(e)
t.test(score)
#(f); If sampling procedure were repeated on multiple times, 
#     the calculated confidence interval would contain the true population parameter 95% of the time

#Q2
male=c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female=c(223.4,221.5,230.2,224.3,223.8,230.8)

mean_male=mean(male)
sd_male=sd(male)
summary(male)

mean_female=mean(female)
sd_female=sd(female)
summary(female)

t.test(male, female, alternative="two.sided",var.equal=FALSE,conf.level=0.95)

#Q3
#(a); negative. Since the p-value is 0.04, the test rejected null hypothesis.
#	Therefore the test supports H1, "the test has some effect."

#(b); correct.
#(c); negative. The probability of commintting the type 1 error is alpha, 0.05.
#(d); negative. The probability of commintting the type 2 error is beta, 
	bigger than 0.05.
#(e); correct.

#Q4

mod_person_a=c(248,236,269,254,249,251,260,245,239,255)*1.5
person_b=c(380,391,377,392,398,374)

wilcox.test(mod_person_a,person_b,alternative="two.sided",paired=FALSE,correct=FALSE)

#Q5

# The standard deviation quantifies scatter, 
# that is, how much the values vary from one another.
# On the other hand, the standard error of mean quantifies 
# how precisely we know the true mean of the population. 
# It takes into account both the value of the SD and the sample size.
# As the sample size goes bigger and bigger, the SEM converges into 0.

# We can see the difference between SD and SEM in the data given in Q1 and Q2.
# Example1 (using data in Q1)
score=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
sd_score = sd(score)
sem_score = sd(score)/sqrt(length(score))

# Example2 (using data in Q2)
male = c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
sd_male = sd(male)
sem_male = sd(male)/sqrt(length(male))