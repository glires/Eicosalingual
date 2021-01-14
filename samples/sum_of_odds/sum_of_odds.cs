// sum_of_odds.cs - calculate sum of odd integers

using System;

class sum_of_odds
{
  public static readonly double version = 1.1;
  public static readonly string date = "2021-01-14";

  public static readonly int up_to = 170;

  public static bool is_odd(int x)
  {
    int remainder;

    remainder = x % 2;
    if (remainder == 0) return false;
    else                return true;
  }

  static void Main(string[] args)
  {
    int sum = 0;
    int number_of_odds = 0;
    int last_odd = 0;

    for (int i = 0; i <= up_to; i++)
    {
      if (is_odd(i))
      {
        sum += i;
        number_of_odds += 1;
        last_odd = i;
      }
    }

   if (sum == Math.Pow(number_of_odds, 2))
   {
     if (number_of_odds == 0)
       sum = 0;
     else if (number_of_odds < 7)
       Console.WriteLine(sum);
     else
       Console.WriteLine(
           "1 + 3 + 5 + ... + {0} + {1} = {2}",
           last_odd - 1, last_odd, sum);
   }
   else
     Console.Error.WriteLine("Unexpected error: {0}", sum);
  }
}
