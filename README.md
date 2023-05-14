
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

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mTools)
iris_head  <- head(iris)
data_table(iris_head)
```

<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-e35a3b9544566b19ac18" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-e35a3b9544566b19ac18">{"x":{"style":"bootstrap4","filter":"none","vertical":false,"data":[[5.1,4.9,4.7,4.6,5,5.4],[3.5,3,3.2,3.1,3.6,3.9],[1.4,1.4,1.3,1.5,1.4,1.7],[0.2,0.2,0.2,0.2,0.2,0.4],["setosa","setosa","setosa","setosa","setosa","setosa"]],"container":"<table class=\"table table-bordered table-striped\">\n  <thead>\n    <tr>\n      <th>Sepal.Length<\/th>\n      <th>Sepal.Width<\/th>\n      <th>Petal.Length<\/th>\n      <th>Petal.Width<\/th>\n      <th>Species<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"scrollX":true,"columnDefs":[{"className":"dt-center","targets":[0,1,2,3,4]}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
