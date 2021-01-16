/* sum_of_odds.c - calculate sum of odd integers */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

const float __version__ = 1.1;
const char *__date__ = "2021-01-16";

const int up_to = 170;

_Bool is_odd(int x)
{
  int remainder;

  remainder = x % 2;
  if (remainder == 0) return false;
  else                return true;
}

int main(int argc, char *argv[])
{
  int sum = 0;
  int number_of_odds = 0;
  int last_odd = 0;

  for (int i = 0; i <= up_to; i++)
  {
    if (is_odd(i))
    {
      sum += i;
      number_of_odds++;
      last_odd = i;
    }
  }

  if (sum == pow(number_of_odds, 2))
  {
    if (number_of_odds == 0)
      ;
    else if (number_of_odds < 7)
      printf("%d\n", sum);
    else
      printf("1 + 3 + 5 + ... + %d + %d = %d\n",
             last_odd - 1, last_odd, sum);
  }
  else
    fprintf(stderr, "Unexpected error: %d\n", sum);

  return EXIT_SUCCESS;
}
