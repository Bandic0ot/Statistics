# Matthew Mulenga
# Variables
N <- 1132
n <- 20
yBarU <- 10.3

treeDiameter <- c(12.0, 11.4, 7.9, 9.0, 10.5, 7.9, 7.3, 10.2, 11.7, 11.3,
                  5.7, 8.0, 10.3, 12.0, 9.2, 8.5, 7.0, 10.7, 9.3, 8.2)

treeAge <- c(125, 119, 83, 85, 99, 117, 69, 133, 154, 168,
             61, 80, 114, 147, 122, 106, 82, 88, 97, 99)

x <- treeDiameter
y <- treeAge

# Part A
plot(treeAge ~ treeDiameter)

# Part B
xBar <- mean(x)
yBar <- mean(y)

bHat <- yBar / xBar

yBar
xBar

d <- y - (bHat * x)
dVariance <- sum(d^2) / (n - 1) 
stdBHat <- sqrt ((1 - n/N) * dVariance / n) / xBar
mem <- qt(0.975, df = n - 1) * stdBHat

output <- c(bHat, stdBHat, bHat - mem, bHat + mem)
names(output) <- c("Est.", "S.E.", "ci.low", "ci.upp")
output

abline (a = 0, b = output)

# Part C
xBarU <- x / N

lmfit <- lm (y ~ x)

bHat <- lmfit$coefficients
eFit <- lmfit$residuals

cbind (x, y, eFit)

SSe <- sum(eFit^2) / (n - 2) 

yHatReg <- bHat[1] + bHat[2] * xBarU
seYHatReg <- sqrt((1-n/N) * SSe / n)

mem <- qt(0.975, df = n - 2) * seYHatReg

output <- c(yHatReg, seYHatReg, yHatReg - mem, yHatReg + mem)
names (output) <- c("Est.", "S.E.", "ci.low", "ci.upp" )

output
output * N
