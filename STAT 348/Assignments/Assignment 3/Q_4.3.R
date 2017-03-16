# Import functions
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")

# Variables
N <- 1132
n <- 20
yBarU <- 10.3

treeDiameter <- c(12.0, 11.4, 7.9, 9.0, 10.5, 7.9, 7.3, 10.2, 11.7, 11.3,
                  5.7, 8.0, 10.3, 12.0, 9.2, 8.5, 7.0, 10.7, 9.3, 8.2)

treeAge <- c(125, 119, 83, 85, 99, 117, 69, 133, 154, 168,
             61, 80, 114, 147, 122, 106, 82, 88, 97, 99)

# Part A
plot(treeAge ~ treeDiameter)

# Part B
ratioEstimate <- srs_ratio_est (treeAge, treeDiameter, N)
ratioEstimate

abline(a = 0, b = ratioEstimate)

# Part C
lm.tree <- lm(treeAge ~ treeDiameter)
summary (lm.tree)
plot(treeDiameter, treeAge)
abline (lm.tree)

dev.off ()