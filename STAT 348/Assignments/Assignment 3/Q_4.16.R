# Import functions and the csv
source ("~/Development/Statistics/STAT\ 348/R/estimates.r")
agsrs <- read_csv("~/Development/Statistics/STAT 348/R/data/agsrs(Revised).csv")

n <- nrow (agsrs)
yh <- tapply (agsrs$acres92, INDEX = agsrs$region, FUN = mean); yh
sh <- tapply (agsrs$acres92, INDEX = agsrs$region, FUN = sd); sh

nh_obs <- table (agsrs$region); nh_obs
ph_obs <- nh_obs/sum (nh_obs); ph_obs

Nh <- c(1054, 220, 1382, 422)

ph <- Nh/sum (Nh); ph
nh <- Nh/sum (Nh) * n

strata_mean_estimate (yh, sh, nh, Nh)
