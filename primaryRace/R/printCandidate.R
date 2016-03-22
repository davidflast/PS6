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
            print("Presidential primary contender")
            print(paste(x@name, ", a ", x@party, ", ", sep=""))
            print(paste("has won", x@delegatesWon, "delegates "))
            print(paste("and needs", x@delegatesNeeded, "more to win."))
          }
)
?print
?show
?paste
