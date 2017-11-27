context("sets levels to the order in which they appear in the data")

test_that("the function can set the levels in the right order", {
	factor1<-factor(c("2","2","1","4"))
	factor2<-factor(c("b","b","c","a"))
	## reorder the levels of factors by myself
	factor_1<- c("2","1","4")
	factor_2<- c("b","c","a")
	## expect success
	expect_identical(levels(set_level(factor1)), factor_1)
	expect_identical(levels(set_level(factor2)), factor_2)
})
test_that("the function can set the levels in the right order", {
	factor3<-factor(c("my","github","my"))
	## reorder the levels of factors by myself
	factor_3<-c("my","github")
	## expect success
	expect_identical(levels(set_level(factor3)), factor_3)

})
## expect error
test_that("set_level could deal with invalid input", {
	a <- 1 # wrong type of input
	b <- c(1,2) #mutiply inputs could only deal with one input
	expect_error(set_level(a))
	expect_error(set_level(a))
})
