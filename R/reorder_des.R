#' Reorder a factor using desc from dplyr
#'
#' You can use this function to reorder a factor in descending order.
#'
#' @param x factor
#'
#' @return factor
#' @export
#'
#' @examples
#'
#' a<- factor(c("a", "b", "c", "d"))
#' reorder_desc(a)

reorder_desc<- function(x) {
	if(!is.factor(x)) {
		stop("Your input is not factor,
				 you privided a class of ", class(x)[1])
	}
	stats::reorder(x, dplyr::desc(x))
}

