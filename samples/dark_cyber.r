# In a land shrouded in mystery...

cyber_name <- "Dark Cyber"
construction_year <- 1100
destruction_year <- 1678

calc_duration <- function(construction_year, destruction_year) {
  return(destruction_year - construction_year)
}

duration <- calc_duration(construction_year, destruction_year)
cat("The duration of", cyber_name, "was", duration, "years.\n")

# ...there stood a Dark Cyber
