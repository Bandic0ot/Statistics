# Import functions
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")

# Variables
N <- 1132
n <- 20

treeDiameter <- c(12.0, 11.4, 7.9, 9.0, 10.5, 7.9, 7.3, 10.2, 11.7, 11.3,
                  5.7, 8.0, 10.3, 12.0, 9.2, 8.5, 7.0, 10.7, 9.3, 8.2)

treeAge <- c(125, 119, 83, 85, 99, 117, 69, 133, 154, 168,
             61, 80, 114, 147, 122, 106, 82, 88, 97, 99)

# Part A
plot(treeDiameter ~ treeAge)

# Part B
ratioEstimate <- srs_ratio_est (treeDiameter, treeAge, N)
ratioEstimate * N

abline(a = 0, b = ratioEstimate)

# Part C
lm.tree <- lm(treeDiameter ~ treeAge)
summary (lm.tree)
plot(treeAge, treeDiameter)
abline (lm.tree)

srs_reg_est_mean(ydata = treeDiameter, xdata = treeAge, xbarU= 10.3, N = 1132) * 20

dev.off ()
