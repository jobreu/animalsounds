# Prints the sound an animal makes

Prints the sound that an animal makes by creating a wrapper around
[`paste0()`](https://rdrr.io/r/base/paste.html).

## Usage

``` r
animal_sounds(animal, sound = NULL)
```

## Arguments

- animal:

  A character vector of length 1 representing the animal.

- sound:

  A character vector of length 1 representing the sound the animal
  makes.

## Value

A character string describing the sound an animal makes.

## Examples

``` r
animal_sounds("dog", "woof")
#> [1] "The dog says woof!"
```
