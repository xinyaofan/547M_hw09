context("Detect true factor")
##expect error
test_that("detect_fac can deal with invalid input", {
	a<-c(1,2,3)
	expect_error(dect_fac(a))

})
##expect success
test_that("detect_fac can detect true factor", {
	a <- factor(c("A","A","B"))
	b <- factor(c("1","2","2"))
  expect_identical(dect_fac(a), "It is a factor")
	expect_identical(dect_fac(b), "It is a factor")
})

##expect success
test_that("detect_fac can detect character", {
   a<-factor(c("small","medium","big"))
   b<-factor(c("1","2","3"))
	expect_identical(dect_fac(a),"It is a character not factor")
	expect_identical(dect_fac(b),"It is a character not factor")
})



