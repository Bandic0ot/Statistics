# Import data and some functions for computing the mean estimate
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
seals <- read.csv("~/Development/Statistics/STAT\ 348/R/data/seals.csv")

# Assign variables
N <- nrow(seals)

nh <- table(seals$zone)
sh <- tapply(seals$holes, seals$zone, sd)
ybarh <- tapply(seals$holes, seals$zone, mean)
Nh <- tapply (rep(1, N), seals$zone, sum)
ybar <- strata_mean_estimate (ybarh, sh, nh, Nh)

# Display the results
ybar
