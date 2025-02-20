
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PRFgrowth - Height and height growth rate models for mixedwoods in the Petawawa Research Forest"

<!-- badges: start -->
<!-- badges: end -->

## Package description

`PRFgrowth` is the implementation of growth functions developed from
repeat airborne laser scanning acquisitions at the Petawawa Research
Forest.

Currently, two functions are available, `Hmodel` returns the estimate
of the final top height and `HGSIndex` calculates the height growth rate
index at a reference height for a given period.

`HGSIndex` provides a comprehensive indicator of site quality based on
age-independent height growth models `Hmodel` for various forest types
in the Great Lakes–St. Lawrence Forest region in southern Ontario,
Canada.

|       Forest        | Code |                                                                                Description                                                                                 |
|:-------------------:|:----:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|    White Spruce     |  SW  |         Planted white spruce stands with various initial densities and subsequent management activities, in some cases with an understory of poplar and hardwoods          |
|      Jack Pine      |  PJ  |                                                   Naturally occurring and planted jack pine stands at various densities                                                    |
|     White Pine      |  PW  |  Stands dominated by white pine covering a range of plantations and managed and unmanaged natural stands in a mixture of red pine and an understory of other tree species  |
|      Red Pine       |  PR  |                                                              Natural and managed stands dominated by red pine                                                              |
|  Mixedwood conifer  | MXC  |                          Mixed species conifer stands with a range of species proportions dominated by black spruce, white spruce and balsam fir                           |
| Mixedwood hardwood  | MXH  |             Hardwood mixed species stands with various species proportions of red maple, poplar and white spruce, with a lesser component of yellow birch, oak             |
| Intolerant hardwood | INT  |                       Natural stands dominated by poplar (large-tooth and trembling aspen leading) and often mixed with other hardwoods and conifers                       |
|  Tolerant hardwood  |  HD  | Stands covering a range of structures and associated species (sugar maple, yellow birch, with a lesser component of red maple, beech, oak, hemlock, spruce and balsam fir) |
|       Red Oak       |  OR  |                            Natural immature and mature oak dominant and oak-pine mixed stands, often with an understory of poplar and hardwoods                            |

The under-development version of PRFgrowth can be installed like so:

``` r
#install.packages("devtools")
#devtools::install_github("jgriofrio/PRFgrowth")
library(PRFgrowth)
```

### `Hmodel`

`Hmodel` estimates the final top height based on the initial height `H0`
and period length `Dt`. The function allows for predicting height
increments for different period lengths and obtaining instantaneous
growth estimates based on height as a state variable instead of age.

``` r
Hmodel(H0=10, ForT='PJ',Dt=7)
#> [1] 13.41243
```

### `HGSIndex`

`HGSIndex` estimates the height growth index based on the height
increment `(H1-H0)/Dt` and at height reference `Hr`. `H1` and `H0` are
the top height at the final and beginning of the growth period,`Dt` is the
period length. `Hr` is an arbitrary and user-defined value analogous to the
reference age for height-age site index models. The selected reference
height is a balance between the size at which the most dominant trees
would have surpassed the initial period of intense competition following
their establishment and a height that can be conveniently measured.

``` r
HGSIndex(H0=10, H1=15, ForT='PJ',Hr=15,Dt=7)
#> [1] 0.5363001
```

## Authors

| Author                                                                          | Affiliation                    |
|:--------------------------------------------------------------------------------|:-------------------------------|
| [Jose Riofrio](https://scholar.google.com/citations?user=wpicZNsAAAAJ&hl=es)    | University of British Columbia |
| [Joanne C. White](https://scholar.google.ca/citations?user=bqjk4skAAAAJ&hl=en/) | Canadian Forest Service        |
| [Piotr Tompalski](https://scholar.google.ca/citations?user=RtYdz0cAAAAJ&hl=en/) | Canadian Forest Service        |
| [Nicholas Coops](https://scholar.google.ca/citations?user=XvUF8dUAAAAJ&hl=es/)  | University of British Columbia |


### References

Riofrío, J., White, J.C., Tompalski, P., Coops, N.C., Wulder, M.A.,
2022. Harmonizing multi-temporal airborne laser scanning point clouds to
derive periodic annual height increments in temperate mixedwood forests.
[Can. J. For. Res. 52,
1334–1352.](https://cdnsciencepub.com/doi/10.1139/cjfr-2022-0055)

Riofrío, J., White, J.C., Tompalski, P., Coops, N.C., Wulder, M.A.,
2023. Modelling height growth of temperate mixedwood forests using an
age-independent approach and multi-temporal airborne laser scanning
data. [For. Eco. Manag. 543](https://www.sciencedirect.com/science/article/pii/S0378112723003717).

### Funding 
Ongoing development of PRFgrowth was supported with funds from the Canadian Wood Fibre Centre (CWFC) of the Canadian Forest
Service. 
