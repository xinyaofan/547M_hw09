<!-- README.md is generated from README.Rmd. Please edit that file -->
**NOTE: This is a toy package created for expository purposes. It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://cran.r-project.org/package=forcats).**

### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation

``` r
devtools::install_github("xinyaofan/foofactors")
```

### Quick demo

#### Binding two factors via `fbind()`:

``` r
library(foofactors)
library(forcats)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

#### freq\_out() function

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work. Processing with `as.data.frame()` can be helpful but it's a bit clunky.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
as.data.frame(table(x))
#>   x Freq
#> 1 a   25
#> 2 b   26
#> 3 c   17
#> 4 d   17
#> 5 e   15
```

The `freq_out()` function returns a frequency table as a well-named `tbl_df`:

``` r
freq_out(x)
#> # A tibble: 5 x 2
#>        x     n
#>   <fctr> <int>
#> 1      a    25
#> 2      b    26
#> 3      c    17
#> 4      d    17
#> 5      e    15
```

#### detect factors that should be character

We regard a factor is a true factor if \# unique values != length, otherwise it is a chracter. If we want to judge a factor is a true factor or a character,use our dec\_fac() function to achieve this goal!

``` r
factor1<-factor(c("small","medium","big"))
factor2<- factor(c("1","2","2"))
```

We know factor1 is a character while factor2 is a really factor.

``` r
dect_fac(factor1)
#> [1] "It is a character not factor"
dect_fac(factor2)
#> [1] "It is a factor"
```

See, use our function can get the same result!

#### reorder a factor in a descending order

In R, we have a function fct\_rev() to reorder a factor. This can help us reorder a factor in a descending order. This is sometimes useful when plotting a factor

``` r
x<-factor(c("1", "2", "3", "4"))
y<-factor(c("a","b","c","d"))
levels(fct_rev(x))
#> [1] "4" "3" "2" "1"
levels(fct_rev(y))
#> [1] "d" "c" "b" "a"
```

Use our reorder\_des() function, you can get the same result!

``` r
levels(reorder_desc(x))
#> [1] "4" "3" "2" "1"
levels(reorder_desc(y))
#> [1] "d" "c" "b" "a"
```

#### sets levels to the order in which they appear in the data.

Sometimes, we want to get the levels of a factor and also keep their previous order in the factor.

``` r
a<-factor(c("b","b","c","a"))
b<-factor(c("2","2","1","4"))
```

And we know the results should be "b","c","a" and "2","1","4". Now we can use our function to check the answers.

``` r
levels(set_level(a))
#> [1] "b" "c" "a"
levels(set_level(b))
#> [1] "2" "1" "4"
```

See, the same answer as what we expect it to be.
