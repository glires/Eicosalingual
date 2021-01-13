#!/usr/bin/env python

'''
sum_of_odds.py - calculate sum of odd integers
'''

import sys

__version__ = 1.1
__date__ = '2021-01-13'

up_to = 170

def is_odd(x: int) -> bool:
  remainder = x % 2
  if remainder == 0:
    return False
  else:
    return True

def main():
  sum = number_of_odds = last_odd = 0

  for i in range(up_to + 1):
    if is_odd(i):
      sum += i
      number_of_odds += 1
      last_odd = i

  if sum == number_of_odds ** 2:
    if number_of_odds == 0:
      pass
    elif number_of_odds < 7:
      print(sum)
    else:
      print('1 + 3 + 5 + ... +', last_odd - 1,
          '+', last_odd, '=', sum)
  else:
    sys.stderr.write('Unexpected error: ' +
        str(sum) + "\n")

if __name__ == '__main__':
  main()
