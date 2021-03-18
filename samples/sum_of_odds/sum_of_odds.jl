#!/usr/bin/env julia

#=
sum_of_odds.jl - calculate sum of odd integers
=#

__version__ = 1.1
__date__ = "2021-03-07"

up_to = 170

function is_odd(x::Int64)
  remainder = x % 2
  if remainder == 0
    return false
  else
    return true
  end
end

sum = number_of_odds = last_odd = 0

for i = 1:up_to
  if is_odd(i)
    global sum += i
    global number_of_odds += 1
    global last_odd = i
  end
end

if sum == number_of_odds ^ 2
  if number_of_odds == 0
    ;
  elseif number_of_odds &lt; 7
    println(sum)
  else
    println("1 + 3 + 5 + ... + ", last_odd - 1,
            " + ", last_odd , " = ", sum)
  end
else
  println(stderr, "Unexpected error: ", sum)
end
