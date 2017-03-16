# Import functions and the csv
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
counties <- read_csv("~/Development/Statistics/STAT 348/R/data/counties.csv")

#Variables
N <- 3148
n <- 100
physicians <- counties$physician
countyPopulation <- counties$totpop
auxPop <- 255077536

# Part A
hist(physicians)

# Part B
N <- 3148

yBar <- srs_mean_est(physicians) * N

yBar

# Part C
plot(physicians ~ countyPopulation)

# Part D
ratioEstimate <- srs_ratio_est(physicians, countyPopulation) * auxPop
ratioEstimate
