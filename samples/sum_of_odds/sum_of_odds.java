// sum_of_odds.java - calculate sum of odd integers

public class sum_of_odds
{
  final static double __version__ = 1.1;
  final static String __date__ = "2021-01-13";

  final static int up_to = 170;

  public static boolean is_odd(int x)
  {
    int remainder;

    remainder = x % 2;
    if (remainder == 0) return false;
    else                return true;
  }

  public static void main(String[] args)
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

    if (sum == Math.pow(number_of_odds, 2))
    {
      if (number_of_odds == 0)
        ;
      else if (number_of_odds < 7)
        System.out.println(sum);
      else
        System.out.println("1 + 3 + 5 + ... + " + (last_odd - 1)
            + " + " + last_odd + " = " + sum);
    }
    else
      System.err.println("Unexpected error: " + sum);
  }
}
