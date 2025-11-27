test_that("multiplication works", {
  expect_equal(animal_sounds("dog", "woof"), "The dog says woof!")
})

test_that("animal_sounds handles invalid inputs", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               class = "error_wrong_length_or_not_string")
})

test_that("error message for invalid output is correct", {
  expect_snapshot(animal_sounds(c("dog", "cat"), "meow"),
                  error = TRUE)
})

test_that("animals can make no sound", {
  expect_equal(animal_sounds("giraffe"), "The giraffe makes no sound!")
})
