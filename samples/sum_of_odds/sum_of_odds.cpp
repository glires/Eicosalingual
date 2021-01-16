// sum_of_odds.cpp - calculate sum of odd integers

#include <iostream>
#include <cstdlib>
#include <cmath>
using namespace std;

static const float __version__ = 1.1;
static const string __date__ = "2021-01-16";

static const int up_to = 170;

bool is_odd(int x)
{
  int remainder;

  remainder = x % 2;
  if (remainder == 0) return false;
  else                return true;
}

int main(int argc, char *argv[])
{
  int sum, number_of_odds, last_odd;

  sum = number_of_odds = last_odd = 0;

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
      cout << sum;
    else
      cout << "1 + 3 + 5 + ... + " << last_odd - 1
           << " + " << last_odd << " = " << sum << endl;
  }
  else
    cerr << "Unexpected error: " << sum << endl;

  return EXIT_SUCCESS;
}
