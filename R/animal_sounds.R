#' Prints the sound an animal makes
#'
#' Prints the sound that an animal makes.
#'
#' @param animal A character vector of length 1 representing the animal.
#' @param sound A character vector of length 1 representing the sound the animal makes.
#'
#' @returns A character string describing the sound an animal makes.
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")

animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)

  paste0("The ", animal, " says ", sound, "!")
}
