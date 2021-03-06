#' tinsel: Transform Functions using Decorators
#'
#' tinsel provides a decorator syntax for R allowing decoration and
#' transformation of functions using \code{#.} comments.
#'
#' @details
#'
#' To the package in action save the code snippet below to a file, run
#' \code{\link{source_decoratees}} on the file, and then call \code{tmbg()} or
#' \code{cats(5)}.
#'
#' \preformatted{
#' # emphasize text
#' emph <- function(f, style = '**') {
#'   function(...) {
#'     if (length(style) == 1) {
#'       paste(style, f(...), style)
#'     } else {
#'       paste(style[1], f(...), style[2])
#'     }
#'   }
#' }
#'
#' #. emph
#' tmbg <- function() {
#'   'tmbg are okay'
#' }
#'
#' #. emph(c('<b>', '</b>'))
#' cats <- function(n) {
#'   paste(rep('cats', n), collapse = ' ')
#' }
#' }
#'
#' The call you make to \code{tmbg} is equivalent to \code{emph(tmbg)}. The
#' second example, \code{cats(5)}, illustrates passing arguments to the
#' decorator function.
#'
#' While the above examples are small hopefully you begin to see how decorators
#' may be used to transform or ensure function output without modifying the
#' function's code by hand.
#'
#' @docType package
'_PACKAGE'
