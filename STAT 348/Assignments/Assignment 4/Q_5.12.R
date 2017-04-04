# Import functions and the csv
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
coots <- read.csv("~/Development/Statistics/STAT 348/R/data/coots.csv")

lengthEstimate <- cluster_ratio_est (coots, "clutch", "csize", "length")
lengthEstimate

length <- tapply (coots$length, coots$clutch, mean)
clutch <- tapply (coots$csize, coots$clutch, function (x) x[1])
plot.default(clutch, length)
