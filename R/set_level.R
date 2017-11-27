#' Set levels of a factor of the order appeared in data
#'
#' @param x a factor
#'
#' @return a factor with levels in the order appeared in data.
#'
#' @examples set_level(c("a","a","c","b"))
#' @export
set_level<- function(x){
	if(!(is.factor(x)||is.character(x))){
		stop("This input is not character or factor",
'you provided a class of ', class(x)[1])
	}
  new_order<-c(as.character(unique(x)))
	new_factor <- factor(x, levels = new_order)
	return(new_factor)
}
