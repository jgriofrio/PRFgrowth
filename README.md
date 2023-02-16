
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
## Forest type identification codes

<!-- TABLE_GENERATE_START -->

| Forest type    | Code  | Description                    |
| :---------- | :----: | :----------------- |
| White Spruce| SW    | Planted white spruce stands with various initial densities and subsequent management activities, in some cases with an understory of poplar and hardwoods |
| Jack Pine   | PJ    | Naturally occurring and planted jack pine stands at various densities |
| White Pine  | PW    | Stands dominated by white pine covering a range of plantations and managed and unmanaged natural stands in a mixture of red pine and an understory of other tree species |
| Red Pine    | PR    | Natural and managed stands dominated by red pine |
| Mixedwood conifer | MXC | Mixed species conifer stands with a range of species proportions dominated by black spruce, white spruce and balsam fir|
| Mixedwood hardwood | MXH  | Hardwood mixed species stands with various species proportions of red maple, poplar and white spruce, with a lesser component of yellow birch, oak  |
| Intolerant hardwood | INT   | Natural stands dominated by poplar (large-tooth and trembling aspen leading) and often mixed with other hardwoods and conifers |
| Tolerant hardwood | HD    | Stands covering a range of structures and associated species (sugar maple, yellow birch, with a lesser component of red maple, beech, oak, hemlock, spruce and balsam fir) |
| Red Oak | OR    | Natural immature and mature oak dominant and oak-pine mixed stands, often with an understory of poplar and hardwoods |

<!-- TABLE_GENERATE_END -->

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
