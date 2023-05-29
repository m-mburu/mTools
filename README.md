
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mTools

<!-- badges: start -->
<!-- badges: end -->

The goal of mTools is to make my work easier

## Installation

You can install the development version of mTools from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("m-mburu/mTools")
```

## load package

``` r
library(mTools)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r

iris_head  <- head(iris)
data_table(iris_head)
```

## Produce nice Rmarkdowns tables from model objects

``` r
library(MASS)
data(anorexia)

anorex.1 <- glm(Postwt ~ Prewt + Treat + offset(Prewt),
                family = gaussian, data = anorexia)

library(knitr)
library(broom)
DT_tidy_model(anorex.1, output_function = "kable")
```

| term        | estimate | std.error | statistic | p.value |
|:------------|---------:|----------:|----------:|--------:|
| (Intercept) |  49.7711 |   13.3910 |    3.7168 |  0.0004 |
| Prewt       |  -0.5655 |    0.1612 |   -3.5087 |  0.0008 |
| TreatCont   |  -4.0971 |    1.8935 |   -2.1638 |  0.0340 |
| TreatFT     |   4.5631 |    2.1333 |    2.1389 |  0.0360 |
