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

  check_arg(animal)

  check_arg(sound)

  paste0("The ", animal, " says ", sound, "!")
}

check_arg <- function(arg, n = 1) {
  if (!rlang::is_character(arg, n = n)) {
    cli::cli_abort(c("{.var {rlang::caller_arg(arg)}} argument must be a character vector of length {n}",
                     "i" = "It was {.type {arg}} of length {length(arg)} instead."),
                    call = rlang::caller_env())
  }
}
