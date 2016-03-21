#' A squared value object 
#' 
#' Object of class \code{Candidate} as created by the \code{Candidate} functions
#'
#' 
#' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} The added or subtracted squared values
#' \item \code{delegatesWon} The added or subtracted squared values
#' \item \code{party} The first input
#' \item \code{delegatesNeeded} the second input 
#' }
#'
#' @author David P. Flasterstein: \email{davidflasterstein@@wustl.edu}
#' @aliases AllSquares-class initialize,AllSquares-method getSquares,AllSquares-method 
#' @rdname Candidate
#' @export
setClass(Class="Candidate",
         representation = representation(
           name = "character",
           delegatesWon = "numeric",
           party = "character",
           delegatesNeeded = "numeric"
         ),
         prototype = prototype(
           name = c(),
           delegatesWon = c(),
           party = c(),
           delegatesNeeded = c()
         )
)
setValidity("Candidate", function(object){
  # Checks party names are capitalized and have correct spelling
  if(!(object@party == "Democrat" | object@party == "Republican")){
    return("Party name needs to be Democrat or Republican")
  }
  # Checks delegates won is a positive number
  if(object@delegatesWon < 0 ) {
    return("Delegates won needes to be a positive number.")
  }
  # Cheecks number of democrat delegates won is less than total number of delegates
  if(object@party == "Democrat" & object@delegatesWon > 4765){
    return("Democrats have a total of 4,765 delegates. Your input must be lower than this.")
  }
  # Cheecks number of republican delegates won is less than total number of delegates
  if(object@party == "Republican" & object@delegatesWon > 2472){
    return("Republicans have a total of 2,472 delegates. Your input must be lower than this.")
  }
}
)







