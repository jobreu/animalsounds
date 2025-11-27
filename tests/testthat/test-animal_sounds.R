test_that("multiplication works", {
  expect_equal(animal_sounds("dog", "woof"), "The dog says woof!")
})

test_that("animal_sounds handles invalid inputs", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               regexp = "`animal` must be a character vector of length 1")
})
