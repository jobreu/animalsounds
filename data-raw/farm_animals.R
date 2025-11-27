## code to prepare `farm_animals` dataset goes here

animal <- c("cow", "pig", "sheep", "chicken", "horse")
sound <- c("moo", "oink", "baa", "cluck", "neigh")

farm_animals <- data.frame(
  animal = animal,
  sound = sound)

usethis::use_data(farm_animals, overwrite = TRUE)
