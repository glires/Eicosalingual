#!/usr/bin/env ruby

# sum_of_odds.py - calculate sum of odd integers

__version__ = 1.1
__date__ = '2021-01-18'

up_to = 170

def is_odd(x)
  remainder = x % 2
  if remainder == 0 then return 0
  else                   return 1
  end
end

sum = 0
number_of_odds = 0
last_odd = 0

for i in 0..up_to do
  if is_odd(i) == 1 then
    sum += i
    number_of_odds += 1
    last_odd = i
  end
end

if sum == number_of_odds ** 2 then
  if number_of_odds == 0 then
    nil
  elsif number_of_odds < 7 then
    puts sum
  else
    print '1 + 3 + 5 + ... + ', last_odd - 1,
          ' + ', last_odd, ' = ', sum, "\n"
  end
else
  STDERR.print 'Unexpected error: ', sum, "\n"
end
