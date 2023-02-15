
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PRFgrowth

<!-- badges: start -->
<!-- badges: end -->

Implementation of age-independent height growth and height growth-rate
models for mixedwood forest in the Petawawa Research Forest.

## Installation

You can install the development version of PRFgrowth like so:

``` r
install.packages("devtools")
devtools::install_github("jgriofrio/PRFgrowth")
library(PRFgrowth)
```

## Example

The functions `Hgrowth` and `HGindex` return the estimate of the height
growth and growth rate index at reference height for a given period
length, respectively.

``` r
library(PRFgrowth)
libraty(dplyr)

sampledat

Hdat<-Hgrowth(sampledat,ForT=sampledat$ForType,H0=sampledat$H0,Dt=7)
HGindex(df=Hdat,ForT=Hdat$ForType,H0=Hdat$H0,H1=Hdat$H1,Hr=15,Dt=7)
```

## References

Riofrío, J., White, J.C., Tompalski, P., Coops, N.C., Wulder, M.A.,
2022. Harmonizing multi-temporal airborne laser scanning point clouds to
derive periodic annual height increments in temperate mixedwood forests.
Can. J. For. Res. 52, 1334–1352.

Riofrío, J., White, J.C., Tompalski, P., Coops, N.C., Wulder, M.A.,
2023. Modelling height growth of temparate mixedwood forests using an
age-independent apporach and multiu-temporal airborne laser scanning
data .
