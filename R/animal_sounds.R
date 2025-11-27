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

animal_sounds <- function(animal, sound = NULL) {

  check_arg(animal)

  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound!")
  } else {

  check_arg(sound)

  paste0("The ", animal, " says ", sound, "!")
}
}

check_arg <- function(arg, n = 1) {
  if (!rlang::is_character(arg, n = n)) {
    cli::cli_abort(c("{.var {rlang::caller_arg(arg)}} must be a character vector of length {n}.",
                     "i" = "It was {.type {arg}} of length {length(arg)} instead."),
                   call = rlang::caller_env(),
                   class = "error_wrong_length_or_not_string")
  }
}

#' Get First N Rows of Data Frame
#'
#' Return the first n rows of a data frame
#'
#' @param data A data frame
#' @param n An integer specifying the number of rows to return
#'
#' @export
first_n <- function(data, n) {
  data |>
    dplyr::slice_head(n = n)
}
