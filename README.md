
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mTools

<!-- badges: start -->

[![R-CMD-check](https://github.com/m-mburu/mTools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/m-mburu/mTools/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

mTools a collection of function I regularly use.

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

### Tidy summary results

``` r
data("diabetes")
library(MASS)
library(knitr)
library(broom)
model <- glm(Outcome ~ .,
             family = binomial(),
             data = diabetes)


DT_tidy_model(model, round_digts = 2,
              tidy_function = "tidy", 
              output_function = "kable", 
              coefficient_name = "estimate",
              coefficient_name_new = "ODDS Ratio 95% CI",
              exp_estimate = TRUE, 
              coefficient_ci= TRUE,
              confint_level = .95)
#> Waiting for profiling to be done...
```

| term                     | ODDS Ratio 95% CI | std.error | statistic | p.value |
|:-------------------------|:------------------|----------:|----------:|--------:|
| (Intercept)              | 0\[0 0\]          |      0.72 |    -11.73 |    0.00 |
| Pregnancies              | 1.13\[1.06 1.21\] |      0.03 |      3.84 |    0.00 |
| Glucose                  | 1.04\[1.03 1.04\] |      0.00 |      9.48 |    0.00 |
| BloodPressure            | 0.99\[0.98 1\]    |      0.01 |     -2.54 |    0.01 |
| SkinThickness            | 1\[0.99 1.01\]    |      0.01 |      0.09 |    0.93 |
| Insulin                  | 1\[1 1\]          |      0.00 |     -1.32 |    0.19 |
| BMI                      | 1.09\[1.06 1.13\] |      0.02 |      5.95 |    0.00 |
| DiabetesPedigreeFunction | 2.57\[1.44 4.66\] |      0.30 |      3.16 |    0.00 |
| Age                      | 1.01\[1 1.03\]    |      0.01 |      1.59 |    0.11 |

### Tidy glance results

``` r
DT_tidy_model(model,
              tidy_function ="glance" ,
              output_function = "kable")
```

| null.deviance | df.null |    logLik |      AIC |      BIC | deviance | df.residual | nobs |
|--------------:|--------:|----------:|---------:|---------:|---------:|------------:|-----:|
|      993.4839 |     767 | -361.7227 | 741.4454 | 783.2395 | 723.4454 |         759 |  768 |
