# Import functions and the csv
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
highschool <- read.csv("~/Development/Statistics/STAT 348/R/data/highschool.csv")

numOfFemSmokers <- highschool$NumFemIntv * (highschool$NumSmokers / highschool$NumFemIntv)
numOfFemSmokers

percent <- srs_ratio_est(numOfFemSmokers, highschool$NumFemStudents, 29)
percent

total <- srs_mean_est(numOfFemSmokers, 29)
total * 29

