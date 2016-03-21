#' Show objects of class Candidate
#'
#' Inputing an object of class Candidate shows the object
#'
#' @param x object of class Candidate
#'
#' @return print each individual element of Candidate
#' @author David Flaserstein
#' @rdname printCandidate
#' @export
setMethod(f = "print",
          signature = "Candidate",
          definition = function (x, ...) {
            print(paste(x@name, "a", x@party))
            print(paste("Delegates Won:", x@delegatesWon))
            print(paste("Delegates Needed:", x@delegatesNeeded))
          }
)