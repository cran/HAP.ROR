\name{HAP.ROR-package}
\alias{HAP.ROR-package}
\alias{HAP.ROR}
\docType{package}
\title{
Recursive Organizer (ROR)
}
\description{
functions to perform ROR for sequence-based association analysis
}
\details{
\tabular{ll}{
Package: \tab HAP.ROR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-03-23\cr
License: \tab GPL-2\cr
}

}
\author{
Lue Ping Zhao and Xin Huang \cr
Maintainer: Xin Huang <xhuang.fhcrc@gmail.com>

}
\references{
Zhao, L.P. and Huang, X. Recursive organizer (ROR): an analytic framework for sequence-based association analysis. Human Genetics, 2013
}
%\keyword{ }
%\seealso{
%%~~ Optional links to other man pages, e.g. ~~
%%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
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

}
