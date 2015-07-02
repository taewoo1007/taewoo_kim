#2015.07.02
#Q1


P <- read.csv("/Users/VAIO/Desktop/DATA SCIENCE/SKKU_DataScience_2015-master/SKKU_DataScience_2015-master/data_sets/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

y1999 <- P[P$Year==1999,]
y2005 <- P[P$Year==2005,]

hist(log10(y1999$Value))
hist(log10(y2005$Value))

t.test(log10(y1999$Value),log10(y2005$Value))
