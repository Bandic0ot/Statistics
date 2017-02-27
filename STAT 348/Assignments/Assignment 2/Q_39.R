# Import data and some functions for computing the mean estimate
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
agstrat <- read.csv("~/Development/Statistics/STAT\ 348/R/data/agstrat.csv")

# Part A
# Assign variables
nh <- table (agstrat$region)
sh <- tapply (agstrat$acres87, agstrat$region, sd)
ybarh <- tapply (agstrat$acres87, agstrat$region, mean)
Nh <- tapply (agstrat$weight, agstrat$region, sum)
ybar <- strata_mean_estimate (ybarh, sh, nh, Nh)

# Display the results
ybar

# Plot results
boxplot(ybar)

# Part B
# Assign variables
nh <- table (agstrat$region)
sh <- tapply (agstrat$farms92, agstrat$region, sd)
ybarh <- tapply (agstrat$farms92, agstrat$region, mean)
Nh <- tapply (agstrat$weight, agstrat$region, sum)
ybar <- strata_mean_estimate (ybarh, sh, nh, Nh)

# Display the results
ybar

#Plot results
boxplot(ybar)


# Part C
# Adjust the table to only include farms with >1000 acres
agGreater <- agstrat[!(agstrat$acres92 <= 1000), ]

# Assign variables
nh <- table (agGreater$region)
sh <- tapply (agGreater$acres92, agGreater$region, sd)
ybarh <- tapply (agGreater$acres92, agGreater$region, mean)
Nh <- tapply (agGreater$weight, agGreater$region, sum)
ybar <- strata_mean_estimate (ybarh, sh, nh, Nh)

# Display the results
ybar

# Plot results
boxplot(ybar)


# Part D
# Adjust the table to only include farms with <9 acres
agFewer <- agstrat[!(agstrat$acres92 > 9),]

# Assign variables
nh <- table (agFewer$region)
sh <- tapply (agFewer$acres92, agFewer$region, sd)
ybarh <- tapply (agFewer$acres92, agFewer$region, mean)
Nh <- tapply (agFewer$weight, agFewer$region, sum)
ybar <- strata_mean_estimate (ybarh, sh, nh, Nh)

# Display the results
ybar

