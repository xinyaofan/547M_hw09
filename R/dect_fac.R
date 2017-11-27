#' Detect factors whether the factor is truly a character.
#'
#' @param x factor
#'
#' @return character

#' @examples
#' a<-factor(c("1", "2", "3"))
#' b<-factor(c("1","2","2"))
#'
#' # It is a chracter not factor
#' dect_fac(a)
#'
#' # It is a factor
#' dect_fac(b)
#'
#' @export
dect_fac<- function(x){
	if(!(is.factor(x)||is.character(x))){
		stop ("Your input is not factor or character",
					'You have provided an object of class: ', class(x)[1])}
	if (length(x)==length(unique(x))){
		print("It is a character not factor")
	}else print("It is a factor")
}

