#' Show objects of class Candidate
#'
#' Inputing an object of class Candidate shows the object
#'
#' @param object of class Candidate
#'
#' @return print of class candidate
#' @author David Flaserstein
#' @rdname showCandidate
#' @export
setMethod("show", 
          signature(object="Candidate"),
          function(object){
            print(object)
          })
