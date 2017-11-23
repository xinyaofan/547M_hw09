context("Squaring non-numerics2")
test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(square(numeric(0)), numeric(0))
	expect_identical(square(num_vec), num_vec^2)
})
