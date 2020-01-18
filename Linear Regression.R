#simple linear regression

data1 <- c(48.5, 54.5, 61.25, 69, 74.5, 85, 89, 99, 112, 123, 134, 142)
data2 <- c( 8, 9.44, 10.08, 11.81, 12.28, 13.61, 15.13, 15.47, 17.36, 18.07, 20.79, 16.06)

#correct 
plot(data1, data2)
fit2 <- lm(data2 ~ data1)
fit2

#residuals 
res <- signif(residuals(fit2), 5)
pre <- predict(fit2)
plot( data1, data2)

segments(data1, data2, data1, pre, col="red")
abline( fit2,col=3,lty=3)

#de-trended graph
fit2.stdRes = rstandard(fit2)
plot(fit2.stdRes, col="red")
abline(0,0)



######################################
#swapped values
#incorrect
plot(data2, data1)
fit3 <- lm(data1 ~ data2)
fit3

res <- signif(residuals(fit3), 5)
pre <- predict(fit3)
plot( data2, data1)

segments(data2, data1, data2, pre, col="red")
abline( fit3,col=3,lty=3)

