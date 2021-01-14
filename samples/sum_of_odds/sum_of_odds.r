#!/usr/bin/env Rscript

# sum_of_odds.r - calculate sum of odd integers

version__ = 1.1
date__ = '2021-01-14'

up_to <- 170

is_odd <- function(x)
{
  remainder <- x %% 2
  if (remainder == 0) return(FALSE)
  else                return(TRUE)
}

sum <- 0
number_of_odds <- 0
last_odd <- 0

for (i in 0:up_to)
{
  if (is_odd(i))
  {
    sum <- sum + i
    number_of_odds <- number_of_odds + 1
    last_odd <- i
  }
}

if (sum == number_of_odds ^ 2)
{
  if (number_of_odds == 0) { ; }
  else if (number_of_odds < 7) print(sum)
  else cat('1 + 3 + 5 + ... +', last_odd - 1,
           '+', last_odd, '=', sum, "\n")
} else warning('Unexpected error: ', sum)
