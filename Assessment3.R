library(dslabs)
data(heights)
options(digits = 3)   
library(dplyr)

ind <- heights$height > mean(heights$height) & heights$sex == 'Female'
sum(ind)

mean(heights$sex=='Female')

ind <- match(50, heights$height)
ind
heights$sex[ind]

max(heights$height)
x<-seq(min(heights$height), max(heights$height))
ind <- x %in% heights$height
sum(!ind)

heights2 <- mutate(heights, ht_cm = height * 2.54)
heights2$ht_cm[18]
mean(heights2$ht_cm)

females <- filter(heights2, sex == 'Female')
nrow(females)
mean(females$ht_cm)