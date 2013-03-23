\name{ODS.ror}
\alias{ODS.ror}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
output and plot for ROR result
}
\description{
function for output tables and figures related to ROR result
}
\usage{
ODS.ror(case.sub, ctl.sub, lib.sub, lib.sub.names, records, dev.list, AIC.list, deleted.snps.ls, proteinf, locus = "DRB1*", ref.level = "101")
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
the corresponding names of the alleles (mapping of full name in the library and short name in samples)

}
  \item{records}{
the record of the whole ROR process
}
  \item{dev.list}{
deviances for all steps of ROR
}
  \item{AIC.list}{
AICs for all steps of ROR
}
  \item{deleted.snps.ls}{
the history of SNP deletions for all steps of ROR
}
  \item{proteinf}{
amino acid matrix for the currsponding alleles
}
  \item{locus}{
name of locus
}
  \item{ref.level}{
name of reference allele
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
\references{
Zhao, L.P. and Huang, X. Recursive organizer (ROR): an analytic framework for sequence-based association analysis. Human Genetics, 2013
}
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
\examples{
library("HAP.ROR")
data(case.sub)
data(ctl.sub)
data(lib.sub)
data(lib.sub.names)
ror.res <- HAP.ror(case.sub, ctl.sub, lib.sub, lib.sub.names, alpha=0.01, ref.level="101");

# grouping result:
round(ror.res$dev.list, 2);
round(ror.res$AIC.list, 2);
ror.res$df.list;
ror.res$deleted.snps;
ror.res$grp.result;
ror.res$significant;
# model summary:
ror.res$model.summary;
# output tables and figures used for ror result
data(proteinf)
ODS.ror(case.sub=case.sub, ctl.sub=ctl.sub, lib.sub=lib.sub, lib.sub.names=lib.sub.names, records=ror.res$records, dev.list=ror.res$dev.list, AIC.list=ror.res$AIC.list, deleted.snps.ls=ror.res$deleted.snps.ls, proteinf=proteinf, locus="DRB1*", ref.level="101");
cat("ROR result tables/figures are store in folder:", getwd(),"\n")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
