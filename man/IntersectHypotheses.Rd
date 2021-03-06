% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IntersectHypotheses.R
\name{IntersectHypotheses}
\alias{IntersectHypotheses}
\title{Intersection of hypotheses}
\usage{
IntersectHypotheses(hyplst)
}
\arguments{
\item{hyplst}{A list of integer vectors representing the elementary hypotheses.}
}
\value{
\itemize{
\item{\code{hypothesis}}{ The hypothesis tree described as lists hypotheses at each intersection level.}
\item{\code{relations}}{ The relation structure of the hypotheses tree used for plotting.}
\item{\code{hypnames}}{ Character representations of the hypotheses used for summary tables and plotting.}
\item{\code{connections}}{ The connections used for calculating the adjusted p-values.}
}
}
\description{
Generation of the hypotheses tree of a closed testing procedure (CTP). The function returns an object of \code{oldClass "ctp.str"};
\code{summary} and \code{Display} can be applied.
}
\details{
Sets of elementary hypotheses are described by lists of integer vectors eg. \code{list(1:2, c(1,3), c(1,4))}
if the populations 2, 3 and 4 have to be compared to population 1.
For the generation of the hypothesis tree of a closed testing procedure first all intersections of the elementary hypothese;
then all intersections of these intersections etc. have to be created. The set of hypotheses at each intersection level must be
reduced by deleting double hypotheses and creating unions. The size of the hypothesis tree increases rapidly with growing number of elementary hypotheses,
which can lead to memory and/or time problems!
	The intersection procedure ends if a single hypothesis (the global hypothesis) is left.
}
\note{
This procedure is constructed for null-hypotheses describing the equality of the same parameter for different populations. 
 \cr
 \cr
\emph{Warning}:
The size of the hypothesis tree increases rapidly with growing number of elementary hypotheses. This can lead to memory and/or time problems!
}
\examples{

hlist  <- list(1:2, c(1,3), c(1,4))
htree  <- IntersectHypotheses(hlist)
summary(htree)
Display(htree)


# compare in a set of six means all others to the fourth mean
#
five.to.fourth <- IntersectHypotheses(list(c(1,4),c(2,4),c(3,4),c(4,5),c(4,6)))
Display(five.to.fourth)

}
\seealso{
\code{\link{AnalyseCTP}} \code{\link{Adjust_raw}}
}
