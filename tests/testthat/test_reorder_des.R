context("reorder levels in descending order")

test_that("the function can reorder levels in descending order", {
	factor1<-factor(c("1", "2", "3", "4"))
	factor2<-factor(c("a","b","c","d"))
	##using function of R to reorder the levels of factors
  factor_1<- forcats::fct_rev(factor1)
  factor_2<- forcats::fct_rev(factor2)
  ## expect success
	expect_identical(levels(reorder_desc(factor1)), levels(factor_1))
	expect_identical(levels(reorder_desc(factor2)), levels(factor_2))
})

test_that("the function can reorder levels in descending order", {
	factor3<-factor(c("my","github","welcom","to"))
	factor4<-factor(c("my","github","my"))
	##using function of R to reorder the levels of factors
	factor_3<- forcats::fct_rev(factor3)
	factor_4<- forcats::fct_rev(factor4)
	## expect success
	expect_identical(levels(reorder_desc(factor3)), levels(factor_3))
	expect_identical(levels(reorder_desc(factor4)), levels(factor_4))
})

	## expect error
	test_that("reorder_des could deal with invalid input", {
		a <- 1 # wrong type of input
	  b <- c(1,2) #mutiply inputs could only deal with one input

		expect_error(reorder_desc(a))
		expect_error(reorder_desc(a))
	})
