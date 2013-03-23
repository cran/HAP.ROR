\name{AIC}
\alias{AIC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
AIC/Deviance calculation
}
\description{
function for AIC/Deviance calculation given index of deleted SNPs
}
\usage{
AIC(case.sub, ctl.sub, lib.sub, lib.sub.names, deleted.snps, ref = "NA")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{case.sub}{
case subjects, two columns for two haplotypes
}
  \item{ctl.sub}{
control subjects, two columns for two haplotypes
}
  \item{lib.sub}{
the alleles library contains allele sequences for those only appear in the case and control samples
}
  \item{lib.sub.names}{
the corresponding names of the alleles
}
  \item{deleted.snps}{
a vector of positions of deleted SNPs
}
  \item{ref}{
allele names for the reference level, the default reference level (ref="NA") is the most common allelels
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{logLK }{log-likelihood}
\item{AIC }{AIC}
\item{res }{ the result object return from GLM}
\item{dev }{deviance}
\item{df }{degree of freedom}
\item{dev.null }{deviance for null model}
\item{df.null }{degree of freedom for null model}

}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Xin Huang
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
