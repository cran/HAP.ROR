\name{collapse}
\alias{collapse}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
group assignment
}
\description{
function for assign group info to samples after collapsing
}
\usage{
collapse(case, ctl, lib, names, snp.de = -1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{case}{
case samples: 1st_col=haplotype_1, 2nd_col=haplotype_2
}
  \item{ctl}{
control samples: 1st_col=haplotype_1, 2nd_col=haplotype_2
}
  \item{lib}{
the tag-SNPs library *.4d with the only alleles appear in sample
}
  \item{names}{
corresponding allele names in the same format as appear in sample
}
  \item{snp.de}{
the column position of a list of SNPs to be deleted, default no delete
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%}
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
