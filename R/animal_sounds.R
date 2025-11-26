#' Prints the sound an animal makes
#'
#' Prints the sound that an animal makes by creating a wrapper around [paste0()].
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

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort("The `animal` argument must be a character vector of length 1.")
  }

  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort("The `sound` argument must be a character vector of length 1.")
  }

  paste0("The ", animal, " says ", sound, "!")
}
