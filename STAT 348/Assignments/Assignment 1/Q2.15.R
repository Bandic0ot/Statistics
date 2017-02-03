# Read in the csv file.
agsrs <- read.csv ("~/Development/Statistics/STAT\ 348/R/data/agsrs.csv")

# Extract the acres87 column and assign it to a variable
sdata <- agsrs$acres87

sum(sdata)
hist(sdata)

# Extract the farms92 column and assign it to a variable
sdata <- agrs$farms92

sum
