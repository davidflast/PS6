#' Create objects of class candidate
#'
#' Creates an object of class candidate using some inputs
#'
#' @param x A numeric object
#' @param y A numeric object with the same dimensionality as \code{x}.
#'
#' @return An object of class Candidate containing
#'  \item{name}{the name of the candidate}
#'  \item{delegatesWon}{The number of delegates won} 
#'  \item{party}{The political party of the candidate}
#' @author David Flaserstein
#' @examples
#' 
#' createCandidate(name = "Hillary", delegatesWon = 100, party = "democrat")
#' @seealso \code{\link{Candidate}}
#' @rdname createCandidate
#' @export
createCandidate <- function(name, delegatesWon, party){
    if (party == "Democrat") delegatesNeeded = max(0, 2383 - delegatesWon)
    if (party == "Republican") delegatesNeeded =  max(0, 1237 - delegatesWon)
    candidate <- new("Candidate", name = name, 
                      delegatesWon = delegatesWon,
                      party = party,
                      delegatesNeeded = delegatesNeeded)
    return(candidate)
} 
