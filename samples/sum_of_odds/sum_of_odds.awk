#!/usr/bin/awk -f

# sum_of_odds.awk - calculate sum of odd integers

__version__ = 1.1
__date__ = "2021-01-16"

function is_odd(x)
{
  remainder = x % 2
  if (remainder == 0) return "false"
  else                return "true"
}

BEGIN {
  up_to = 170

  sum = number_of_odds = last_odd = 0

  for (i = 0; i <= up_to ; i++)
    if (is_odd(i) == "true")
    {
      sum += i
      number_of_odds += 1
      last_odd = i
    }

  if (sum == number_of_odds ** 2)
  {
    if (number_of_odds == 0) ;
    else if (number_of_odds < 7) print sum
    else
      print "1 + 3 + 5 + ... +", last_odd - 1,
            "+", last_odd, "=", sum
  }
  else
    print "Unexpected error: ", sum > "/dev/stderr"

  exit
}
