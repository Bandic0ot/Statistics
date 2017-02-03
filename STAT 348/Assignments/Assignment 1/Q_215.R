# Read in the csv file.
agsrs <- read.csv ("~/Development/Statistics/STAT\ 348/R/data/agsrs.csv")

# Extract the acres87 column and assign it to a variable
sdata <- agsrs$acres87
# Extract the farms92 column and assign it to a variable
sdata2 <- agsrs$farms92
# Extract the acres92 column and assign it to a variable
sdata3 <- agsrs$acres92

# Mean etsimate function
srs_mean_est <- function (sdata, N = Inf)
{
  n <- length (sdata)
  ybar <- mean (sdata)
  se.ybar <- sqrt((1 - n / N)) * sd (sdata) / sqrt(n)  
  mem <- qt (0.95, df = n - 1) * se.ybar
  c (Est. = ybar, S.E. = se.ybar, ci.low = ybar - mem, ci.upp = ybar + mem)
}

# Part A
# Obtain the mean estimate for acres87
srs_mean_est(agsrs[,"acres87"], N = 3078)

plot(sdata)

#Part B
# Obtain the mean estimate for farms92 with >= 1000 acres
srs_mean_est(agsrs[, "farms92"], N = 3078)

plot(sdata2)

#Part C
acresGreater <- as.numeric (agsrs[,"farms92"] >= 1000)
srs_mean_est(acresGreater, N = 3078)

plot(acresGreater)
#Part D
acresFewer <- as.numeric (agsrs[,"farms92"] <= 9)
srs_mean_est(acresFewer, N = 3078)

plot(acresFewer)



