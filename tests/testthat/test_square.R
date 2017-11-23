context("Squaring non-numerics")
test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(square(logic_vec), logic_vec^2)
})
