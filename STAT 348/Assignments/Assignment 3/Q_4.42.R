# Import functions and the csv
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
trucks <- read.csv ("~/Development/Statistics/STAT 348/R/data/vius.csv", header = T, na = ".")

# Total of number of vehicles used in sampling can be found with 
N <- sum(trucks [, 5]) 

# Remove rows with NA in miles_annl or business type


# Part A
sel <- !is.na(trucks[,27]) & !is.na (trucks[, 10]) 
trucks_sel <- trucks [sel, ]

domaina <- 1 * (trucks_sel$BUSINESS)
y_star <- trucks_sel$MILES_ANNL * domaina

View(cbind (y = trucks_sel$MILES_ANNL, trucks_sel$BUSINESS, domain = domaina, y_star= y_star))
srs_ratio_est (y_star, domaina, N)

# Part B
sel <- !is.na(trucks[,12]) & !is.na (trucks[, 19]) 
trucks_sel <- trucks [sel, ]

domaina <- 1 * (trucks_sel$TRANSMSSN)
y_star <- trucks_sel$MPG * domaina

srs_ratio_est(y_star, domaina, N)


# Part C
sel <- !is.na(trucks[,10]) & !is.na (trucks[, 11]) 
trucks_sel <- trucks [sel, ]

domaina <- 1 * (trucks_sel$MILES_LIFE)
y_star <- trucks_sel$MILES_ANNL * domaina

srs_ratio_est(y_star, domaina, N)
