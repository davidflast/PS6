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
           name = character(),
          delegatesWon = numeric(),
           party = character(),
           delegatesNeeded = numeric()
         )
)







