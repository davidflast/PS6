
#' A squared value object 
#' 
#' Object of class \code{Candidate} as created by the \code{Candidate} functions
#'
#' 
#' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} Name of the Candidate
#' \item \code{delegatesWon} Delegates the Candidate has won so far
#' \item \code{party} The political party of the Candidate
#' \item \code{delegatesNeeded} How many more delegates the Candidate needs to win
#' }
#'
#' @author David P. Flasterstein: \email{davidflasterstein@@wustl.edu}
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
# Calculates the number of delegates needed
needDelegates <- function(p, dw){
  delegatesNeeded <- NA
  if (p == "Democrat") {
    delegatesNeeded = max(0, 2383 - dw)
  }
  if (p == "Republican") {
    delegatesNeeded =  max(0, 1237 - dw)
  }
  return(delegatesNeeded)
}
#' @export
setMethod("initialize", "Candidate", 
          function(.Object,name, delegatesWon, party, ...){
            .Object@name = name
            .Object@delegatesWon = delegatesWon
            .Object@party = party
            .Object@delegatesNeeded = needDelegates(party, delegatesWon)
            return(.Object)
          }
) 








