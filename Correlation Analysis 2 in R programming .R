# Correlation Analysis in R programming 2 
### Reading the data 
data <- read.table("twosample.txt", header = TRUE)
View(data)
attach(data)
names(data)

### Scatterplot between x and y
plot(x,y, pch = 20, col = "red", main = "Scatterplot")
abline(lm(y~x)) # drawing a line of best fit 

### This shows a strong positive correlation between the two variables 

### Checking this manually 
### first find the variance of both x and y 
var(x)
var(y)

### Next find the covariance for both x and y 
var(x,y)

### Therefore the corrrelation coefficient is given by 

var(x,y) / sqrt(var(x) * var(y))

### Checking this with simple r code 
cor(x,y) #this does all the calculations for you. 


### Data dredging 
data<-read.table("Pollute.txt", header = TRUE)
View(data)
attach(data)
### Showing the correlation for multiple data 
cor(data)

### Showing the correlation for two variables
cor(Pollution, Rain)

### Another way
cor(data$Pollution, data$Rain)

### Correlation test. This shows the significance of correlation 
cor.test(Pollution, Rain)

### Correlation and the variance of difference between variables 
cor(Pollution, Rain)
cor.test(Pollution, Rain)

### Investigating the correlation coeffecient and the three variances 
varp <- var(Pollution)
varr <- var(Rain)
vard <- var(Pollution - Rain)

varp; varr; vard #Showing the values in rows 

### The correlation coefficient rho is these three variances. the correlation coefficient is 
(varp + varr -vard) / (2 * sqrt(varp) * sqrt(varr))

### This checks out 

### Checking whether the variance of the difference is equal to the sum of the component variances 
vard
varp + varr

### These are not the same. They would be equal only if the two samples were independent 

