#' Shows proportion need to win
#'
#' Shows the porportion of remaining delegates candidate needs to win
#'
#' @param object of class Candidate
#' @param remainingDelegates number of remaining delegates
#'
#' @return print each individual element of Candidate
#' @author David Flaserstein
#' @rdname printCandidate
#' @export
setGeneric("propNeeded",
           function(object="Candidate", remainingDelegates = "numeric") {
             standardGeneric("propNeeded")
             } )
#' @export
setMethod(f = "propNeeded",
          signature = "Candidate",
          definition = function (object, remainingDelegates) {
            return (object@delegatesNeeded / remainingDelegates)
          }
)