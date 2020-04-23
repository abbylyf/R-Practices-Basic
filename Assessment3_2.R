library(dslabs)
library(dplyr)
data(olive)
head(olive)

x <- olive$palmitic
y <- olive$palmitoleic
plot(x,y)

hist(olive$eicosenoic)

#boxplot(palmitic~region, data = olive)
